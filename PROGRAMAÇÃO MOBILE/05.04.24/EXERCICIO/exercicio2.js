const formulario = window.document.querySelector("form");
const valor1 = document.getElementById("num1");
const valor2 = document.getElementById("num2");
const exibir = window.document.getElementById("r");

formulario.addEventListener("submit", function(click){

    click.preventDefault();

    let v1 = parseInt(valor1.value);
    let v2 = parseInt(valor2.value);
    let media = (v1+v2)/2;

    exibir.textContent = media;

    if(media>=7){
        exibir.classList.remove("reprovado");
        exibir.classList.add("aprovado");
    }
    else{
        exibir.classList.remove("aprovado");
        exibir.classList.add("reprovado");

    }

});
