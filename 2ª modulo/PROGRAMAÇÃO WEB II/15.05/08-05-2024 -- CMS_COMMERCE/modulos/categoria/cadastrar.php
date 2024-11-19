<?php

    if(!isset($_POST["nome"], $_POST["descricao"])){
        header("Location: ../../categoria.php?erro=1");
    }

    // include_once -> Se o arquivo não existir, o código seguirá normalmente WARNING
    // require_once -> Se o arquivo não existir, a execução é cancelada e é gerado FATAL ERROR

    $nome = $_POST["nome"];
    $descricao = $_POST["descricao"];

    echo "oi";
    require_once "../../database/connection.php";

    $sql = "INSERT INTO categoria VALUES(0, :nome, :descricao)";



    echo $sql;
    $comando = $_CONEXAO->prepare($sql);
    $comando->bindParam(":nome", $nome);
    $comando->bindParam(":descricao", $descricao);
    $comando->execute();




?>