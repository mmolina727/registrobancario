<?php

class ControllerSecurity{

    function __construct(){
        session_start();
        if(isset($_SESSION['IS_LOGGED'])){

        }
        else{
            header ("Location: " . BASE_URL . 'login');
        }
    }

}

?>