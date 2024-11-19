
const Verde = document.getElementById("btn1");

const lanternaVerde = document.getElementsByClassName("professor")[1];

Verde.addEventListener("click", () =>  {
    lanternaVerde.style.color = "green"
}
)


const azul = document.getElementById("btn2");

const aquaMan = document.getElementById("giovanni");

azul.addEventListener("click",() => {
    aquaMan.style.color = "blue"
});


const amarelo = document.getElementById("btn3");

const sinestro = document.querySelectorAll(".titulo")[1];

amarelo.addEventListener("click", () =>{
    sinestro.style.color = "yellow"
});


const roxo = document.getElementById("btn4");

const superChoque =document.getElementById("ds");

roxo.addEventListener("click", () =>{
    superChoque.style.color = "purple"
});


const laranja = document.getElementById("btn5");

const mestreDosMagos =document.querySelectorAll(".disciplina")[2];

laranja.addEventListener("click", () =>{
    mestreDosMagos.style.color = "orange"
});


// const cinza = document.getElementById("btn6");

// const flash = document.getElementById("aps");

// flash.addEventListener("click", () =>{
//     flash.style.color = "red"
// });

const cinza = document.getElementById("btn6");

const flash =document.getElementById("aps");

cinza.addEventListener("click", () =>{
    flash.style.color = "gray"
});