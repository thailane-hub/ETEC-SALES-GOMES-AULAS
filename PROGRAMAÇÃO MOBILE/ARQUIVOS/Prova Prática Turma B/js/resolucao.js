// Acho que é melhor completar o código abaixo:


const btnAdicionar = document.getElementById("btn-adicionar");
const duracaoTotal = document.getElementById("duracao-total");
const txtMusica = document.getElementById("txtmusica");
const txtDuracao = document.getElementById("txtduracao");
const lista = document.querySelector(".list");


const storage = localStorage.getItem("lista");

const MUSICAS = storage ? JSON.parse(storage) : [];

function atualizarTotal(){

    let total = 0;
    MUSICAS.forEach(m => {
        total += m.duracao;
    });


    let minutos =  Math.floor(total / 60);
    let segundos = total % 60;

    duracaoTotal.innerHTML = `${minutos}m:${segundos}s`

}


function removerMusica(pos){

    MUSICAS.splice(pos, 1);
    listarMusicas();

}

function listarMusicas(){
    
    lista.innerHTML = "";

    MUSICAS.forEach( (m,pos) => {
        lista.innerHTML += `
        <div class="item">
            <span class="name">${m.nome}</span>
            <span class="duration">(${m.duracao}s)</span>
            <a href="javascript:removerMusica(${pos})">
                <img src="img/trash.svg" alt="remove music">
            </a>
        </div>    
        `
    });

    atualizarTotal();
    atualizarStorage();


}

function atualizarStorage(){
    localStorage.setItem("lista", JSON.stringify(MUSICAS));
}



btnAdicionar.addEventListener("click", ()=>{

    let obj = {
        nome: txtMusica.value, 
        duracao: parseInt(txtDuracao.value)
    }

    MUSICAS.push(obj);

    txtDuracao.value = "";
    txtMusica.value = "";

    listarMusicas();

});


listarMusicas();
atualizarTotal();
