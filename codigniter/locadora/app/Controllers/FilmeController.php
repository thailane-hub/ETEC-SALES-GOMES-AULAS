<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\FilmeModel;

class FilmeController extends BaseController
{
    public function index()
    {
        return view("inicio");
    }

    public function salvar(){

        $dados = $this->request->getPost();
        $FilmeModel = new FilmeModel();
        $FilmeModel->insert($dados);
        echo"sucesso";

    }
}
