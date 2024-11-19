<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Etec Sales gomes</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">

</head>

<body>
    <header>
        <nav class="navbar bg-danger navbar-expand-lg" >
            <div class="container-fluid">
                <img style="width: 76px" src="/assets/img/logobranco.png" alt="">
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="menu-home" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Opções
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="/">Home</a></li>
                                <li><a class="dropdown-item" href="/salvar">Duvidas</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <main class="container mt-5 mb-5 d-flex  flex-wrap justify-content-center">

        <?php $this->renderSection('conteudo') ?>

    </main>

    <footer class=" bg-dark fixed-bottom bg-body-tertiary text-center text-lg-start ">
        <div class="text-start p-3  text-white">
            <span>Etec Sales Gomes . Tatuí Praça Adelaide B. Guedes nº 01,Centro</span>
        </div>
    </footer>


    <script src="/js/bootstrap.min.js"></script>
</body>

</html>