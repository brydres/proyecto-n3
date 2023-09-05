<?php
include("connection.php");
session_start();
if (isset($_POST['email']) && isset($_POST['password'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];


    $loginquery = "Select correo, contra, nombre, apellidos, rol_id, direccion, fecha_nacimiento, dni from 
    usuarios_login 
    LEFT join usuarios_datos on id_ud = datos_id where `correo` = '$email'";

    $result = $mysqli->query($loginquery);

    $row = $result->fetch_assoc();


    $hash = $row['contra'];
    if (password_verify($password, $hash)) {
        // print_r($row);

        $_SESSION['user'] = $row;

        header("location: index.php");
    }

}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/dist//output.css">
    <title>Login</title>
</head>




<body class="flex items-center justify-center  flex-col h-screen bg-amber-100">

    <div class="w-28 h-30">
        <img src="./dist//imagenes//logo.jpg" alt="logo">
    </div>

    <div class="bg-white p-5 rounded-none shadow-md h-70 w-80">
        <h2 class="text-x font-semibold-[#BDBDBD] mb-4 flex justify-center ">Bienvenido ingresa con tu cuenta
        </h2>
        <form method="post" action="login.php">
            <div class="flex items-center gap-3 px-3 h-10 max-w-[360px] border rounded-md border-[#BDBDBD] mb-4">

                <input type="text" name="email" id="email" placeholder="Email" class="h-9 w-full outline-none">
                <span>
                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" viewBox="0 0 25 25" fill="none">
                        <g clip-path="url(#clip0_1_7)">
                            <path
                                d="M20.6555 4.49072H4.65552C3.55552 4.49072 2.65552 5.39072 2.65552 6.49072V18.4907C2.65552 19.5907 3.55552 20.4907 4.65552 20.4907H20.6555C21.7555 20.4907 22.6555 19.5907 22.6555 18.4907V6.49072C22.6555 5.39072 21.7555 4.49072 20.6555 4.49072ZM20.2555 8.74072L13.7155 12.8307C13.0655 13.2407 12.2455 13.2407 11.5955 12.8307L5.05552 8.74072C4.80552 8.58072 4.65552 8.31072 4.65552 8.02072C4.65552 7.35072 5.38552 6.95072 5.95552 7.30072L12.6555 11.4907L19.3555 7.30072C19.9255 6.95072 20.6555 7.35072 20.6555 8.02072C20.6555 8.31072 20.5055 8.58072 20.2555 8.74072Z"
                                fill="#828282" />
                        </g>
                        <defs>
                            <clipPath id="clip0_1_7">
                                <rect width="24" height="24" fill="white" transform="translate(0.655518 0.490723)" />
                            </clipPath>
                        </defs>
                    </svg>
                </span>


            </div>
            <div class="flex items-center gap-3 px-3 h-10 max-w-[360px] border rounded-md border-[#BDBDBD] mb-4">
                <input type="password" name="password" id="password" placeholder="Password"
                    class="h-9 w-full outline-none">
                <span>
                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" viewBox="0 0 25 25" fill="none">
                        <g clip-path="url(#clip0_1_12)">
                            <path
                                d="M18.6555 8.99072H17.6555V6.99072C17.6555 4.23072 15.4155 1.99072 12.6555 1.99072C9.89552 1.99072 7.65552 4.23072 7.65552 6.99072V8.99072H6.65552C5.55552 8.99072 4.65552 9.89072 4.65552 10.9907V20.9907C4.65552 22.0907 5.55552 22.9907 6.65552 22.9907H18.6555C19.7555 22.9907 20.6555 22.0907 20.6555 20.9907V10.9907C20.6555 9.89072 19.7555 8.99072 18.6555 8.99072ZM12.6555 17.9907C11.5555 17.9907 10.6555 17.0907 10.6555 15.9907C10.6555 14.8907 11.5555 13.9907 12.6555 13.9907C13.7555 13.9907 14.6555 14.8907 14.6555 15.9907C14.6555 17.0907 13.7555 17.9907 12.6555 17.9907ZM9.65552 8.99072V6.99072C9.65552 5.33072 10.9955 3.99072 12.6555 3.99072C14.3155 3.99072 15.6555 5.33072 15.6555 6.99072V8.99072H9.65552Z"
                                fill="#828282" />
                        </g>
                        <defs>
                            <clipPath id="clip0_1_12">
                                <rect width="24" height="24" fill="white" transform="translate(0.655518 0.990723)" />
                            </clipPath>
                        </defs>
                    </svg>
                </span>


            </div>
            <div class="flex justify-end">
                <button type="submit"
                    class="w-1/3 bg-blue-600 text-white rounded-md py-1 px-2 focus:outline-none hover:bg-indigo-700 ">
                    Ingresar
                </button>
            </div>
    </div>
    </form>
    </div>

</body>

</html>