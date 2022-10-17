<?php

require_once "app/controller/controllerClient.php";
require_once "app/controller/controllerLogin.php";
require_once "app/controller/controllerSecurity.php";
require_once "app/controller/controllerCategory.php";
require_once "app/controller/controllerAdmin.php";

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

if (!empty($_GET['action'])) {
    $action = $_GET['action'];
} else {
    $action = 'home'; 
}

$params = explode('/', $action);

switch ($params[0]) {
    case 'home':
        $controller= new ControllerClient();
        $controller-> getAll(); 
        break;
    case 'category':
        $controller= new ControllerCategory();
        $controller-> getAll(); 
        break;
    case 'clientsByAccount':
        $id= $params[1];
        $controller= new ControllerCategory();
        $controller-> clientsByAccount($id); 
        break;
    case 'login':
        $controller= new ControllerLogin();
        $controller-> showLogin(); 
        break;
    case 'logout':
        $controller= new ControllerLogin();
        $controller-> logout(); 
        break;
    case 'verificarLogin':
        $controller= new ControllerLogin();
        $controller-> loginCheck(); 
        break;
    case 'delete':
        $id = $params[1];
        $controller= new ControllerAdmin();
        $controller-> delete($id); 
        break; 
    case 'deleteAccount':
        $id = $params[1];
        $controller= new ControllerAdmin();
        $controller-> deleteAccount($id); 
        break; 
    case 'add':
        $id = $params[1];
        $controller= new ControllerAdmin();
        $controller-> addAccount(); 
        break; 
    case 'added':
        $id = $params[1];
        $controller= new ControllerAdmin();
        $controller-> addClient(); 
        break;
    case 'editar':
        $id = $params[1];
        $controller= new ControllerAdmin();
        $controller-> editClient($id); 
        break;
    case 'editClient':
        $id = $params[1];
        $controller= new ControllerAdmin();
        $controller-> updateClient(); 
        break;  
    case 'editAccount':
        $id = $params[1];
        $controller= new ControllerAdmin();
        $controller-> editAccount($id); 
        break;
    case 'updatedAccount':
        $id = $params[1];   
        $controller= new ControllerAdmin();
        $controller-> updatedAccount(); 
        break;
    case 'detalle':
        $id= $params[1];
        $controller= new ControllerClient();
        $controller-> detail($id);
        break;    
    default: 
        echo('404 Page not found'); 
        break;
}