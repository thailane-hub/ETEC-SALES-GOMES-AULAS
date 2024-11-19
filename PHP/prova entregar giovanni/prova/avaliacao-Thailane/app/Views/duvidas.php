<?= $this->extend('templates/modelo')?>

<?= $this->Section('conteudo')?>

<form action="/salvar" method="post">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5">
                    Suas Dúvidas
                </h1>
            </div>

            <div class="modal-body">

                <div class="col-md-3">
                    <label for="id" class="form-label">
                        Código
                    </label>
                    <input type="text" class="form-control" id="idduvida" name="idduvida" readonly>
                </div>

                <div class="col-md-12">
                    <label for="email" class="form-label">
                        E-mail
                    </label>
                    <input type="text" class="form-control" id="email" name="email" maxlength="250">
                </div>

                <div class="col-md-12">
                    <label for="titulo" class="form-label">
                        Título
                    </label>
                    <input type="text" class="form-control" id="titulo" name="titulo" maxlength="50">
                </div>

                <label for="Descrição">Descrição</label>
                <textarea class="form-control" name="descricao" id="descricao" style="resize: none;"
                    rows="5" maxlength="200"></textarea>
            </div>
        </div>

        <div class=" mt-5 mb-5">
            <button type="submit" class="btn btn-primary">
                Salvar
            </button>
        </div>
</form>



<?= $this->endSection()?>
