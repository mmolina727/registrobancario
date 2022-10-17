<?php
require('libs/Smarty.class.php');

class ViewClient{

    function __construct(){
    }
    
    function home($clients){
      $smarty= new Smarty();
      $smarty->assign('clients',$clients);

      $smarty->display('templates/home.tpl');  
    }

    function detail($id,$clients){
      $smarty= new Smarty();
      $smarty->assign('clients',$clients);

      $smarty->display('templates/detail.tpl');
    }

    function editClient($id,$clients){
      $smarty= new Smarty();
      $smarty->assign('clients',$clients);

      $smarty->display('templates/editClient.tpl');
    }

    function editAccount($id,$accounts){
      $smarty= new Smarty();
      $smarty->assign('accounts',$accounts);

      $smarty->display('templates/editAccount.tpl');
    }

    function category($accounts){

      $smarty= new Smarty();
      $smarty-> assign ('accounts',$accounts);

      $smarty->display('templates/category.tpl');
    }

    function showByAccount($clients){
      $smarty= new Smarty();
      $smarty-> assign ('clients', $clients);

      $smarty->display('templates/categoryAccount.tpl');
    }
}
