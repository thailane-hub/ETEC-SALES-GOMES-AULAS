<?php $this->Extend("templates/modelo") ?>

<?php $this->section("titulo") ?>

home

<?php $this->endSection() ?>


<?php $this->section("conteudo") ?>
<div class="d-flex gap-2 mt-5">
    <a href="/categoria" class="btn btn-info text-white">Categoria</a>
    <a class="btn btn-info text-white">Adicionar Tarefas</a>
    <a href=""></a>

</div>

<h1 class="mt-5 text-primary ">
    Tarefa
</h1>

<div class="row">

    <div class="col-md-4 mt-3">
        <div class="card p-3 bg-info text-white">

            <h3 class="card-header bg-info text-white"> Tarefas Exemplos</h3>
            <div class="card-body">
                
                            <p>
                                    Descrição Tarefas
                            </p>
                        
                            <div >
                                <a class="text-decoration-none" href="">🗑</a>
                                <a class="text-decoration-none" href="">✔</a>
                            </div>
                        
                        </div>

                        <div class="card-footer">
                            📅 17/06/1992
                        </div>
        </div>

            
    </div>

</div>
        

<?php $this->endSection() ?>