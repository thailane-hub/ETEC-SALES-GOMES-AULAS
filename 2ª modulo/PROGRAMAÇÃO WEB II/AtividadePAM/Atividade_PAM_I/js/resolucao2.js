// Acho que é melhor completar o código abaixo:


const btnAdicionar = document.getElementById("btn-adicionar");
const duracaoTotal = document.getElementById("duracao-total");
const txtMusica = document.getElementById("txtmusica");
const list  = document.querySelector(".list");
const txtDuracao = document.getElementById("duracao");  
const MUSICAS = [];


function atualizarTotal(){
    let totalSeconds = 0;
    MUSICAS.forEach(musica => {
        totalSeconds += parseInt(musica.duracao);
    }); 


    
}


function removerMusica(posicao){
    MUSICAS.splice(posicao, 1);


    listarMusicas();
    atualizarTotal();
}

function listarMusicas(){
    list.innerHTML = "";
    MUSICAS.forEach(function(musica, posicao) {
        list.innerHTML += `<div class="item">
            <span class="name">${musica.musica}</span>
            <span class="duration">(${musica.duracao}s)</span>
            <a href="javascript:removerMusica(${posicao})">
                <img src="img/trash.svg" alt="remove music">
            </a>
        </div>`;
    });
}

btnAdicionar.addEventListener("click", ()=>{

    const musica = txtMusica.value.trim();
    const duracao = parseInt(txtDuracao.value);


    if (musica && duracao) {    
        const obj= { musica: musica, duracao: duracao };
        MUSICAS.push(obj);
    
        listarMusicas();
        atualizarTotal();
        txtMusica.value = "";
        txtDuracao.value = "";
    } else {
        alert("você n colocou nada ");
    }

});


listarMusicas();
atualizarTotal();

