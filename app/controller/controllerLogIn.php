<?php

require_once "app/model/modelLogin.php";
require_once "app/view/viewLogin.php";

class ControllerLogin{

    private $modelLogin;
    private $viewLogin;

    function __construct(){
        $this->modelLogin = new ModelLogin();
        $this->viewLogin = new ViewLogin();
    }

    function showLogin(){
        $this->viewLogin->login();
    }

    function loginCheck(){
        $password= $_POST['password'];
        $user= $_POST['user'];

        $dbUser= $this->modelLogin->getUser($user);

        if(isset($dbUser)){
            if(password_verify($password,$dbUser['password'])){

                session_start();
                $_SESSION['user']= $user;
                $_SESSION['IS_LOGGED'] = true;

                header("Location: " . BASE_URL);
            }
            else{
                $this->viewLogin->login("Contraseña incorrecta");
            }
        }

        else{
            $this->viewLogin->login("No existe usuario");
        }
    }

    function logout(){
        session_start();
        session_destroy();
        header ("Location: " . BASE_URL . 'login');
    }
}