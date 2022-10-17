<?php
require_once "app/model/modelClient.php";
require_once "app/view/viewClient.php";
require_once "app/model/modelAccount.php";

class ControllerAdmin extends ControllerSecurity{

    private $model;
    private $view;
    private $modelAccount;

    function __construct(){
        parent::__construct();

        $this-> model = new ModelClient();
        $this-> view = new ViewClient();
        $this-> modelAccount = new ModelAccount();
    }

    function delete($id){     
        $clients= $this->model->delete($id);

        $this-> view->home($clients);

        header("Location: " . BASE_URL);
    }

    function deleteAccount($id){     
        $accounts= $this->modelAccount->deleteAccount($id);

        $this-> view->home($accounts);

        header("Location: " . BASE_URL);
    }

    function editClient($id){
        $clients= $this->model->getClient($id);

        $this->view->editClient($id,$clients);
    }

    function updateClient(){
        $nombre_apellido= $_POST['nameEdit'];
        $dni= $_POST['dniEdit'];
        $direccion= $_POST['adressEdit'];
        $fecha_nacimiento= $_POST['dateEdit'];
        $num_cuenta= $_POST['account_idEdit'];
        $id_cliente= $_POST['id_cliente'];

        $clients= $this->model->updateClient($nombre_apellido, $dni, $direccion, $fecha_nacimiento, $num_cuenta, $id_cliente);
        header("Location: " . BASE_URL);
    }

    function editAccount($id){
        $accounts= $this->modelAccount->getAccount($id);

        $this->view->editAccount($id,$accounts);
    }

    function updatedAccount(){
        
        $count= $_POST['cuentaEdit'];
        $coin= $_POST['coinEdit'];
        $id_cuenta= $_POST['idAccountEdit'];

        $account= $this->modelAccount->updateAccount($count, $coin, $id_cuenta);
        header("Location: " . BASE_URL);
    }

    function addAccount(){
        $tipo_cuenta= $_POST['tipo_cuenta'];
        $moneda= $_POST['moneda'];

        $account= $this->modelAccount->addAccount($tipo_cuenta, $moneda);


        header("Location: " . BASE_URL);
    }

    function addClient(){
        $nombre_apellido= $_POST['name'];
        $dni= $_POST['dni'];
        $direccion= $_POST['adress'];
        $fecha_nacimiento= $_POST['date'];
        $saldo= $_POST['saldo'];
        $ultimo_movimiento= $_POST['date_move'];
        $num_cuenta= $_POST['account'];
        $id_cuenta= $_POST['account_id'];

        $clients= $this->model->addClient($nombre_apellido, $dni, $direccion, $fecha_nacimiento, $saldo, $ultimo_movimiento, $num_cuenta, $id_cuenta);

        header("Location: " . BASE_URL);
    }
}
?>