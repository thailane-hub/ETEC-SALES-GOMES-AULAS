const c1 = document.getElementById("campo1");
const c2 = document.getElementById("campo2");

const campoSenha = document.querySelector("#senha");

const areaDica = document.querySelector("#dica");

c1.addEventListener("keyup", function(){
    c2.value = c1.value;
});

campoSenha.addEventListener("keyup", function(){

    let senha = campoSenha.value;

    if(senha.length < 6){
        areaDica.innerHTML = "Senha inválida - É necessário ter pelo menos 6 caracteres";
        areaDica.classList.remove("sucesso");
        areaDica.classList.add("erro");
        areaDica.classList.add("x");
        areaDica.classList.add("y");

    }else{
        areaDica.innerHTML = "Senha válida";
        areaDica.classList.remove("erro");
        areaDica.classList.add("sucesso");
    }

});
