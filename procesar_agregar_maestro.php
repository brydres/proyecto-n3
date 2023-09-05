<?php
include('connection.php');
include('defaulpassword.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    try {

        $correo = $_POST['correo'];
        $nombre = $_POST['nombre'];
        $apellidos = $_POST['apellidos'];
        $direccion = $_POST['direccion'];
        $fecha_nacimiento = $_POST['fecha_nacimiento'];
        $materia = $_POST['clase_asignada'];

        $query = "INSERT INTO usuarios_datos (`nombre`, `apellidos`,`direccion`, `fecha_nacimiento`, `rol_id`) VALUES ('$nombre', '$apellidos','$direccion','$fecha_nacimiento', 2)";
        $resultado = $mysqli->query($query);

        $query_id = 'Select max(id_ud) as datos_id from `usuarios_datos`';

        $result = $mysqli->query($query_id);

        $dato = $result->fetch_assoc();
        $dato_id = $dato['datos_id'];

        if ($materia) {
            include('Asign_materia.php');
        }
        crear_usuario($correo, $dato_id);

        exit();
    } catch (mysqli_sql_exception $e) {
        echo $e->getMessage();
    }
}