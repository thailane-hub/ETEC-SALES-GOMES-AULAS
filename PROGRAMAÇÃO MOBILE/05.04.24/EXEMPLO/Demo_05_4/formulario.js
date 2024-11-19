const formulario = document.querySelector("form");
const campoValorA = document.getElementById("txtvalora");
const campoValorB = document.getElementById("txtvalorb");
const campoResultado = document.getElementById("txtresultado");

formulario.addEventListener("submit", function(event){
    //Cancela o submit do formulário
    event.preventDefault();

    let valora = parseInt(campoValorA.value);
    let valorb = parseInt(campoValorB.value);

    let soma = valora + valorb;

    campoResultado.value = soma;
});