// ============================================
// CONFIGURAZIONE DOCUMENTI
// ============================================

const documents = {
    doc_prog: [
        { 
            name: "candidatura_temp.txt", 
            path: "documenti/documenti_di_progetto/candidatura_prova.txt", 
            date: "15/10/2025" 
        }
        
        
    ]/*,
    verbali: [
        { 
            
        }
        
    ],
    diari_di_bordo: [
        { 
            
        }
        
    ],
    altri_doc: [
        { 
            
        }
        
    ]*/
};

// ============================================
// FUNZIONI
// ============================================

//izializza la pagina
function init() {
    renderAllDocuments();
    updateAllCounts();
}

//renderizza tutti i documenti
function renderAllDocuments() {
    Object.keys(documents).forEach(category => {
        renderDocuments(category);
    });
}

//Rendrizza i documenti di una categoria
function renderDocuments(category) {
    const container = document.getElementById(`docs-${category}`);
    const docs = documents[category] || [];

    if (docs.length === 0) {
        container.innerHTML = '<div class="empty-state">Nessun documento disponibile</div>';
        return;
    }

    container.innerHTML = docs.map((doc, index) => `
        <div class="document" onclick="openDocument('${category}', ${index})">
            <div class="doc-icon">📄</div>
            <div class="doc-info">
                <div class="doc-name">${doc.name}</div>
                <div class="doc-date">${doc.date}</div>
            </div>
        </div>
    `).join('');
}

//Aggiorna il contatore di una categoria
function updateCount(category) {
    const count = documents[category] ? documents[category].length : 0;
    document.getElementById(`count-${category}`).textContent = count;
}

//Aggiorna tutti i contatori
function updateAllCounts() {
    Object.keys(documents).forEach(category => {
        updateCount(category);
    });
}

function openDocument(category, index) {
    const doc = documents[category][index];
    const frame = document.getElementById('docFrame');
    const downloadLink = document.getElementById('downloadLink');
    const modalBody = document.getElementById('modalBody');

    document.getElementById('modalTitle').textContent = doc.name;

    const ext = doc.name.split('.').pop().toLowerCase();

    if (ext === 'txt') {
        //Legge il contenuto del file di testo e lo mostra nel modal
        fetch(doc.path)
            .then(response => {
                if (!response.ok) throw new Error('Impossibile caricare il file');
                return response.text();
            })
            .then(text => {
                frame.style.display = "none"; //nasconde l’iframe
                const textContainer = document.createElement('pre');
                textContainer.style.background = "white";
                textContainer.style.color = "black";
                textContainer.style.padding = "1rem";
                textContainer.style.borderRadius = "8px";
                textContainer.style.overflowY = "auto";
                textContainer.style.maxHeight = "60vh";
                textContainer.textContent = text;
                
                //Rimuove eventuale contenuto precedente e aggiunge quello nuovo
                const oldPre = modalBody.querySelector('pre');
                if (oldPre) oldPre.remove();
                modalBody.insertBefore(textContainer, downloadLink.parentElement);
            })
            .catch(err => {
                console.error(err);
                alert('Errore nel caricamento del documento di testo.');
            });
    } else {
        //per PDF, DOCX, ecc. usa ancora l’iframe
        frame.style.display = "block";
        frame.src = doc.path;
    }

    //imposta il link di download
    downloadLink.href = doc.path;
    downloadLink.download = doc.name;

    //mostra il modal
    document.getElementById('docModal').classList.add('active');
}

//chiude il modal
function closeModal() {
    document.getElementById('docModal').classList.remove('active');
    document.getElementById('docFrame').src = '';
}

//Se clicchi fuori chiudo il modal
document.addEventListener('DOMContentLoaded', () => {
    document.getElementById('docModal').addEventListener('click', function(e) {
        if (e.target === this) {
            closeModal();
        }
    });
    
    //inizializza la pagina
    init();
});