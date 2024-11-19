<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>toDo<?= $this->renderSection("titulo")?></title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
</head>
<body>

    <header>
        <nav class="navbar bg-dark" >
            <div class="container-fluid">
                <span class="navbar-brand h1 text-info">
                ToDo
                </span>
                <span class="navbar-brand h1 text-info">
                Thailane
                </span>

            </div>
        </nav>
    </header>
    <main class="container">
        <?= $this->renderSection("conteudo") ?>

    </main>
    
<script src="/js/bootstrap.min.js"></script>
</body>
<?= $this->renderSection("script")?>
</html>