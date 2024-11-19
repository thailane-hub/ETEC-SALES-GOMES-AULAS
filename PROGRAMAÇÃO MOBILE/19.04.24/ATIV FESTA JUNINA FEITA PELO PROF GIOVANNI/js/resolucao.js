// Acho que é melhor completar ou modificar o código abaixo:


const btnAdicionar = document.getElementById("btn-adicionar");
const ajudaTotal = document.getElementById("ajuda-total");
const ajudaMedia = document.getElementById("ajuda-media");
const txtPessoa = document.getElementById("txtpessoa");
const txtValor = document.getElementById("txtvalor");
const lista = document.querySelector(".list");


const AJUDAS = [
    {
        nome: "Giovanni",
        valor: 50
    },
    {
        nome: "Guilherme",
        valor: 20
    }
];

function encontrarMaiorDoador(){

    let maior = 0;
    let posicao = 0;
    AJUDAS.forEach((obj, i) => {
        if(obj.valor > maior){
            maior = obj.valor;
            posicao = i;
        }
    });

    document.querySelector(`.item:nth-of-type(${posicao+1})`).classList.add("destaque");


}

function atualizarTotal(){
    // substituir código abaixo
    ajudaTotal.innerHTML = "R$ 0.00";

    let total = 0;

    AJUDAS.forEach((obj) =>{
        total = total + obj.valor;
    });

    ajudaTotal.innerHTML = "R$ " + total.toFixed(2);

}

function atualizarMedia(){
    // substituir código abaixo
    ajudaMedia.innerHTML = "R$ 0.00";
    if(AJUDAS.length == 0) return

    let total = 0;

    AJUDAS.forEach((obj) =>{
        total = total + obj.valor;
    });

    let media = total / AJUDAS.length;

    ajudaMedia.innerHTML = "R$ " + media.toFixed(2);

}

function removerAjuda(pos){

    AJUDAS.splice(pos, 1);
    listarAjudas();

}

function listarAjudas(){

    lista.innerHTML = "";
    AJUDAS.forEach((obj,pos) => {
        
        lista.innerHTML += `
        <div class="item">
            <span class="name">${obj.nome}</span>
            <span class="value">(${obj.valor.toFixed(2)})</span>
            <a href="javascript:removerAjuda(${pos})">
                <img src="img/trash.svg">
            </a>
        </div>        
        `;

    });

    encontrarMaiorDoador()
    atualizarTotal()
    atualizarMedia()

}


btnAdicionar.addEventListener("click", ()=>{

    const obj = {
        nome: txtPessoa.value,
        valor: parseFloat(txtValor.value)
    }

    AJUDAS.push(obj);

    txtPessoa.value = "";
    txtValor.value = "";

    listarAjudas();


});


listarAjudas();