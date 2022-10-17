<?php
//require('libs/Smarty.class.php');

class ViewLogin{

    function __construct(){
    }

    function login($message = ''){
        $smart= new Smarty();
        $smart->assign('message',$message);

        $smart->display('templates/login.tpl');
    }
}    