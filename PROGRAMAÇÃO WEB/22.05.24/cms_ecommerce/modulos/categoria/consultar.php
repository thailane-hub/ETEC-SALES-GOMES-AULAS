<?phP

    function consultarCategoria(){
        require_once "./database/connection.php";
        $sql = "SELECT * FROM categoria";
        $comando = $_CONEXAO->prepare($sql);
        $comando->execute();
        return $comando->fetchAll(PDO::FETCH_ASSOC);
    }

    // var_dump(consultarCategoria());
?>