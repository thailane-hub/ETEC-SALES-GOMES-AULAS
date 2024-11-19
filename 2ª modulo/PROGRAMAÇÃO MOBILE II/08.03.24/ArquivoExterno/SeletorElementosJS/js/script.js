function apresentar(){
    titulo.innerHTML = "Seja bem vindo, Giovanni!";
    btnApresentacao.innerHTML = "Clicado";
}    

function despedida(){
    titulo.innerHTML = "Até mais, Giovanni!";
}

document.getElementsByTagName("button");

const btnApresentacao = document.getElementById("btn-apresentacao");
const btnDespedida = document.getElementsByClassName("btn-despedida")[0];
// const btnDespedida = document.querySelector(".btn-despedida");
// const btnDespedida = document.querySelectorAll(".btn-despedida")[0];
const titulo = document.getElementById("titulo");
// Alterando estilo via JS (não recomendado)
btnApresentacao.style.backgroundColor = "yellow";
btnApresentacao.style.color = "green";

btnApresentacao.addEventListener("click", apresentar);    

btnDespedida.addEventListener("click", despedida);
