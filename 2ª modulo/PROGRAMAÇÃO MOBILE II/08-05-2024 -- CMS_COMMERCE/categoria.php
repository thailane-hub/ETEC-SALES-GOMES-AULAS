<?php
    include_once "./header.php";
?>

<main class="container mt-5">
    <h1>
        Categoria
    </h1>
    <form action="#" method="POST">
        <div class="mb-3">
            <label for="idcategoria" class="form-label">
                Código da Categoria
            </label>
            <input type="text" name="idcategoria" id="idcategoria" class="form-control">
        </div>
        <div class="mb-3">
            <label for="nome" class="form-label">
                Nome
            </label>
            <input type="text" name="nome" id="nome" class="form-control">
        </div>
        <div class="mb-3">
            <label for="descricao" class="form-label">
                Descrição
            </label>
            <textarea name="descricao" id="descricao" class="form-control">
            </textarea>
        </div>
        <div class="mb-3">
            <button class="btn btn-primary">Salvar</button>
            <button type="reset" class="btn btn-secondary">Limpar</button>
        </div>
    </form>

    <h1 class="mt-5">
        Categorias Cadastradas
    </h1>
    <table class="table">
    <thead>
        <tr>
        <th scope="col">ID</th>
        <th scope="col">Nome</th>
        <th scope="col">Opções</th>
        </tr>
    </thead>
    <tbody>
        <tr>
        <th scope="row">1</th>
        <td>Alfredo Jorge</td>
        <td>Del Edit</td>
        </tr>
        <tr>
        <th scope="row">2</th>
        <td>Coringa do Batma</td>
        <td>Del Edit</td>
        </tr>
        <tr>
        <th scope="row">3</th>
        <td>Jorgina Frederica</td>
        <td>Del Edit</td>
        </tr>
    </tbody>
    </table>

</main>

<?php
    include_once "./footer.php";
?>