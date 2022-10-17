<?php

class ModelAccount{

    private $db;

    public function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_banco;charset=utf8', 'root', '');
    }

    function getAllAccount(){
        $sentencia = $this->db->prepare( "select * from cuenta");
        $sentencia->execute();
        return $sentencia->fetchAll(PDO::FETCH_ASSOC); 
    }

    function deleteAccount($id){
        $sentencia = $this->db->prepare('DELETE FROM cuenta WHERE id_cuenta = ?');
        $sentencia-> execute([$id]);
    }

    function addAccount($tipo_cuenta, $moneda){
        $sentencia = $this->db->prepare('INSERT INTO cuenta(tipo_cuenta, moneda) VALUES(?,?)');
        $sentencia->execute([$tipo_cuenta, $moneda]);
    }

    function getAccount($id){
        $sentencia = $this->db->prepare('SELECT * FROM cuenta  WHERE id_cuenta = ?');
        $sentencia-> execute([$id]);
        return $sentencia->fetch(PDO::FETCH_ASSOC);
    }

    function updateAccount($count, $coin, $id_cuenta){
        $sentencia = $this->db->prepare("UPDATE  cuenta SET tipo_cuenta = ? , moneda = ? WHERE id_cuenta = ?;");
        $sentencia->execute([$count, $coin, $id_cuenta]);
        return $sentencia->fetchAll(PDO::FETCH_ASSOC);
    }
}    