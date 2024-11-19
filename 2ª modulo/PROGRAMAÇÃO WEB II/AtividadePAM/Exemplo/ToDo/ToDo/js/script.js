const formulario = document.querySelector("form");
const campoTitulo = document.getElementById("titulo");
const campoData = document.getElementById("data");
const container = document.getElementById("container");
const campoFiltro = document.getElementById("filtro");

const LISTA = [];

campoFiltro.addEventListener("keyup", function () {

    let filtragem = campoFiltro.value;

    container.innerHTML = '';

    let existe = false;
    LISTA.forEach(function (tarefa, posicao) {

        if (tarefa.titulo.toLowerCase().startsWith(filtragem.toLowerCase())) {
            container.innerHTML +=
                `
                <div class="item">
                    <span class="titulo">
                        ${tarefa.titulo} (${tarefa.data})
                    </span>
                    <a href="javascript:removerItem(${posicao})">🗑️</a>
                </div>
            `
            existe = true;
        }
    });

    if(!existe){
        container.innerHTML = "Nenhuma tarefa encontrada";
    }

});























function atualizarListagem() {
    container.innerHTML = '';
    if (LISTA.length == 0) {
        container.innerHTML = "Nenhuma tarefa cadastrada";
    }
    LISTA.forEach(function (tarefa, posicao) {
        container.innerHTML +=
            `
            <div class="item">
                <span class="titulo">
                    ${tarefa.titulo} (${tarefa.data})
                </span>
                <a href="javascript:removerItem(${posicao})">🗑️</a>
            </div>
        `
    });
}

function removerItem(posicao) {

    if (confirm("Deseja realmente excluir essa tarefa")) {
        LISTA.splice(posicao, 1);
        atualizarListagem();
    }


}



formulario.addEventListener("submit", function (event) {
    event.preventDefault();
    const objTarefa = {
        titulo: campoTitulo.value,
        data: campoData.value,
    }
    LISTA.push(objTarefa);
    formulario.reset();
    atualizarListagem();
});




atualizarListagem();
















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
    duracaoTotal.textContent = ${minutes}m${seconds}s;
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
        const musica = txtMusica.value.trim();
        const duracao = parseInt(txtDuracao.value);


        if (musica && duracao) {    
            const objeto = { musica: musica, duracao: duracao };
            MUSICAS.push(objeto);
        
            listarMusicas();
            atualizarTotal();
            txtMusica.value = "";
            txtDuracao.value = "";
        } else {
            alert("preencha  os campos, seu mocorongo.");
        }
    });

    listarMusicas();
atualizarTotal();
