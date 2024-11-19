<?php

require_once"../../lib/conn.php";

extract($_POST);
$sqlCarro = "SELECT diaria from carros WHERE id_carro = :carro";
$selectCarro = $conn->prepare($sqlCarro);
$selectCarro->bindValue(':carro',$carro);
$selectCarro->execute();
$carroRegistro = $selectCarro->fetch(PDO::FETCH_OBJ);
$diaria = $carroRegistro->diaria;
$valorAluguel = $diaria * $dias;

date_default_timezone_set("America/Sao_Paulo");
$dataEntrega = date('Y-m-d',strtotime($data."+$dias days"));


$sqlAluguel = "INSERT INTO aluguel VALUES(0,:cliente,:carro,:data,:dataEntrega,:valorAluguel,0)";
$aluguel = $conn->prepare($sqlAluguel);
$aluguel->bindValue(":cliente",$cliente);
$aluguel->bindValue(":carro",$carro);
$aluguel->bindValue(":data",$data);
$aluguel->bindValue(":dataEntrega",$dataEntrega);
$aluguel->bindValue(":valorAluguel",$valorAluguel);
$aluguel->execute();


$sqlUpdate = "UPDATE carros SET disponibilidade = 0 WHERE id_carro = :carro";
$updateCarro = $conn->prepare($sqlUpdate);
$updateCarro->bindValue(":carro",$carro);
$updateCarro->execute();

?>