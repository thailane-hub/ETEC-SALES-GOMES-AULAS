const btn1 = document.getElementById("btn1");
const btn2 = document.getElementById("btn2");
const btn3 = document.getElementById("btn3");
const btn4 = document.getElementById("btn4");
const btn5 = document.getElementById("btn5");
const btn6 = document.getElementById("btn6");

const titulos = document.querySelectorAll(".titulo");

const professores = document.querySelectorAll(".professor");

const giovanni = document.getElementById("giovanni");

const ds = document.getElementById("ds");

const disciplinas = document.querySelectorAll(".disciplina");

const aps = document.getElementById("aps");

btn1.addEventListener("click", function(){
    professores[1].style.color = "green";
});

btn2.addEventListener("click", function(){
    giovanni.style.color = "blue";
});

btn3.addEventListener("click", function(){
    titulos[0].style.color = "yellow";
    titulos[1].style.color = "yellow";
});

btn4.addEventListener("click", function(){
    ds.style.color = "purple";
});

btn5.addEventListener("click", function(){
    disciplinas[2].style.color = "orange";
});

btn6.addEventListener("click", function(){
    aps.style.color = "gray";
});