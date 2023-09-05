<?php

session_start();

if (!isset($_SESSION['user']) || $_SESSION['user']['rol_id'] != 1) {
    header('Location: login.php');
    exit();
}
?>

<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="/dist//output.css">
</head>

<body>
    <div class="w-screen h-screen flex">
        <div class="flex h-full bg-blue-900 text-white w-60  py-6 flex-col justify-between">
            <div class="px-6">
                <div class="flex flex-row justify-center items-center width=50px pb-2">
                    <img src="./dist//imagenes//logo.jpg" alt="Logo" class="mx-auto max-w-full rounded-full" width="50px" height="50px mb-">
                    <span class="block font-semibold text-gray-300">Universidad</span>
                </div>
                <div class="border-t border-white mb-2 pt-4 text-sm">Administrador</div>
                <div class="border-t border-white pt-4 text-sm ">Menu Administracion</div>
                <div class="mt-6 space-y-2">
                    <a href="Adm_Das_Per.php" class=" flex flex-row justify-center  group"><img src="./dist//imagenes//rights.png" alt="llave" height="32px" width="32px">
                        <p class="px-4"> Permisos </p>
                    </a>
                    <a href="Adm_Das_Maes.php" class=" flex flex-row justify-center  group">
                        <img src="./dist//imagenes//tutor.png" alt="" height="32px" width="32px">
                        <p class=" px-4"> Maestros </p>
                    </a>
                    <a href="Adm_Das_Alum.php" class=" flex flex-row justify-center  group">
                        <img src="./dist//imagenes//students.png" alt="" height="32px" width="32px">
                        <p class="px-4"> Alumnos </p>
                        <a href="Adm_Das_Class.php" class=" flex flex-row justify-center group">
                            <img src="./dist//imagenes//clases.png" alt="" height="32px" width="32px">
                            <p class="px-4"> Clases </p>
                        </a>
                </div>
            </div>
        </div>

        <div class="flex flex-col w-[calc(100%-15rem)] px-2">
            <nav class="flex h-10 w-full  flex-row justify-between items-center">
                <div class=" flex flex-row justify-items-stretch">
                    <a href="AdmDashboard.php" class="relative  flex flex-row items-center group">
                        <img src="/dist//imagenes//menu.jpeg" alt="icono menu" width="18px" height="18px px-2">
                        <p class="px-4"> Home </p>
                    </a>
                </div>

                <div class=" flex flex-row justify-between items-center">

                    <button class="relative flex justify-center items-center group">
                        <p class="px-4"> administrador </p>
                        <div class="absolute hidden group-focus:block top-full min-w-full w-max bg-white mt-1 rounded">
                            <ul class="text-left border none">
                                <li class="px-4 py-1 border-b flex flex-row gap-3"> <span><svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 21 21" fill="none">
                                            <g clip-path="url(#clip0_570_384)">
                                                <path d="M10.6435 2.18596C6.04354 2.18596 2.31021 5.91929 2.31021 10.5193C2.31021 15.1193 6.04354 18.8526 10.6435 18.8526C15.2435 18.8526 18.9769 15.1193 18.9769 10.5193C18.9769 5.91929 15.2435 2.18596 10.6435 2.18596ZM10.6435 4.68596C12.0269 4.68596 13.1435 5.80263 13.1435 7.18596C13.1435 8.56929 12.0269 9.68596 10.6435 9.68596C9.26021 9.68596 8.14354 8.56929 8.14354 7.18596C8.14354 5.80263 9.26021 4.68596 10.6435 4.68596ZM10.6435 16.5193C8.56021 16.5193 6.71854 15.4526 5.64354 13.836C5.66854 12.1776 8.97688 11.2693 10.6435 11.2693C12.3019 11.2693 15.6185 12.1776 15.6435 13.836C14.5685 15.4526 12.7269 16.5193 10.6435 16.5193Z" fill="#4F4F4F" />
                                            </g>
                                            <defs>
                                                <clipPath id="clip0_570_384">
                                                    <rect width="20" height="20" fill="white" transform="translate(0.643555 0.519287)" />
                                                </clipPath>
                                            </defs>
                                        </svg></span> </i> <span> Perfil</span> </li>
                                <li class="px-4 py-1 border-b flex flex-row gap-3"> <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                        <g clip-path="url(#clip0_570_373)">
                                            <path d="M8.99167 13.575C9.31667 13.9 9.84167 13.9 10.1667 13.575L13.1583 10.5833C13.4833 10.2583 13.4833 9.73333 13.1583 9.40833L10.1667 6.41667C9.84167 6.09167 9.31667 6.09167 8.99167 6.41667C8.66667 6.74167 8.66667 7.26667 8.99167 7.59167L10.5583 9.16667H3.33333C2.875 9.16667 2.5 9.54167 2.5 10C2.5 10.4583 2.875 10.8333 3.33333 10.8333H10.5583L8.99167 12.4C8.66667 12.725 8.675 13.2583 8.99167 13.575ZM15.8333 2.5H4.16667C3.24167 2.5 2.5 3.25 2.5 4.16667V6.66667C2.5 7.125 2.875 7.5 3.33333 7.5C3.79167 7.5 4.16667 7.125 4.16667 6.66667V5C4.16667 4.54167 4.54167 4.16667 5 4.16667H15C15.4583 4.16667 15.8333 4.54167 15.8333 5V15C15.8333 15.4583 15.4583 15.8333 15 15.8333H5C4.54167 15.8333 4.16667 15.4583 4.16667 15V13.3333C4.16667 12.875 3.79167 12.5 3.33333 12.5C2.875 12.5 2.5 12.875 2.5 13.3333V15.8333C2.5 16.75 3.25 17.5 4.16667 17.5H15.8333C16.75 17.5 17.5 16.75 17.5 15.8333V4.16667C17.5 3.25 16.75 2.5 15.8333 2.5Z" fill="#EB5757" />
                                        </g>
                                        <defs>
                                            <clipPath id="clip0_570_373">
                                                <rect width="20" height="20" fill="white" />
                                            </clipPath>
                                        </defs>
                                    </svg>Salir </li>
                            </ul>
                        </div>
                        <img src="./dist//imagenes//downarrow_abajo_5820.png" alt="icono flecha" width="18px" height="18px">
                    </button>
                </div>

            </nav>
            <section class=" h-screen bg-blue-50">
                <div class="flex  w-full flex-row justify- items-center    ">
                    <div class="flex h-10 w-full  flex-row justify-between items-center">
                        <h1 class="text-xl"> Lista de Permisos</h1>
                        <div>
                            <a href="AdmDashboard.php" class=" text-blue-500">Home</a>/
                            <span>permisos</span>
                        </div>
                    </div>
                </div>

                <div class="hidden fixed inset-0  justify-center items-center z-50" id="modal">
                    <div class="bg-white p-8 rounded-lg shadow-md w-96">
                        <h2 class="text-2xl font-semibold mb-4">Editar Permisos</h2>
                        <form class="text" id="permisosForm">
                            <label for="email" class="block mb-2">Email del Usuario:</label>
                            <input type="email" id="email" name="email" class="w-full p-2 border rounded mb-4" required>

                            <label for="permiso" class="block mb-2">Permiso:</label>
                            <select id="permiso" name="permiso" class="w-full p-2 border rounded mb-4">
                                <option value="admin">Administrador</option>
                                <option value="maestro">Maestro</option>
                                <option value="estudiante">Estudiante</option>

                            </select>

                            <button type="button" id="cerrar" class="bg-gray-400 text-white px-4 py-2 rounded mr-2">Cerrar</button>
                            <button type="submit" id="guardarCambios" class="bg-blue-500 text-white px-4 py-2 rounded">Guardar
                                Cambios</button>
                        </form>
                    </div>
                </div>
                <div class="container mx-auto p-8 bg-white">
                    <h2 class="text-2xl font-semibold mb-4">Informacion de Permisos</h2>
                    <table class="w-full border">
                        <thead>
                            <tr class="bg-gray-300">
                                <th class="py-2 px-4">Email/Usuario</th>
                                <th class="py-2 px-4">Permiso</th>
                                <th class="py-2 px-4">Acciones</th>
                            </tr>
                        </thead>
                        <tbody id="tablaUsuarios">
                        </tbody>
                    </table>
                </div>
            </section>
        </div>
    </div>

    <script>
        const modal = document.getElementById('modal');
        const cerrarBtn = document.getElementById('cerrar');
        const tablaUsuarios = document.getElementById('tablaUsuarios');
        const usuarios = [{
                email: 'usuario1@example.com',
                permiso: 'admin'
            },
            {
                email: 'usuario2@example.com',
                permiso: 'maestro'
            },
            {
                email: 'usuario3@example.com',
                permiso: 'estudiante'
            }
        ];

        function cargarUsuarios() {
            tablaUsuarios.innerHTML = '';
            usuarios.forEach(usuario => {
                tablaUsuarios.innerHTML += `
                    <tr>
                        <td class=" item center py-2 px-4">${usuario.email}</td>
                        <td class="py-2 px-4">${traducirPermiso(usuario.permiso)}</td>
                        <td class="py-2 px-4">
                            <button class="bg-blue-500 text-white px-2 py-1 rounded editar" data-usuario='${JSON.stringify(usuario)}'>Editar</button>
                        </td>
                    </tr>
                `;
            });

            const botonesEditar = document.querySelectorAll('.editar');
            botonesEditar.forEach(boton => {
                boton.addEventListener('click', () => {
                    const usuario = JSON.parse(boton.getAttribute('data-usuario'));
                    document.getElementById('email').value = usuario.email;
                    document.getElementById('permiso').value = usuario.permiso;
                    modal.classList.remove('hidden');
                });
            });
        }

        function traducirPermiso(permiso) {
            switch (permiso) {
                case 'admin':
                    return 'Administrador';
                case 'maestro':
                    return 'Maestro';
                case 'estudiante':
                    return 'Estudiante';

                default:
                    return 'Desconocido';
            }
        }

        cerrarBtn.addEventListener('click', () => {
            modal.classList.add('hidden');
        });

        cargarUsuarios();
    </script>
</body>
</html>