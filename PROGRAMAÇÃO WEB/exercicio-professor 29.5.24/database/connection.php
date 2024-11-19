<?php

// Variáveis de configuração de conexão
$servidor = "localhost";
$usuario = "root";
$senha = "root";
$bd = "ecommerce";
$porta = 8889;

try {
    //Criando conexão com o banco de dados
    $_CONEXAO = new PDO("mysql:host=$servidor;port=$porta;dbname=$bd;charset=utf8", $usuario, $senha);
} catch (Exception $erro) {
    echo "<h1>Site indisponível</h1>";
    exit;
}
