// Acho que é melhor completar o código abaixo:


const btnAdicionar = document.getElementById("btn-adicionar");
const duracaoTotal = document.getElementById("duracao-total");
const txtMusica = document.getElementById("txtmusica");


const MUSICAS = [];


function atualizarTotal(){
    // substituir código abaixo
    duracaoTotal.innerHTML = "30m40s";
}


function removerMusica(id){
    // completar
    alert(id);
}

function listarMusicas(){
    //  completar
}

btnAdicionar.addEventListener("click", ()=>{

    // completar
    alert("ADICIONAR MÚSICA");

});


listarMusicas();
atualizarTotal();
