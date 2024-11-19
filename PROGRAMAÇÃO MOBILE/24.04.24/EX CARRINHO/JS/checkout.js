const spanqtd = document.querySelector(".spanqtd");

const Lista = document.querySelector(".tabela-add");

const CARRINHO =localStorage.getItem("CARRINHO")? 
JSON.parse(localStorage.getItem("CARRINHO")): [];

const subtotal = document.getElementById("soma-subtotal");
const total = document.getElementById("soma-total");


spanqtd.innerHTML = CARRINHO.length;


function listarprodutos(){
    Lista.innerHTML = `
    <tr>
        <th>Produto</th>
        <th>Preço</th>
        <th>Quantidade</th>
        <th>Sub-total</th>
    </tr>
    <div class="tabela-add1">
        
    </div>
    `;

    CARRINHO.forEach((obj,posicao) => {

        Lista.innerHTML += `
        <div class="item-add">
                            <tr>
                                <th><img src="${obj.imagem}" alt=""></th>
                                <th><span class="atual">R$ ${(obj.preco-(obj.preco*obj.desconto)).toFixed(2)}</span></th>
                                <th><span> 1 </span></th>
                                <th>R$ ${(obj.preco-(obj.preco*obj.desconto)).toFixed(2)}</th>
                                <th><a href="javascript:deletar(${posicao})">🗑 Deletar</a> </th>
                            </tr>
                        </div>
        `;
    })
};

listarprodutos();

function totalCompra(){

    subtotal.innerHTML = "R$ 0,00";
    total.innerHTML = "R$ 0,00";

    let soma =0;

    CARRINHO.forEach((obj)=>{

        soma = soma+(obj.preco-(obj.preco*obj.desconto));
        });
    
        subtotal.innerHTML =  "R$ " + soma.toFixed(2);
        total.innerHTML =  "R$ " + soma.toFixed(2);

}

totalCompra();


function deletar(posicao){

    CARRINHO.splice(posicao,1);
    spanqtd.innerHTML = CARRINHO.length;
    
    localStorage.setItem("CARRINHO", JSON.stringify(CARRINHO));

    listarprodutos();
    
    totalCompra();
    
    }
    
    
    // CARRINHO = CARRINHO.filter(function(a) {
    //      return !this[JSON.stringify(a)] && (this[JSON.stringify(a)]= true);
    // }, Object.create(null));

    // console.log(CARRINHO);