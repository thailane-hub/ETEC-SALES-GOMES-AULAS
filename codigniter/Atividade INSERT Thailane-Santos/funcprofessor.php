<?php
require_once 'conn.php';
extract($_POST);
$stmt = $conn->prepare("INSERT INTO professor VALUES(0,:nome,:email,:telefone,:endereco)");
$stmt->bindValue(":nome",$nome);
$stmt->bindValue(":email",$email);
$stmt->bindValue(":telefone",$telefone);
$stmt->bindValue(":endereco",$endereco);
$stmt->execute();

?>
