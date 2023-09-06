<?php

session_start();

if (isset($_SESSION['user'])) {

    switch ($_SESSION['user']['rol_id']) {
        case 1:
            header('location: AdmDashboard.php');
            break;
        case 2:
            header('location: maestroDashboard.php');
            break;
        case 3:
            header('location: AlumDashboard.php');
            break;
        default:
            print_r('default');
            break;
    }
} else {
    header('location: login.php');
}