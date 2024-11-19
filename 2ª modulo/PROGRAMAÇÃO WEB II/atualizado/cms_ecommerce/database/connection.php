<?php

    // ANOTAÇÕES

    //mysql_connect  esta obsoleto sem atualização de seguranças usa se o pdo ou mysqli(mais rapido que o pdo) atualmente

    //mysqli permite acessso,  conecta com bd mysql não com outro bd, ex: sqlserver

    //pdo  permite acesso, conecta com bd mysql e outros bd e parametros nomeados

////////////////////////////////////////////////////////


    // Variáveis de configuração de conexão

    $servidor = "localhost";
    $usuario = "root";
    $senha = "";
    $bd = "ecommerce";
    $porta = 3306;

    try {
        //Criando conexão com o banco de dados
        $_CONEXAO = new PDO("mysql:host=$servidor;port=$porta;dbname=$bd;charset=utf8", $usuario, $senha);
    } catch (Exception $erro) {
        echo "<h1>Site indisponível</h1>";
        exit;
    }

?>