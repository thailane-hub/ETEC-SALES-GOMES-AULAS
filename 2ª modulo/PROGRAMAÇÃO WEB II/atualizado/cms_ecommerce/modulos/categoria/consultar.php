<?php
// importa conexao com banco de dados 
    function consultarCategoria(){
        require_once "./database/connection.php";
        $sql = "SELECT * FROM categoria";
        $comando = $_CONEXAO->prepare($sql);
        $comando->execute();
        return $comando->fetchAll(PDO::FETCH_ASSOC );
        // array associativo
    }

    
?>
<!-- FETCH ele só traz só um registro, se quer usar um comando que pegue varios registro USE fetchall -->