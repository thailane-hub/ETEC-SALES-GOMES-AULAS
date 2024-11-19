<?php $this->extend("templates/modelo")?>

<?php $this->section("titulo")?>

Categorias

<?php $this->endSection() ?>

<?php $this->section("conteudo") ?>

<h1> Cadastrar Categorias</h1>

<hr>


<?php if (session()->has("sucesso")):  ?>
    <div class="position-fixed top-0 end-0">
        <div class="toast m-2" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="espaco">
                <div class="toast-header">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8nsCRcyuWpOBWXXyfVAqeM7EjRa2cRwbwZw&s" class="rounded me-2" alt="...">
                    <strong class="me-auto">Mensagem</strong>
                    <small>Teste horário</small>
                    <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                </div>
                <div class="toast-body">
                    <?= session("sucesso") ?>
                </div>
            </div>
        </div>
    </div>
<?php endif; ?>

<?php

$idcategoria = "";
$nome = "";
$descricao = "";

// checando se existe uma categoria selecionada para edicao
if(isset($categoria)){

    $idcategoria = $categoria ["idcategoria"];
    $nome = $categoria ["nome"];
    $descricao = $categoria ["descricao"];
}

?>


<form action="/categoria/salvar" method="post" class="form row p-2">
    <div class="col-md-2">
        <label for="idcategoria" class="form-label">código</label>
        <input type="text" class="form-control" id="idcategoria" name="idcategoria" value="<?= esc($idcategoria) ?>" readonly>
    </div>

    <div class="col-md-10">
        <label for="name" class="form-label">nome</label>
        <input type="text" class="form-control" id="nome" name="nome" value="<?= esc($nome) ?>" maxlength="50">
    </div>

    <div class="col-md-12 mt-2">
        <label for="descricao" class="form-label">Descrição</label>
        <textarea name="descricao" id="descricao" class="form-control" rows="4" ><?= esc($descricao) ?></textarea>
    </div>

    <div class="col-md-12 mt-4">
        <button type="submit" class="btn btn-success">Salvar</button>
        <button type="reset" class="btn btn-warning">Cancelar</button>
    </div>

    <h2 class="mt-5">
    Categoria
    </h2>

    <table class="table table-striped">
        <thead>
            <th>Código</th>
            <th>Nome</th>
            <th>Opções</th>
        </thead>
        <tbody>
        <?php foreach($lista as $item): ?>
            <tr>
                <td><?= $item ["idcategoria"] ?></td>
                <td><?= $item["nome"] ?></td>
                <td>
                    <a class="text-decoration-none" href="">📝</a>
                    <a class="text-decoration-none" href="/categoria/excluir/<?= $item["idcategoria"] ?>">❌</a>
                </td>
            </tr>
        </tbody>
        <?php endforeach; ?>
    </table>

</form>


<?php $this->endSection() ?>

<?php $this->section("script") ?>

<script>
    const toast = document.querySelector('.toast');
    if(toast){
        new bootstrap.Toast(toast).show();
    }
</script>

<?php $this->endSection() ?>