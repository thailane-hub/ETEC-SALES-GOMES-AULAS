<?php
require_once 'conn.php';
extract($_POST);
$stmt = $conn->prepare("INSERT INTO curso VALUES(0,:nome)");
$stmt->bindValue(":nome",$nome);
$stmt->execute();

?>