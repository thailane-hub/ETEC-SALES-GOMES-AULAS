<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class UsuarioController extends BaseController
{
    // mostrar tela de cadastro
    public function telaCadastro()
    {
        return view("usuario/cadastro");
    }

    public function cadastrarUsuario(){
        $dados = $this->request->getPost();

        if($dados["senha"] != $dados["repetirsenha"]){
            session()->setFlashdata("aviso","senhas diferentes");
            return redirect()->to(base_url("/usuario/cadastro"));
        }

        $usuarioModel = new \App\Models\UsuarioModel();

        $qtdUsuario = $usuarioModel->where("email", $dados["email"])->countAllResults();

        if($qtdUsuario>0){
            session()->setFlashdata("aviso", "já existe im usuario com esse email" . $dados["email"]);
            return redirect()->to(base_url("/usuario/cadastro"));
        }

        $dados["senha"] = password_hash($dados["senha"],PASSWORD_DEFAULT);

        $usuarioModel->save($dados);

        session()->setFlashdata("sucesso", "Usuario cadastrado com sucesso");

        return redirect()->to(base_url("/usuario/login"));
    }

    // mostrar tela de login
    public function telaLogin(){
        return view("usuario/login");
    }

    // MOSTRAR USUARIO
    public function logarUsuario(){
        $email = $this->request->getPost("email");
        $senha = $this->request->getPost("senha");

        $usuarioModel = new \App\Models\UsuarioModel();
        $usuario = $usuarioModel->select("idusuario, nome, senha")->where("email", $email)->first();

        if(!$usuario){
            session()->setFlashdata("aviso", "Usuário não encontrado");
            return redirect()->to(base_url("/usuario/login"));
        }

        if(!password_verify($senha, $usuario["senha"])){
            session()->setFlashdata("aviso", "A senha digitada esta incorreta");
            return redirect()->to(base_url("/usuario/login"));
        }

        session()->set("idusuario", $usuario["idusuario"]);
        session()->set("nome", $usuario["nome"]);
        return redirect()->to("/");
        

        
    }
    public function logoutUsuario(){
        
    }
}
