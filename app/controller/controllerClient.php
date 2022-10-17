<?php
require_once "app/model/modelClient.php";
require_once "app/view/viewClient.php";
require_once "app/controller/controllerSecurity.php";

class ControllerClient{

    private $model;
    private $view;

    function __construct(){
        $this-> model = new ModelClient();
        $this-> view = new ViewClient();
    }

    function getAll(){
        session_start();

        $clients = $this->model->getAll();

        $this->view->home($clients);

    }

    function detail($id){
        session_start();

        $clients= $this->model->detailItem($id);
        $this->view->detail($id,$clients);
    }
}
?>