<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');

$routes ->group("usuario",function($routes){
    $routes->get("cadastro","UsuarioController::telaCadastro");
    $routes->get("login","UsuarioController::telaLogin");
    $routes->post("novo","UsuarioController::cadastrarUsuario");
    ///              "rota", "controller"
    /// se é tela e get se é ação é post
    $routes->post("logar","UsuarioController::logarUsuario");
    $routes->get("sair","UsuarioController::logoutUsuario");
});

$routes->group("carrinho", ['filter' => 'autenticacao'],function($routes){
    $routes->get("/","CarrinhoController::index");
});