delimiter $$
create procedure cad_intes_pedido(pidped int, pidpro int, pqtd int)
begin
declare vsubtotal, vpreco decimal(10,2);
declare 
select preco into vpreco from produto where idproduto = pidpro;
set vsubtotal = vpreco * pqtd;
insert into itens_pedido(idpedido, idproduto, qtd, subtotal)
values (pidped, pidpro, pqtd, vsubtotal);
update produto set quantidade = quantidade - pqtd;
where idproduto = pidpro

