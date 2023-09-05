<?php
include('connection.php');
include('defaulpassword.php');
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    try {
        $correo = $_POST['correo'];
        $dni = $_POST['dni'];
        $nombre = $_POST['nombre'];
        $apellidos = $_POST['apellidos'];
        $direccion = $_POST['direccion'];
        $fecha_nacimiento = $_POST['fecha_nacimiento'];

        $query = "INSERT INTO usuarios_datos (`dni`,`nombre`, `apellidos`,`direccion`, `fecha_nacimiento`, `rol_id`) VALUES ('$dni','$nombre', '$apellidos','$direccion','$fecha_nacimiento', 3)";
        $resultado = $mysqli->query($query);

        $query_id = 'Select max(id_ud) as datos_id from `usuarios_datos`';

        $result = $mysqli->query($query_id);

        $dato = $result->fetch_assoc();
        $dato_id = $dato['datos_id'];

        $hash = password_hash('funval', PASSWORD_DEFAULT);

        $querycontra = "INSERT INTO `usuarios_login`(`id_ul`, `correo`, `contra`, `datos_id`) VALUES (0,'$correo','$hash',$dato_id)";

        $mysqli->query($querycontra);

        header('location: Adm_Das_Alum.php');

        exit();
    } catch (mysqli_sql_exception $e) {
        echo $e->getMessage();
    }
}