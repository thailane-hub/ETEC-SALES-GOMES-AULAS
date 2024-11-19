

<!DOCTYPE html>
<html lang="pt-br" data-theme="night">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Cadastro de Aluno</title>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
  <link href="https://cdn.jsdelivr.net/npm/daisyui@4.9.0/dist/full.min.css" rel="stylesheet" type="text/css" />
<script src="https://cdn.tailwindcss.com"></script>
</head>

<body>
  <div class="navbar bg-base-100">
    <div class="navbar-start">
      <div class="dropdown">
        <div tabindex="0" role="button" class="btn btn-ghost lg:hidden">
          <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h8m-8 6h16" />
          </svg>
        </div>
        <ul tabindex="0" class="menu menu-sm dropdown-content mt-3 z-[1] p-2 shadow bg-base-100 rounded-box w-52">
          <li><a href="cadaluno.php">Cadastrar Aluno</a></li>
          <li><a href="cadprofessor.php">Cadastrar Professor</a></li>
          <li><a href="cadcurso.php">Cadastrar Curso</a></li>
        </ul>
      </div>
      <a href="/Atividade Insert/" class="btn btn-ghost text-xl">Atividade Insert</a>
    </div>
    <div class="navbar-center hidden lg:flex">
      <ul class="menu menu-horizontal px-1">
        <li><a href="cadaluno.php">Cadastrar Aluno</a></li>
        <li><a href="cadprofessor.php">Cadastrar Professor</a></li>
        <li><a href="cadcurso.php">Cadastrar Curso</a></li>
      </ul>
    </div>
  </div>

  <div class="container mx-auto">
    <h1 class="text-primary mb-3">Cadastro de Aluno</h1>
    <form action="funcaluno.php" method='POST'>
      <div class="form-control w-full max-w-xs mb-3">
      <label class="input input-bordered flex items-center gap-2">
        Nome
        <input type="text" id="nome" name="nome" class="grow" />
      </label>
      </div>

      <div class="form-control w-full max-w-xs mb-3">
        <label class="input input-bordered flex items-center gap-2">
          Email
          <input type="email" id="email" name="email" class="grow" />
        </label>
      </div>

      <div class="form-control w-full max-w-xs mb-3">
      <label class="input input-bordered flex items-center gap-2">
        Telefone
        <input type="text" id="telefone" name="telefone" class="grow" />
      </label>
      </div>

      <div class="form-control w-full max-w-xs mb-3">
      <label class="input input-bordered flex items-center gap-2">
        Endereço
        <input type="text" id="endereco" name="endereco" class="grow" />
      </label>
      </div>

      <button type="submit" class="btn btn-outline btn-primary glass mr-2">
        Cadastrar
      </button>
      <button type="reset" class="btn btn-outline btn-secondary glass">
        Limpar
      </button>
    </form>
  </div>

  </div>
</body>

</html>