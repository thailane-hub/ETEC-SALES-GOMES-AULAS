const btnAdicionar = document.getElementById("btn-adicionar");
const duracaoTotal = document.getElementById("duracao-total");
const txtMusica = document.getElementById("musica");
const list = document.querySelector(".list");
const txtDuracao = document.getElementById("duracao");   

let MUSICAS = [];


function atualizarTotal() {
    let totalSeconds = 0;
    MUSICAS.forEach(musica => {
        totalSeconds += parseInt(musica.duracao);
    });

    const minutes = Math.floor(totalSeconds / 60);
    const seconds = totalSeconds % 60;
    duracaoTotal.textContent = `${minutes}m${seconds}s`;
}


function removerMusica(posicao) {
    MUSICAS.splice(posicao, 1);


    listarMusicas();
    atualizarTotal();
}   

function listarMusicas() {
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

btnAdicionar.addEventListener("click", () => {
    const msc = txtMusica.value.trim();
    const tempo = parseInt(txtDuracao.value);


    if (msc && tempo) {
        const obj = { musica: musica, duracao: duracao };
        MUSICAS.push(obj);
    
        listarMusicas();
        atualizarTotal();
        txtMusica.value = "";
        txtDuracao.value = "";
    } else {
        alert("os campos assima não foram completados");
    }
});

    listarMusicas();
atualizarTotal();

