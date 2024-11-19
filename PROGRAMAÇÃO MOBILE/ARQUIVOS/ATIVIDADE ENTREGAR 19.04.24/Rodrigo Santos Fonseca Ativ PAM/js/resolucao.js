// Acho que é melhor completar ou modificar o código abaixo:


const btnAdicionar = document.getElementById("btn-adicionar");
const ajudaTotal = document.getElementById("ajuda-total");
const ajudaMedia = document.getElementById("ajuda-media");
const txtPessoa = document.getElementById("txtpessoa");
const txtValor = document.getElementById("txtvalor");
const lista = document.querySelector(".list");
const maiorValor = document.getElementById("maior-valor");

const AJUDAS = [];

ajudaMedia.innerHTML = 'R$ 0.00'
ajudaTotal.innerHTML = 'R$ 0.00'

function encontrar(){
    let maior =0;
    let nome = '';
    AJUDAS.forEach(function(ativ){
        if(ativ.txtvalor > maior){
            nome = ativ.txtpessoa;
            maior = ativ.txtvalor;
        }
    });
    maiorValor.innerHTML =
    `
        Pessoa da maior contribuição:  ${nome} <br>
        Valor: R$ ${maior} 
    `;
}

function atualizarTotal(){
    let soma = 0;
    AJUDAS.forEach(function(ativ){
        soma += parseFloat(ativ.txtvalor);   
        ajudaTotal.innerHTML = 
        `
        R$ ${soma.toFixed(2)}
        `
    });

    return soma;
}

function atualizarMedia(){
    const tamanho = AJUDAS.length;
    const soma = atualizarTotal();
    const media = soma /tamanho
        ajudaMedia.innerHTML =
        `
        R$ ${media.toFixed(2)}
        `
    };

function removerAjuda(posicao){
    if(confirm("REALMENTE VAI APAGAR A AJUDA")){
        AJUDAS.splice(posicao, 1);
        atualizarTotal();
        atualizarMedia();
        listarAjudas();
        encontrar();
    }
    if(AJUDAS.length ===0){
        ajudaMedia.innerHTML = 
        `
        R$ 0.00
        `;
        
        ajudaTotal.innerHTML =
        `
        R$ 0.00
        `;

        maiorValor.innerHTML = ``
    }
}

function listarAjudas(){
    lista.innerHTML = '';
    AJUDAS.forEach(function(ativ,posicao){
    
    lista.innerHTML +=
    `
    <div class="item">
    <span class="name">${ativ.txtpessoa}</span>
    <span class="value">R$ ${ativ.txtvalor}</span>
    <a href="javascript:removerAjuda(${posicao})">
    <img src="img/trash.svg">
    </a>
    </div>
    `
});

}

btnAdicionar.addEventListener("click", (event)=>{
    event.preventDefault();

    if(txtvalor.value <= 0){
        alert("INFORME UM VALOR MAIOR QUE ZERO");
        return
    }

    const objAtiv ={
        txtpessoa:  txtPessoa.value,
        txtvalor: parseFloat(txtValor.value),
    }

    if(txtpessoa.value.length === 0){
        alert('INFORME O NOME')

    }else if(txtvalor.value.length === 0){
        alert('INFORME O VALOR')
    }
    else{

        AJUDAS.push(objAtiv);
        listarAjudas();
        atualizarTotal();
        atualizarMedia();
        encontrar();
    }

});
