<?php

class ModelLogin{

    private $db;

    public function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_banco;charset=utf8', 'root', '');
    }

    function getUser($user){
        $sentencia = $this->db->prepare('SELECT * FROM usuario WHERE user = ?');
        $sentencia-> execute([$user]);
        return $sentencia->fetch(PDO::FETCH_ASSOC);
    }
}