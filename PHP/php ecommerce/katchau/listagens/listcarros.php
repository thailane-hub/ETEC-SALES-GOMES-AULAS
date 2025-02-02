<?php

  require_once '../lib/conn.php';
  $sqlSelectCarros = "SELECT*FROM carros";
  // armazenou o  select em uma  variavel
  $stmt = $conn -> query($sqlSelectCarros);
  // chamou a varial com o query
  $carros = $stmt->fetchAll(PDO::FETCH_OBJ);
?>

<!DOCTYPE html>
<html>
<head>
  <title>Katchau 9&#9889;5</title>
  <link rel="shortcut icon" href="img/favicon.ico" />
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
  <script src="../assets/js/jquery.js" type="text/javascript"></script>
  <script src="../assets/js/bootstrap.js" type="text/javascript"></script>
</head>

<body>
  <nav class="navbar navbar-expand-lg navbar-dark" style="background: #FD2F4C">
    <a class="navbar-brand" href="#"><img src="../assets/img/relampago-marquinhos.png" width="50" alt="Relâmpago Marquinhos"></a>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a href="index.php" class="nav-item nav-link active" style="color: #faff00;font-size: 18px;font-weight: bold">Katchau 9 <i class="fas fa-bolt" style="color: #faff00"></i> 5<span class="sr-only">(current)</span></a>
        <a href="../cadastros/" class="nav-item nav-link">Cadastros</a>
        <a href="" class="nav-item nav-link">Listagem</a>
      </div>
    </div>
  </nav>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="jumbotron" style="color: #FD2F4C !important">
          <div class="d-flex justify-content-between">
            <h1>Listagem de carros</h1>
            <a href="./" class="text-danger" style="font-size: 32px"><i class="far fa-arrow-alt-circle-left"></i></a>
          </div>
          <table class="table table-striped table-dark">
            <thead>
              <tr>
                <td scope="col">#</td>
                <td scope="col">modelo</td>
                <td scope="col">marca</td>
                <td scope="col">placa</td>
                <td scope="col">diaria</td>
                <td scope="col">disponibilidade</td>
              </tr>
            </thead>
            <tbody>
              
            <!-- <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr> -->

              <?php
              foreach($carros as $carro) {
              ?>
              <tr>
                <td><?= $carro->id_carro;?></td>
                <td><?= $carro-> modelo;?></td>
                <td><?= $carro->marca;?></td>
                <td><?= $carro->placa;?></td>
                <td><?= number_format($carro->diaria,2,',','.');?></td>
                <td>

                <?php

                if( $carro->disponibilidade==1){
                ?>
                <button class="btn btn-outline-success" stile="width: 60px;font-size:20px">
                  <i class="far fa-thumbs-up"></i>

                </button>
                <?php
                } else{
                
                  ?>
                  
                  <button class="btn btn-outline-danger" stile="width: 60px;font-size:20px">
                  <i class="far fa-thumbs-down"></i>
                <?php
                }

                ?>


                </td>
              </tr>

              <?php
              }
            ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</body>

</html>