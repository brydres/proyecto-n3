<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="/dist/output.css" rel="stylesheet" />
    <script src="../node_modules/flowbite/dist/flowbite.min.js"></script>
    <title>Login</title>
</head>
<body>
<main class="bg-gradient-to-r from-blue-300 to-blue-800 h-screen flex justify-center items-center">
        <div class="w-[400px] bg-[#FBF4D3] rounded-3xl overflow-hidden flex flex-col">
            <div class="w-full flex justify-center items-center mb-[-50px]">
                <img class="w-[300px] h-[300px]" src="./assets/logo.jpg" alt="logo de la uni" />
            </div>
            <form action="loginVerificacion.php" class="flex flex-col p-4 gap-4 justify-center items-center" method="post">
                <p>Bienvenido ingresa con tu cuenta</p>
                <div class="w-[90%] flex flex-row items-center bg-white px-4 py-2 border border-[#7A7678] rounded-xl">
                    <input name="correo" type="text" class="w-full outline-none border-none shadow-none" placeholder="Email" />

                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="fill: rgba(122, 118, 120, 1); transform: msFilter">
                        <path d="M20 4H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2zm0 4.7-8 5.334L4 8.7V6.297l8 5.333 8-5.333V8.7z">
                        </path>
                    </svg>
                </div>
                <div class="w-[90%] flex flex-row items-center bg-white px-4 py-2 border border-[#7A7678] rounded-xl">
                    <input name="contra" type="password" class="w-full outline-none border-none" placeholder="Password" />
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="fill: rgba(122, 118, 120, 1); transform: msFilter">
                        <path d="M20 12c0-1.103-.897-2-2-2h-1V7c0-2.757-2.243-5-5-5S7 4.243 7 7v3H6c-1.103 0-2 .897-2 2v8c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2v-8zM9 7c0-1.654 1.346-3 3-3s3 1.346 3 3v3H9V7z">
                        </path>
                    </svg>
                </div>
                <div class="flex justify-end w-full px-5">
                    <button class="text-white bg-[#007CFF] px-4 py-2 rounded-xl">
                        Ingresar
                    </button>
                </div>
            </form>
        </div>
    </main>
</body>
</html>