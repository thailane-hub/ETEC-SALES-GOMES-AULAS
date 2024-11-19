/*

forEach(function(nomeObj, posicao){

}); 

Utilizado para percorrer um array. O 1º parâmetro é o nome do elemento que será atualizado a cada loop, o 2º parâmetro representa a posição desse elemento no array.

splice(posicao, qtd)

Utilizado para remover item do array. Se for passado (2, 5), 5 itens serão removidos a partir da posição 2. 

push

Utilizado para adicionar item no array.

criação de objeto em Javascript

const obj = {
    propriedade: valor
}

rastreio do evento submit
Quando desejamos rastrear a tentativa de envio de dados de um formulário.

formulario.reset()
Reseta as informações do formulário

evento.preventDefault();
Cancela o comportamento padrão do evento do elemento

*/


const tarefas = [];

const formulario = document.querySelector("form");
const campoTitulo = document.getElementById("titulo");
const campoData = document.getElementById("data");

const container = document.getElementById("container");

function listar() {
    container.innerHTML = "";
    tarefas.forEach(function(obj, posicao){
        container.innerHTML += `
        <li>
            <span>${obj.titulo} ( ${obj.data} )</span>
            <button onclick="excluir(${posicao})">Excluir</button>
        </li>
        `;
    })
} 

function excluir(posicao) {
    // Splice é utilizado para remover itens. 
    // posicao e quantos itens dessa posição deseja-se remover.
    tarefas.splice(posicao, 1);
    listar();
}

formulario.addEventListener("submit", function (evento) {

    //Cancelando submit do formulário
    evento.preventDefault();

    const        obj = {
        titulo: campoTitulo.value,
        data: campoData.value
    }

    tarefas.push(obj);

    formulario.reset();

    listar();

});
