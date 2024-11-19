const lista = document.querySelector(".lista");

const selecoes = [
    { "nome": "Alemanha", "tecnico": "Joachim Low", "logo": "img/alemanha.png" },
    { "nome": "Espanha", "tecnico": "Luis Enrique", "logo": "img/espanha.png" },
    { "nome": "França", "tecnico": "Didier Deschamps", "logo": "img/franca.png" },
    { "nome": "Inglaterra", "tecnico": "Gareth Southgate", "logo": "img/inglaterra.png" },
    { "nome": "Itália", "tecnico": "Roberto Mancini", "logo": "img/italia.png" },
];

function listarSelecoes() {
    selecoes.forEach((obj, pos) => {
        lista.innerHTML += `

            <tr>
                <td><img src="${obj.logo}" alt="Brasil"></td>
                <td>${obj.nome}</td>
                <td>${obj.tecnico}</td>
            </tr>
    
    
    `
    });
}

listarSelecoes();