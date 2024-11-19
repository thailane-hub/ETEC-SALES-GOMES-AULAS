const x1 = document.getElementById("campo1");
const x2 = document.getElementById("campo2");
const valor = document.getElementById("resultado");
const form = document.getElementById("formulario");
const areacor = document.querySelector("#resultado");

formulario.addEventListener("submit",(event)=> {
    event.preventDefault();

    let c1 = parseInt(x1.value);
    let c2 = parseInt(x2.value);
    let soma = c1 + c2;
    valor.textContent = soma;
    areacor.classList.add("estilo");
});
