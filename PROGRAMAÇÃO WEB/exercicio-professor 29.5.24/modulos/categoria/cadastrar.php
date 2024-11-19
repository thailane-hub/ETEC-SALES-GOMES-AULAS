<?php

    //Verificando se existem os valores enviados pelo formulário
    if(!isset($_POST["nome"], $_POST["descricao"])){
        header("Location: ../../categoria.php?erro=1");
        exit;
    }


    // include_once -> Se o arquivo não existir, o código seguirá normalmente WARNING
    // require_once -> Se o arquivo não existir, a execução é cancelada e é gerado FATAL ERROR
    //Pegando os valores enviados pelo formulário por POST
    //trim remove o espaço do começo e do final da string
    $nome = trim($_POST["nome"]);
    $descricao = trim($_POST["descricao"]);

    //strlen -> conta quantos caracteres tem a string
    if(strlen($nome) < 3 || strlen($descricao) < 3){
        header("Location: ../../categoria.php?erro=1");
        exit;
    }

    //Importando conexão
    require_once "./../../database/connection.php";
    $sql = "INSERT INTO categoria VALUES(0, :nome, :descricao)";

    $comando = $_CONEXAO->prepare($sql);
    $comando->bindParam(":nome", $nome);
    $comando->bindParam(":descricao", $descricao);
    $comando->execute();

    header("Location: ../../categoria.php?sucesso");



?>