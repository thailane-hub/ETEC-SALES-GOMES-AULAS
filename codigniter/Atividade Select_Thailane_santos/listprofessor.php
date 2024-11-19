<?php
require_once 'conn.php';
$stmt = $conn->query("SELECT * FROM professor");
$professores = $stmt->fetchAll(PDO::FETCH_OBJ);


?>



<!DOCTYPE html>
<html lang="pt-br" data-theme="night">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Listagem Professores</title>
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
    <link href="https://cdn.jsdelivr.net/npm/daisyui@4.9.0/dist/full.min.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>
  </head>
  <body>
  <div class="navbar bg-base-100">
    <div class="navbar-start">
      <div class="dropdown">
        <div tabindex="0" role="button" class="btn btn-ghost lg:hidden">
          <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h8m-8 6h16" /></svg>
        </div>
        <ul tabindex="0" class="menu menu-sm dropdown-content mt-3 z-[1] p-2 shadow bg-base-100 rounded-box w-52">
          <li><a href="listaluno.php">Listar Aluno</a></li>
          <li><a href="listprofessor.php">Listar Professor</a></li>
          <li><a href="listcurso.php">Listar Curso</a></li>
        </ul>
      </div>
      <a href="/Atividade Select/" class="btn btn-ghost text-xl">Atividade Select</a>
    </div>
    <div class="navbar-center hidden lg:flex">
      <ul class="menu menu-horizontal px-1">
        <li><a href="listaluno.php">Listar Aluno</a></li>
        <li><a href="listprofessor.php">Listar Professor</a></li>
        <li><a href="listcurso.php">Listar Curso</a></li>
      </ul>
    </div>
  </div>

  <div class="container mx-auto">
    <h1 class="text-primary mb-3">Listagem de Professores</h1>
    <div class="overflow-x-auto">
      <table class="table">
        <!-- head -->
        <thead>
          <tr>
            <th>#</th>
            <th>Nome</th>
            <th>E-mail</th>
            <th>Telefone</th>
            <th>Endereço</th>
          </tr>
        </thead>
        <tbody>
          
          <!-- Modelo de linha para usar no foreach -->
          <?php foreach($professores as $professor) {
        ?>
        </tr>
            <td><?=$professor->idprofessor?></td>
            <td><?=$professor->nome?></td>
            <td><?=$professor->email?></td>
            <td><?=$professor->telefone?></td>
            <td><?=$professor->endereco?></td>
          </tr>
          
        <?php
        }
        ?>
      
          <!-- Fom Modelo -->

        </tbody>
      </table>
    </div>
  </div>
</body>

</html>