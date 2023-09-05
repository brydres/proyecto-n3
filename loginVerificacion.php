<?php
require_once("connection.php");

$correo = $_POST["correo"];
$contra = $_POST["contra"];

$query = "SELECT * FROM usuarios WHERE correo_usuario='$correo' AND contra_usuario='$contra';";

$resultado = $mysqli->query($query);

$numFilas = $resultado->num_rows;

$data = $resultado->fetch_assoc();

var_dump($data);

session_start();

$_SESSION["data"] = $data;

var_dump($_SESSION["data"]["rango"]);

$rango = $_SESSION["data"]["rango"];

var_dump($rango);

if ($rango === "1") {
    var_dump($rango);
    header("location: adminDashboard.php");
} else if ($rango === "2") {
    header("location: maestroDashboard.php");
} else if ($rango === "3") {
    header("location: alumnoDashboard.php");
} else {
    header("location: index.php");
}
?>