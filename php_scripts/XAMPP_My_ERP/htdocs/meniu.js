//<script> 
        // 1. COD NOU: Logica pentru plierea (collapse) primului nivel (Master Data, Documents, System)
        document.querySelectorAll('.menu-category').forEach(category => {
            category.addEventListener('click', function() {
                // Schimbăm starea clasei 'collapsed' la fiecare click
                this.classList.toggle('collapsed');
            });
        });

        // 2. CODUL TĂU: Schimba continutul panelului din dreapta
        document.querySelectorAll('.menu-link').forEach(link => { 
            link.addEventListener('click', function(e) { 
                e.preventDefault(); 
                
                const pagina = this.getAttribute('data-pagina'); 
                const container = document.getElementById('continut-dreapta'); 
                
                fetch(pagina) 
                    .then(response => { 
                        if (!response.ok) throw new Error('The page could not be loaded.'); 
                        return response.text(); 
                    }) 
                    .then(html => { 
                        container.innerHTML = html; 
                    }) 
                    .catch(error => { 
                        container.innerHTML = `<p style="color:red;">Loading error: ${error.message}</p>`; 
                    }); 
                
                // Schimbă clasa 'active' pentru designul meniului 
                document.querySelectorAll('.menu-link').forEach(l => l.classList.remove('active')); 
                this.classList.add('active'); 
            }); 
        }); 
//</script> 
