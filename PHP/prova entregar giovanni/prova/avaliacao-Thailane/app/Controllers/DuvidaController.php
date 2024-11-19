<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\HTTP\ResponseInterface;
use App\Models\DuvidaModel;

class DuvidaController extends BaseController
{
    public function index()
    {
        return view('duvidas'); 
    }

    public function salvar(){
        $dados = $this->request->getPost();
        $duvidamodel = new DuvidaModel();
        $duvidamodel->insert($dados);
        
        return view('duvidas');
    }
}
