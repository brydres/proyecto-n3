<?php

include('connection.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    try {
        $materia =  $_POST['nombre_materia'];

        $querycontra = "INSERT INTO `materia`(`nombre_materia`) VALUES ('$materia')";

        $mysqli->query($querycontra);

        header('location: Adm_Das_Class.php');

        exit();
    } catch (mysqli_sql_exception $e) {
        echo $e->getMessage();
    }
}