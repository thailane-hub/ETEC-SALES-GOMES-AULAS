// Acho que é melhor completar ou modificar o código abaixo:


const btnAdicionar = document.getElementById("btn-adicionar");
const ajudaTotal = document.getElementById("ajuda-total");
const ajudaMedia = document.getElementById("ajuda-media");
const txtPessoa = document.getElementById("txtpessoa");
const txtValor = document.getElementById("txtvalor");
const lista = document.querySelector(".list");

const AJUDAS = [];

ajudaTotal.innerHTML =
`
R$ 0.00
`

ajudaMedia.innerHTML =
`
R$ 0.00
`

function encontrar(){
    let maior =AJUDAS[i].txtvalor.value;
    
    for(let i= 1; i < AJUDAS.length.value; i++){
        var ajuda = AJUDAS[i];
        if ( ajuda > maior){
            maior = ajuda;;
        }
    }
    return maior;
}

function atualizarTotal(){
    let soma = 0;
    AJUDAS.forEach(function(ativ) {
        soma += ativ.txtvalor;
        ajudaTotal.innerHTML =
        `
        R$ ${soma.toFixed(2)}
        `
        
        
    })
    return soma;

}

function atualizarMedia(){
    let media = 0;
    const qtd = AJUDAS.length;
    const soma = atualizarTotal();
    AJUDAS.forEach(function() {
    const media = soma/qtd
        ajudaMedia.innerHTML =
        `
        R$ ${media.toFixed(2)}
        `
    })
    return media;
};

function removerAjuda(posicao){
    if (confirm("Deseja excluir essa ajuda")) {
        const valorRemovido = AJUDAS[posicao].txtvalor;
        AJUDAS.splice(posicao,1);
        
        const soma = atualizarTotal() - valorRemovido;
        ajudaTotal.innerHTML = 
        `
        R$ ${soma.toFixed(2)}
        `
        if (AJUDAS.length === 0) {
            ajudaTotal.innerHTML = "R$ 0.00";
            ajudaMedia.innerHTML = "R$ 0.00";
        } else {
            ajudaTotal.innerHTML = `R$ ${soma.toFixed(2)}`;
            atualizarMedia();
        }
        atualizarTotal();
        atualizarMedia();
        listarAjudas();
        
    }
}

function listarAjudas(){ 
        lista.innerHTML = '';
    AJUDAS.forEach(function (ativ, posicao) {
        lista.innerHTML +=
        `
            <div class="item">
            <span class="name">${ativ.txtpessoa}</span>
            <span class="value">${ativ.txtvalor}</span>
            <a href="javascript:removerAjuda(${posicao})">
                <img src="img/trash.svg">
            </a>
            </div>
            `
        }
    )

};

btnAdicionar.addEventListener("click", function(event){
    event.preventDefault(); 
    const doar ={
        txtpessoa: txtPessoa.value,
        txtvalor:  parseFloat(txtValor.value),
    };
    if(txtvalor.value.length == 0){
        alert("ERRO, INSIRA UM VALOR.");
        return
    }
    else if(txtpessoa.value == ''){
        alert("INFORME UM NOME");
    }
    else{
        AJUDAS.push(doar);
        listarAjudas();
        atualizarTotal();
        atualizarMedia();
    }

});

function destacarMaiorValor() {
    const maiorValor = encontrar();
    const itens = document.querySelectorAll('.item'); // Seleciona todos os elementos com a classe 'item'
    
    itens.forEach(item => {
        const valorItem = parseFloat(item.querySelector('.value').textContent); // Obtém o valor da ajuda deste item
        if (valorItem === maiorValor) { // Se o valor do item for igual ao maior valor encontrado
            item.style.backgroundColor = 'yellow'; // Aplica uma cor de fundo para destacá-lo (por exemplo, amarelo)
        } else {
            item.style.backgroundColor = 'transparent'; // Remove a cor de fundo dos outros itens
        }
    });
}


// btnAdicionar.reset();

