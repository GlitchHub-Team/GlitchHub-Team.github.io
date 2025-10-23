package main

import (
	"bytes"
	"fmt"
	"os"
	"path/filepath"
	"strings"

	"golang.org/x/net/html"

	"github.com/pdfcpu/pdfcpu/pkg/api"
)

type PDFDocument struct {
	path  string
	title string
	id    string
}

const KEYWORDS_N = 1
const PATH_TO_DOCUMENTS = "../website/pdf/"
const PATH_TO_HTML = "../website/index.html"
const TEMPLATE = "<a href='%s'>%s</a>"

func loadPDFMetadata(pdf *PDFDocument) error {
	ctx, err := api.ReadContextFile(pdf.path)
	if err != nil {
		return fmt.Errorf("impossible to read the PDF file: %w", err)
	}

	pdf.title = ctx.Title
	keywordsList := strings.Split(ctx.Keywords, ",")
	if len(keywordsList) != KEYWORDS_N {
		return fmt.Errorf("there are not exactly %d keywords, check the typst file", KEYWORDS_N)
	}
	pdf.id = keywordsList[0]

	return nil
}

func loadPDFDocuments(path string) ([]PDFDocument, error) {
	var documents []PDFDocument

	err := filepath.Walk(path, func(p string, info os.FileInfo, err error) error {
		if err != nil {
			return err
		}

		if !info.IsDir() && filepath.Ext(info.Name()) == ".pdf" {
			doc := PDFDocument{
				path: p,
			}

			err := loadPDFMetadata(&doc)
			if err != nil {
				return err
			}

			documents = append(documents, doc)
		}
		return nil
	})

	if err != nil {
		return nil, err
	}

	return documents, nil
}

func getAttr(n *html.Node, key string) string {
	for _, a := range n.Attr {
		if a.Key == key {
			return a.Val
		}
	}
	return ""
}

func addChildToId(htmlStr string, id string, childHTML string) (string, error) {
	doc, err := html.Parse(strings.NewReader(htmlStr))
	if err != nil {
		return "", err
	}

	var addChild func(*html.Node)
	addChild = func(n *html.Node) {
		if n.Type == html.ElementNode && getAttr(n, "id") == id {
			childNode, err := html.ParseFragment(strings.NewReader(childHTML), n)
			if err == nil {
				for _, cn := range childNode {
					n.AppendChild(cn)
				}
			}
			return
		}
		for c := n.FirstChild; c != nil; c = c.NextSibling {
			addChild(c)
		}
	}

	addChild(doc)

	var buf bytes.Buffer
	html.Render(&buf, doc)
	return buf.String(), nil
}

func main() {
	docs, err := loadPDFDocuments(PATH_TO_DOCUMENTS)
	if err != nil {
		panic(err)
	}

	htmlBytes, err := os.ReadFile(PATH_TO_HTML)
	if err != nil {
		fmt.Println("Error while reading the HTML file:", err)
		return
	}

	htmlStr := string(htmlBytes)

	for _, d := range docs {
		d.path = strings.Replace(d.path, "./website", "", 1)
		renderedHTML := fmt.Sprintf(TEMPLATE, d.path, d.title)
		fmt.Println(d.id)
		updatedHTML, err := addChildToId(htmlStr, d.id, renderedHTML)
		if err != nil {
			fmt.Println("Error:", err)
			return
		}
		htmlStr = updatedHTML
	}
	os.WriteFile(PATH_TO_HTML, []byte(htmlStr), 0644)
}
