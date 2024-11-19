const listar = document.querySelector(".td-imagem");


// criando a constante
// get item pega o elemento
// ? é o if
// json converte uma string em estrutura de dados

const carrinho = localStorage.getItem("carrinho")?JSON.parse(localStorage.getItem("carrinho")): [];


function listarprodutos(){
    list.innerHTML = `
    
        <tr>
        <th>Produto</th>
        <th>Quantidade</th>
        <th>Preço</th>
        </tr>
        <tr>
    `


carrinho.forEach(objeto => {
    list.innerHTML += `

    <tr>                        
    <td ><img src="${objeto.imagem}"></td>
    <td></td>
    <td>${objeto.preco}</td>
    <td>🗑</td>
    </tr>

    `
})

};




listarprodutos();



// const (declarar variavel) CARRINHO =localStorage.getItem("CARRINHO"(puxando do carrinho que esta localstore)?
// JSON.parse(localStorage.getItem("CARRINHO")): [];
// operador ternario é o if e else em uma linha só: comparação? v: f