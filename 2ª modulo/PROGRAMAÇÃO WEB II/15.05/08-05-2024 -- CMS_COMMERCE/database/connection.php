<?php


// Variáveis de configuração de conexão

$servidor = "localhost";
$usuario = "root";
$senha = "";
$bd = "ecommerce";
$porta = 3306;

$_CONEXAO = new PDO ("mysql:host=$servidor;port=$porta;bdname=$bd;charset=utf8", $usuario,$senha);

// $_CONEXAO = new PDO("mysql:host=$servidor;port=$porta;dbname=$bd;charset=utf8", $usuario, $senha);


?>