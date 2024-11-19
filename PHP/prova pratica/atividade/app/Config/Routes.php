<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');
$routes->get('/salvar', 'DuvidaController::index');
$routes->post('/salvar', 'DuvidaController::salvar');
