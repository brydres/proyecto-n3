<?php
function crear_usuario($correo, $dato_id)
{
    include('connection.php');

    try {
        $hash = password_hash('funval', PASSWORD_DEFAULT);

        $querycontra = "INSERT INTO `usuarios_login`(`id_ul`, `correo`, `contra`, `datos_id`) VALUES (0,'$correo','$hash',$dato_id)";

        $mysqli->query($querycontra);

        header('location: Adm_Das_Maes.php');

        exit();
    } catch (mysqli_sql_exception $e) {
        echo $e->getMessage();
    }
}