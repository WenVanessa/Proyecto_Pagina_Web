<?php
// require_once ('../modelo/Conexion.php')
?>
<!DOCTYPE html>
<html>
<head>
    <title>Iniciar sesión</title>
    <link rel="stylesheet" type="text/css" href="../assets/css/login.css">
</head>
<body>
    <div class="login-container">
        <h2>¡¡BIENVENIDO!!</h2>
        <form class="login-form" method="post" action="../controlador/autocontrol.php">
            <label for="username">Usuario:</label>
            <input type="text" id="username" name="username" required><br>
            <label for="password">Contraseña:</label>
            <input type="password" id="password" name="password" required><br>
            <button type="submit">Iniciar sesión</button><br>
        </form>
        <form class="login-form" method="post" action="registrar.php">
            <a href="registrar.php"><button type="submit">Registrarse</button><br></a>
        </form>
    </div>
    <?php

    $conexion=mysqli_connect("localhost","id21456646_123sena","456Wp___","id21456646_proyecto_lopez_calderon")or die("error conexion");
    ?>
</body>
</html>

