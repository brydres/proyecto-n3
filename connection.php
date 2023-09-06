<?php

$host = 'localhost';
$username = 'root';
$password = '';
$database = 'db_project_3';

try {
    $mysqli = new mysqli($host, $username, $password, $database);
} catch (mysqli_sql_exception $e) {
    die('Error de conexión: ' . $e->getMessage());
}

if ($mysqli->connect_error) {
    die('Error de conexión: ' . $mysqli->connect_error);
}