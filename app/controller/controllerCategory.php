<?php
require_once "app/view/viewClient.php";
require_once "app/model/modelAccount.php";
require_once "app/model/modelClient.php";


class ControllerCategory{

    private $view;
    private $modelAccount;
    private $modelClient;


    function __construct(){
        $this-> view = new ViewClient();
        $this-> modelAccount = new ModelAccount();
        $this-> modelClient = new ModelClient();
    }

    function getAll(){
        session_start();

        $accounts = $this->modelAccount->getAllAccount();

        $this->view->category($accounts);

    }

    function clientsByAccount($tipo_cuenta){

        $clients= $this->modelClient->clientsAccount($tipo_cuenta);
        $this->view->showByAccount($clients);
    }
}