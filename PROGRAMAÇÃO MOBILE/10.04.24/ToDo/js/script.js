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
