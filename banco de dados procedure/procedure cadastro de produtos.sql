-- procedure SQL
drop procedure if exists cad_produto;
delimiter $$
create procedure cad_produto
	(pidcat int, pidmarca int, pnome varchar(80),ppreco decimal(10,2), pqtd int)
begin
	insert into produto(idcategoria, idmarca, nome, preco, quantidade) 
		values(pidcat, pidmarca, pnome, ppreco, pqtd);
end$$
delimiter ;
call cad_produto(1,1, "Lápis", 2.90,30);