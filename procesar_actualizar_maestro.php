<?php
include('connection.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    try {
        $id = $_POST['updateId'];

        $correo = $_POST['updateCorreo'];
        $nombre = $_POST['updateNombre'];
        $apellidos = $_POST['updateApellidos'];
        $direccion = $_POST['updateDireccion'];
        $fecha_nacimiento = $_POST['updatefecha_nacimiento'];

        $mysqli->query("UPDATE usuarios_datos SET `nombre`='$nombre', `apellidos`='$apellidos', `direccion`='$direccion', `fecha_nacimiento`=$fecha_nacimiento WHERE `id_ud`=$id");

        $mysqli->query("UPDATE usuarios_login SET `correo`= '$correo' WHERE `datos_id`=$id");
        header('location: Adm_Das_Maes.php');
    } catch (mysqli_sql_exception $e) {
        echo $e->getMessage();
    }
}