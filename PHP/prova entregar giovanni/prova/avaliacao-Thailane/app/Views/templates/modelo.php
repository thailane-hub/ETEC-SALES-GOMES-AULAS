<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Etec</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
</head>
<body>
 <header>
     <nav class="navbar navbar-expand-lg navbar-light bg-danger">
     <img src="/assets/logobranco.png" alt="" style="width: 100px;">
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link" href="/">home</a>
      <a class="nav-item nav-link" href="/salvar">Dúvidas</a>
    </div>
  </div>
</nav>
 </header>
 <main class="container d-flex flex-wrap justify-content-center">
    <?= $this->renderSection('conteudo') ?>
    
   







 </main>

 <footer class="bg-dark fixed-bottom text-white text-center align-content-center">
    
    <span>Contato</span>
    <span>(15) 3251-6584</span>

 </footer>


    <script src="/js/bootstrap.min.js"></script>
</body>
</html>