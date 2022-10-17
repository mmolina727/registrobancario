<?php

class ModelClient{

    private $db;

    public function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_banco;charset=utf8', 'root', '');
    }

    function getAll(){
        $sentencia = $this->db->prepare( "select * from cliente");
        $sentencia->execute();
        return $clients= $sentencia->fetchAll(PDO::FETCH_ASSOC); 
    }

    function delete($id){
        $sentencia = $this->db->prepare('DELETE FROM cliente WHERE id_cliente = ?');
        $sentencia-> execute([$id]);
    }

    function detailItem($id){
        $sentencia = $this->db->prepare('SELECT * FROM cliente c INNER JOIN cuenta u ON c.id_cuenta = u.id_cuenta WHERE c.id_cuenta = ?');
        $sentencia-> execute([$id]);
        return $clients= $sentencia->fetchAll(PDO::FETCH_ASSOC);
    }

    function categoryItems(){
        $sentencia = $this->db->prepare('SELECT * FROM cliente c INNER JOIN cuenta u ON c.id_cuenta = u.id_cuenta');
        $sentencia-> execute();
        return $clients= $sentencia->fetchAll(PDO::FETCH_ASSOC);
    }

    function getClient($id){
        $sentencia = $this->db->prepare('SELECT * FROM cliente  WHERE id_cliente = ?');
        $sentencia-> execute([$id]);
        return $sentencia->fetch(PDO::FETCH_ASSOC);
    }

    function addClient($nombre_apellido, $dni, $direccion, $fecha_nacimiento, $saldo, $ultimo_movimiento, $num_cuenta, $id_cuenta){
        $sentencia = $this->db->prepare('INSERT INTO cliente(nombre_apellido, dni, direccion, fecha_nacimiento, saldo, ultimo_movimiento, num_cuenta, id_cuenta) VALUES(?,?,?,?,?,?,?,?)');
        $sentencia->execute([$nombre_apellido, $dni, $direccion, $fecha_nacimiento, $saldo, $ultimo_movimiento, $num_cuenta, $id_cuenta]);
    }

    function updateClient($nombre_apellido, $dni, $direccion, $fecha_nacimiento, $num_cuenta, $id_cliente){
        $sentencia = $this->db->prepare("UPDATE  cliente SET nombre_apellido = ? , dni= ? , direccion= ? , fecha_nacimiento = ? , num_cuenta = ? WHERE id_cliente = ?;");
        $sentencia->execute([$nombre_apellido, $dni, $direccion, $fecha_nacimiento, $num_cuenta, $id_cliente]);
        return $sentencia->fetchAll(PDO::FETCH_ASSOC);
    }

    function clientsAccount($tipo_cuenta){
        $sentencia = $this->db->prepare('SELECT * FROM cliente c INNER JOIN cuenta u ON c.id_cuenta = u.id_cuenta WHERE u.tipo_cuenta = ?');
        $sentencia->execute([$tipo_cuenta]);
        return $sentencia->fetchAll(PDO::FETCH_ASSOC);
    }
}
?>