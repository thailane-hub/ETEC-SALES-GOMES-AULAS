<?php
require_once '../../lib/conn.php';

extract($_POST);

$sqlInsertCliente = "INSERT INTO clientes VALUES(0,:nome,:endereco,:email)";
$stmt = $conn->prepare($sqlInsertCliente);
$stmt->bindValue(':nome', $nome);
$stmt->bindValue(':endereco', $endereco);
$stmt->bindValue(':email', $email);
$stmt->execute();
?>
<script>alert('CLiente cadastrado com sucesso.')</script>
<meta http-equiv="refresh" content="0; url=../cadcliente.php">