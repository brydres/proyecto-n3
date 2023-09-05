<?php
 include('connection.php');

 if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    try {
        $id = $_POST['updateId'];




        
    } catch (mysqli_sql_exception $e) {
        echo $e->getMessage();
    }
 
 }