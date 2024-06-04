<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header('Location: index.php');
    exit();
}
?>
<h2>Bienvenido al Tablero</h2>
<p>¡Has iniciado sesión exitosamente!</p>
<a href="logout.php">Cerrar Sesión</a>
