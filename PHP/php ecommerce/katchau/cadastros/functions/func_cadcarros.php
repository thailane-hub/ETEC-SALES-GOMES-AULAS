<?php

require_once '../../lib/conn.php';

extract($_POST);

$sqlVericarPlaca = "SELECT * FROM carros WHERE placa = :placa";
$verificarPlaca = $conn->prepare($sqlVericarPlaca);
$verificarPlaca->bindValue(":placa",$placa);
$verificarPlaca->execute();

if($verificarPlaca->rowCount() === 0){
  $sqlInsertCarro = "INSERT INTO carros VALUES(0,:modelo,:marca,:placa,:valorDiaria,1)";
  $stmt = $conn->prepare($sqlInsertCarro);
  $stmt->bindValue(":modelo",$modelo);
  $stmt->bindValue(":marca",$marca);
  $stmt->bindValue(":placa",$placa);
  $stmt->bindValue(":valorDiaria",$valorDiaria);
  $stmt->execute();
?>
  <script>alert('Carro cadastrado com sucesso.')</script>
  <meta http-equiv="refresh" content="0; url=../cadcarros.php">

<?php
} else{ 
?>
  <script>alert('Carro com placa já cadastrado.')</script>
  <meta http-equiv="refresh" content="0; url=../cadcarros.php">
<?php
}
?>