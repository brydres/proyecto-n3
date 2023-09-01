<?php
try {
    $mysqli = new mysqli("localhost", "root", "", "db_project_3");
} catch (mysqli_sql_exception $e) {
    echo "Error:" . $e->getMessage();
}
?>