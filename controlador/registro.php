<?php
require("../vistas/login.php");
include('../modelo/Conexion.php');

$nombre = $_POST["username"];
$pass = $_POST["password"];
$id = $_POST["id"];
$tipoUsuario = "usuario";
$conn = mysqli_connect("localhost", "id21456646_123sena", "456Wp___", "id21456646_proyecto_lopez_calderon") or die("error conexion");

$insertarusu = mysqli_query($conn, "INSERT INTO usuario(codigo, nombre, clave, tipoUsuario) VALUES ('$id', '$nombre', '$pass', '$tipoUsuario')");

if (!$insertarusu) {
    echo "<script>alert('Usuario duplicado, intenta con otro usuario');window.location='../index.php';</script>";	 
} else {
    echo "<script>alert('Usuario registrado con éxito: $nombre');window.location='../index.php';</script>";
}
?>