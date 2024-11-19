<?php
include_once "./header.php";
?>

<main class="container mt-5">

    <?php if (isset($_GET["sucesso"])) { ?>
        <div class="alert alert-success" role="alert">
            Cadastro realizado com sucesso!
        </div>
    <?php } ?>

    <?php if (isset($_GET["erro"]) && $_GET["erro"] == 1) { ?>
        <div class="alert alert-warning" role="alert">
            É necessário preencher os campos para cadastrar!
        </div>
    <?php } ?>

    <h1>
        Categoria
    </h1>
    <form action="./modulos/categoria/cadastrar.php" method="POST">
        <div class="mb-3">
            <label for="idcategoria" class="form-label">
                Código da Categoria
            </label>
            <input type="text" name="idcategoria" id="idcategoria" class="form-control" placeholder="*NOVO*" readonly>
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

    <!-- Id / Nome / Opções (Visualizar / Excluir) -->

    <table class="table table-striped">
        <thead>
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Nome</th>
                <th scope="col">Opções</th>
            </tr>
        </thead>
        <tbody>
            <?php
                require_once "./modulos/categoria/consultar.php";
                $LISTA = consultarCategoria();
                foreach ($LISTA as $cat){ ?>
                <tr>
                    <th scope="row"><?= $cat["idcategoria"] ?></th>
                    <td><?= $cat["nome"] ?></td>
                    <td>
                        <a href="#">Visualizar</a>
                        <a href="javascript:confirmarExclusao(<?= $cat["idcategoria"] ?>)" class="text-danger">Excluir</a>
                    </td>
                </tr>
            <?php } ?>
        </tbody>
    </table>

</main>


<!-- Modal -->
<div class="modal fade" id="confirmacao" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5">Confirmação:</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Deseja realmente excluir essa categoria?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
        <a href="#" class="btn btn-danger" id="link-excluir">Excluir</a>
      </div>
    </div>
  </div>
</div>

<script src="./js/categoria.js" defer></script>

<?php
include_once "./footer.php";
?>