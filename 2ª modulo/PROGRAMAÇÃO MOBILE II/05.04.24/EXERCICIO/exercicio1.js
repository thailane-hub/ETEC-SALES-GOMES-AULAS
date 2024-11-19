const formulario = window.document.querySelector("form");
const num1 = window.document.getElementById("numero1");
const num2 = window.document.getElementById("numero2");
const pa = window.document.getElementById("r");

formulario.addEventListener("submit",function(event){
    event.preventDefault();
    let n1 = parseInt(num1.value);
    let n2 = parseInt(num2.value);
    let soma = n1  + n2;

    pa.textContent = soma;


});