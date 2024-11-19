const botao1 = document.getElementById("btn1");
const diogo = document.getElementsByClassName("professor")[0];
const ds1 = document.getElementsByClassName("disciplina")[3];
const ds = document.getElementsByClassName("disciplina")[4];
const felipe = document.getElementsByClassName("professor")[1];
const rogerio = document.getElementsByClassName("professor")[2];
const botao2 = document.getElementById("btn2");
const giovanni = document.getElementById("giovanni");
const giovanni1 = document.getElementsByClassName("disciplina")[0];
const giovanni2 = document.getElementsByClassName("disciplina")[1];
const giovanni3 = document.getElementsByClassName("disciplina")[2];
const botao6 = document.getElementById("btn6");
const aps = document.getElementById("aps");
const botao4 = document.getElementById("btn4");


botao1.addEventListener("click", ()=> {
    botao1.style.backgroundColor = "green";
    felipe.style.color = "green";
    ds.style.color = "green";
    ds1.style.color = "green";
    
});
botao2.addEventListener("click", ()=> {
    botao2.style.backgroundColor = "blue";
    giovanni.style.color = "blue";
    giovanni1.style.color = "blue";
    giovanni2.style.color = "blue";
    giovanni3.style.color = "blue";
    
});

botao6.addEventListener("click", ()=> {
    botao6.style.backgroundColor = "gray";
    rogerio.style.color = "gray";
    aps.style.color = "gray";

});

botao4.addEventListener("click", ()=> {
    botao4.style.backgroundColor = "purple";
    diogo.style.color = "purple";

});












// function apresentar(){
//     titulo.innerHTML = "Seja bem vindo, Giovanni!";
//     btnApresentacao.innerHTML = backgroundColor="Clicando";
//     btnApresentacao.style.backgroundColor = "green";
//     btnApresentacao.style.color = "yellow";
    
    
// }    

// function despedida(){
//     titulo.innerHTML = "Até mais, Giovanni!";
//     btnDespedida.style.backgroundColor = "purple";
//     btnDespedida.style.color = "white";
    
// }

// document.getElementsByTagName("button");

// const btnApresentacao = document.getElementById("btn-apresentacao");
// const btnDespedida = document.getElementsByClassName("btn-despedida")[0];
// // const btnDespedida = document.querySelector(".btn-despedida");
// // const btnDespedida = document.querySelectorAll(".btn-despedida")[0];
// const titulo = document.getElementById("titulo");
// // Alterando estilo via JS (não recomendado)
// btnApresentacao.style.backgroundColor = "yellow";
// btnApresentacao.style.color = "green";
// titulo.style.color = "magenta"

btnApresentacao.addEventListener("click", apresentar);    

btnDespedida.addEventListener("click", despedida);
