// Acho que é melhor completar ou modificar o código abaixo:

const btnAdicionar = document.getElementById("btn-adicionar");
const ajudaTotal = document.getElementById("ajuda-total");
const ajudaMedia = document.getElementById("ajuda-media");
const txtPessoa = document.getElementById("txtpessoa");
const txtvalor = document.getElementById("txtvalor");
const container = document.getElementById("container");
const valorMaior = document.getElementById("valor_maior"); 

const AJUDAS = [];
let valorTotal = 0;
// let pegarValor = 0;

function atualizarTotal() {

    ajudaTotal.innerHTML = valorTotal;

}

function atualizarMedia() {
    
    const media = valorTotal / AJUDAS.length;
    if (AJUDAS.length > 0) {
        ajudaMedia.textContent = media.toFixed(2);
    } else {
        ajudaMedia.textContent = 0;
    }
}

function encontrarValor() {
    let maior = 0;
    let nome = '';
    AJUDAS.forEach(function(encontrar) {
        if (encontrar.txtvalor > maior) {
            nome = encontrar.txtPessoa.value;
            maior = encontrar.txtvalor.value;
        }
    });
    valorMaior.innerHTML = `
        pessoa com maior contribuição: ${nome}   valor: R$  ${maior}
    `;
}

function removerAjuda(posicao) {
    if (posicao >= 0 && posicao < AJUDAS.length) {
        valorTotal -= AJUDAS[posicao].txtvalor; // Subtrai o valor excluído
        AJUDAS.splice(posicao, 1);
        listarAjudas();
        atualizarMedia();
        atualizarTotal();
        encontrarValor();
    }
}



function listarAjudas() {
    container.innerHTML = ""; 
    valorTotal = 0;
    // Pegarvalor = 0;
    AJUDAS.forEach(function (tarefa, posicao) {
        container.innerHTML +=
            `
            <div class="item">
                <span class="name">${tarefa.pessoas}</span>
                <span class="value">(R$ ${tarefa.valor})</span>
                <a href="javascript:removerAjuda(${posicao})">
                    <img src="img/trash.svg">
                </a>
            </div>
        `;
        valorTotal += tarefa.valor ;
        // maiorvalor = Math.max(txtvalor); tentativa que não deu certo
    });
}

btnAdicionar.addEventListener('click', (event) => {
    event.preventDefault();
    const objadicionar = {
        pessoas: txtPessoa.value,
        valor: parseFloat(txtvalor.value),
    };
    if (txtvalor.value <= 0 ) {
        erro();
        //metodo usando retur 
        return
    }
    else if (txtPessoa.value.length == 0 ) {
        erro();
        return
    }
    
    AJUDAS.push(objadicionar);
    txtPessoa.value = ''; // Limpa o campo de pessoa
    txtvalor.value = ''; // Limpa o campo de valor
    listarAjudas();
    atualizarTotal();
    atualizarMedia();
    encontrarValor();
    sucesso();


        // outro metodo usando if else;

    // if (txtvalor.value <= 0 ) {
    //     alert("Por favor, insira um valor válido.");

    // }
    // else if (txtPessoa.value.length == 0) {
    //     alert("Por favor, insira um valor válido.");
    // }
    // else{
    // AJUDAS.push(objadicionar);
    // txtPessoa.value = ''; // Limpa o campo de pessoa
    // txtvalor.value = ''; // Limpa o campo de valor
    // listarAjudas();
    // atualizarTotal();
    // atualizarMedia();
    // }

});

listarAjudas();
atualizarTotal();
atualizarMedia();




















