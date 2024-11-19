const item = document.getElementByclass(".lista");
const adicionar = Document.querySelector("bnt_adicionar");

const carrinho = localStorage.getItem("carrinho")?JSON.parse(localStorage.getItem("carrinho")): [];


    // preco - (desconto*preco);
    
const PRODUTOS = [];
PRODUTOS.push(
    {
        idproduto: 1,
        nome: "Camiseta Básica",
        marca: "Nike",
        preco: 50,
        desconto: 0.1,
        imagem: "http://127.0.0.1:5501/img/roupas/casual/casual1.jpg"
    },
    {
        idproduto: 1,
        nome: "Camiseta Básica",
        marca: "Nike",
        preco: 50,
        desconto: 0.1,
        imagem: "http://127.0.0.1:5501/img/roupas/casual/casual%202.jpg"
    },
    {
        idproduto: 1,
        nome: "Camiseta Básica",
        marca: "Nike",
        preco: 50,
        desconto: 0.1,
        imagem: "http://127.0.0.1:5501/img/roupas/casual/casual3.jpg"
    },
    {
        idproduto: 1,
        nome: "Camiseta Básica",
        marca: "Nike",
        preco: 50,
        desconto: 0.1,
        imagem: "http://127.0.0.1:5501/img/roupas/casual/casual%205.jpg"
    },
    {
        idproduto: 1,
        nome: "Camiseta Básica",
        marca: "Nike",
        preco: 50,
        desconto: 0.1,
        imagem: "http://127.0.0.1:5501/img/roupas/casual/casual6.jpg"
    },
    {
        idproduto: 1,
        nome: "Camiseta Básica",
        marca: "Nike",
        preco: 50,
        desconto: 0.1,
        imagem: "http://127.0.0.1:5501/img/roupas/TF5701_HHW_24.jpg"
    },
    {
        idproduto: 1,
        nome: "Camiseta Básica",
        marca: "Nike",
        preco: 50,
        desconto: 0.1,
        imagem: "http://127.0.0.1:5501/img/roupas/casual/casual1.jpg"
    },
    {
        idproduto: 1,
        nome: "Camiseta Básica",
        marca: "Nike",
        preco: 50,
        desconto: 0.1,
        imagem: "http://127.0.0.1:5501/img/roupas/casual/casual1.jpg"
    },
    {
        idproduto: 1,
        nome: "Camiseta Básica",
        marca: "Nike",
        preco: 50,
        desconto: 0.1,
        imagem: "http://127.0.0.1:5501/img/roupas/casual/casual1.jpg"
    },
    {
        idproduto: 1,
        nome: "Camiseta Básica",
        marca: "Nike",
        preco: 50,
        desconto: 0.1,
        imagem: "http://127.0.0.1:5501/img/roupas/casual/casual1.jpg"
    }
);

    PRODUTOS.forEach( (produto)=> {
        item.innerHTML +=
        `
        <div class="item">
            <div class="descricao">
            <img src="${produto.imagem}" alt="">
            <span class="marca">${produto.marca}</span>
            <span class="nome">${produto.nome}</span>
            <div class="area-preco">
                <span class="preco-atual">${produto.preco}</span>
                <span class="preco-antigo">${produto.desconto}</span>
            </div>
            </div>

            <div class="opcoes">
                <div class="op-lateral">
                    <a href="#" class="btn">
                        <span><img src="./img/icons/favorito.png" alt=""></span>
                    </a>
                    <a href="#" class="btn">
                        <span><img src="./img/icons/seta-dupla.png" alt=""></span>
                    </a>
                    <a href="#" class="btn">
                        <span><img src="./img/icons/olho-aberto.png" alt=""></span>
                    </a>
                </div>
                <a href="javascript:adicionarProduto(${obj.idproduto})" class="btn-add">Adicionar</a>
            </div>
            </div>
        `
    });

function adicionarProduto(id){
    const produto = PRODUTOS.find((p) => p.idproduto == id);
    carrinho.push(produto);
    localStorage.setItem("carrinho", JSON.stringify(carrinho));
}