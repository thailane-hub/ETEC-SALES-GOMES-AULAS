<?php

if(!isset($_GET["id"]) ){
    header("Location: ./../../categoria.php?erro=2");
    exit;
}

if(!is_numeric($_GET["id"])){
    header("Location: ./../../categoria.php?erro=2");
    exit;
}

require_once("./../../database/connection.php");

$sql = "DELETE FROM categoria WHERE idcategoria = :id";

$comando = $_CONEXAO->prepare($sql);
$comando->bindParam(":id", $_GET["id"]);
$comando->execute();

header("Location: ./../../categoria.php?excluido");

?>