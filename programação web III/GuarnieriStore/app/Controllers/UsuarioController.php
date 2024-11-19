<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\HTTP\ResponseInterface;
use Config\Session;

class UsuarioController extends BaseController
{
    //mostrar tela de cadastro
    public function telaCadastro()
    {
        return view("usuario/cadastro");
    }

    //CADASTRAR USUARIO
    public function cadastrarUsuario(){
        // variavel $dados recebe  os dados enviados pelo method post
        $dados=$this->request->getPost();
        
        if($dados["senha"] != $dados["repetirsenha"]){
            session()->setFlashdata("aviso","Senhas diferentes");
            return redirect()->to(base_url("/usuario/cadastro"));
        }
        
        $usuarioModel = new \App\Models\UsuarioModel();

        //verificando se o e-mail já existe
            $qtdUsuario = $usuarioModel->where("email",$dados["email"])->countAllResults();
    
        //função se já existe
        if($qtdUsuario>0){
            session()->setFlashdata("aviso","Já existe um usúario com o e-mail ".$dados['email']);
            return redirect()->to(base_url("/usuario/cadastro"));
        }
        
        //convertendo senha para hash 
        $dados["senha"] = password_hash($dados["senha"],PASSWORD_DEFAULT);
        
        $usuarioModel->save($dados);

        session()->setFlashdata("sucesso","Usuário cadastrado com sucesso");

        //flashdata exibe so uma vez

        return redirect()->to(base_url("/usuario/login"));
    
    
    
    }


    //Mostrar tela de login
    public function telaLogin(){
        return view("usuario/login");
    }


    //login de usuario
    public function logarUsuario(){

        $email = $this->request->getPost("email");
        $senha = $this->request->getPost("senha");
        
        $usuarioModel = new \App\Models\UsuarioModel();
        $usuario = $usuarioModel->select("idusuario, nome, senha")->where("email",$email)->first();

        if(!$usuario){
            Session()->setFlashdata("aviso","Usuário não encontrado");
            return redirect()->to(base_url("/usuario/login"));
        }


        if(!password_verify($senha, $usuario["senha"])){
            session()->setFlashdata("aviso", "A senha digitada está incorreta");
            return redirect()->to(base_url("/usuario/login"));
        }


        session()->set("idusuario", $usuario["idusuario"]);
        session()->set("nome", $usuario["nome"]);
        return redirect()->to("/");
    }


    //logout usuario
    public function logoutUsuario(){
        session()->destroy();
        return redirect()->to(base_url("/"));
    }


}
