const Lista = document.querySelector(".lista");
const qtd = document.querySelector(".spanqtd");
const btn_add =document.querySelector(".btn-add")
const spanqtd = document.querySelector(".spanqtd")
const PRODUTOS = [];
const CARRINHO =localStorage.getItem("CARRINHO")?
    JSON.parse(localStorage.getItem("CARRINHO")): [];

spanqtd.innerHTML = CARRINHO.length;


PRODUTOS.push(
    {
        idproduto: 1,
        nome: "GTA V",
        marca: "Rockstar London",
        preco: 19.99,
        desconto: 0.1,
        imagem: "https://media-rockstargames-com.akamaized.net/rockstargames-newsite/img/global/games/fob/640/V.jpg"
    },
    {
        idproduto: 2,
        nome: "RED DEAD REDEMPTION 2",
        marca: "Rockstar New England",
        preco: 25.99,
        desconto: 0.19,
        imagem: "https://media-rockstargames-com.akamaized.net/rockstargames-newsite/img/global/games/fob/640/reddeadredemption2.jpg"
    },
    {
        idproduto: 3,
        nome: "BULLY",
        marca: "Rockstar North",
        preco: 12.59,
        desconto: 0.12,
        imagem: "https://media-rockstargames-com.akamaized.net/rockstargames-newsite/img/global/games/fob/640/bully.jpg"
    },
    {
        idproduto: 4,
        nome: "RED DEAD REDEMPTION 2",
        marca: "Rockstar San Diego",
        preco: 40.00,
        desconto: 0.20,
        imagem: "https://media-rockstargames-com.akamaized.net/rockstargames-newsite/img/global/games/fob/640/maxpayne3.jpg"
    },
    {
        idproduto: 5,
        nome: "MIDNIGTH CLUB LA",
        marca: "Rockstar Toronto",
        preco: 20.00,
        desconto: 0.15,
        imagem: "https://media-rockstargames-com.akamaized.net/rockstargames-newsite/img/global/games/fob/640/midnightclubLA.jpg"
    },
    {
        idproduto: 6,
        nome: "THE WARRIORS",
        marca: "Rockstar New York",
        preco: 9.99,
        desconto: 0.1,
        imagem: "https://media-rockstargames-com.akamaized.net/rockstargames-newsite/img/global/games/fob/640/thewarriors.jpg"
    },
    {
        idproduto: 7,
        nome: "GTA SAN ANDREAS",
        marca: "Rockstar San Francisco",
        preco: 15.99,
        desconto: 0.19,
        imagem: "https://media-rockstargames-com.akamaized.net/rockstargames-newsite/img/global/games/fob/640/sanandreas.jpg"
    },
    {
        idproduto: 8,
        nome: "MANHUNT 2",
        marca: "Rockstar India",
        preco: 32.79,
        desconto: 0.12,
        imagem: "https://media-rockstargames-com.akamaized.net/rockstargames-newsite/img/global/games/fob/640/manhunt2.jpg"
    },
    {
        idproduto: 9,
        nome: "GTA VICE CITY",
        marca: "Rockstar San Diego",
        preco: 27.99,
        desconto: 0.20,
        imagem: "https://media-rockstargames-com.akamaized.net/rockstargames-newsite/img/global/games/fob/640/vicecitystories.jpg"
    },
    {
        idproduto: 10,
        nome: "ONI",
        marca: "Rockstar Tokyo",
        preco: 19.95,
        desconto: 0.10,
        imagem: "https://media-rockstargames-com.akamaized.net/rockstargames-newsite/img/global/games/fob/640/oni.jpg"
    }
);

function listarprodutos(){
    Lista.innerHTML = "";

    PRODUTOS.forEach((obj) => {

        Lista.innerHTML += `
        <div class="item">
        <div class="descricao">
        <img src="${obj.imagem}" alt="">
        <span>${obj.nome}</span>
        <div class="preco">
        <span class="atual">R$${(obj.preco-(obj.preco*obj.desconto)).toFixed(2)}</span>
        <span class="antigo">R$ ${obj.preco}</span>
        </div>
        </div>
        
        <div class="opcoes">
        <div class="op-lateral">
        <a href="">
        <img src="IMG/ICON COMUNS/star.png" alt="">
        </a>
        <a href="">
        <img src="IMG/ICON COMUNS/share.png" alt="">
        </a>
        <a href="">
        <img src="IMG/ICON COMUNS/eye.png" alt="">
        </a>
        </div>  
        <a href="javascript:adicionarProduto(${obj.idproduto})" class="btn-add">Adicionar</a>
        </div>
        </div>
        `;
    })
};

listarprodutos();



function adicionarProduto(id){
    const produto = PRODUTOS.find((p)=> p.idproduto == id);
    CARRINHO.push(produto);
    spanqtd.innerHTML = CARRINHO.length;
    localStorage.setItem("CARRINHO", JSON.stringify(CARRINHO));
}

