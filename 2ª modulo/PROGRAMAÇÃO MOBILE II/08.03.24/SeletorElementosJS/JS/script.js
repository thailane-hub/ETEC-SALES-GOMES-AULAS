
function apresentar() {
    titulo.innerHTML = "Seja bem vindo, Rodrigo!";
    btnApresentacao.innerHTML = "Clicado";
    btnApresentacao.style.backgroundColor = "green"
    btnApresentacao.style.color = "yellow";
}

function despedida() {
    titulo.innerHTML = "Até mais, Rodrigo!";
    btnDespedida.style.color = "white";
    btnDespedida.style.backgroundColor = "purple";
}

document.getElementsByTagName("button");
const btnApresentacao = document.getElementById("btn-apresentacao");
const btnDespedida = document.getElementsByClassName("btn-despedida")[0];
// const btnDespedida = document.querySelector(".btn-despedida");
// const btnDespedida = document.querySelectorAll(".btn-despedida")[0];
const titulo = document.getElementById("titulo");
// Alterando estilo via JS (não recomendado)


btnApresentacao.addEventListener("click", apresentar);


btnDespedida.addEventListener("click", despedida);