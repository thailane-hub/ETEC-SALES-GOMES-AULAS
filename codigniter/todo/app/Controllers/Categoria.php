<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\CategoriaModel;

class Categoria extends BaseController
{
    public function index($id="")
    {
        $dados = array();

        $categoriaModel = new CategoriaModel();

        $dados["lista"] = $categoriaModel->select("idcategoria, nome")->findAll();

        if($id != "" && is_numeric($id)){
            $dados["categoria"] = $categoriaModel->find($id);
        }


        return view("categoria/inicio", $dados);
    }
    public function salvar()
    {
        // chama model categoria
        $dados = $this ->request -> getPost();
        $categoriaModel = New CategoriaModel();
        $categoriaModel -> insert($dados);

        // criando valor de sessão temporaria-somente pode ser acessado uma vez
        session()->setFlashdata("sucesso","Categoria salva com sucesso");
        

        // redirecionando de volta para controler categoria
        return redirect()->to(base_url("/categoria"));
    }
    public function excluir($id){
        $categoriaModel = new CategoriaModel();
        $categoriaModel->delete($id);
        session()->setFlashdata("sucesso","Categoria excluida com sucesso");
           // redirecionando 
        return redirect()->to(base_url("/categoria"));

    }
}
