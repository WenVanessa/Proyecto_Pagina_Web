<?php

session_start();

if (isset($_POST['save'])) {
    $title = $_POST["title"];
    $price = $_POST["price"];
    $description = $_POST["description"];
    $id = $_POST["codigo"];

    $conexion = mysqli_connect("localhost", "id21456646_123sena", "456Wp___", "id21456646_proyecto_lopez_calderon") or die("Error de conexión: " . mysqli_connect_error());

    $title = mysqli_real_escape_string($conexion, $title);
    $price = mysqli_real_escape_string($conexion, $price);
    $description = mysqli_real_escape_string($conexion, $description);

    $query = "INSERT INTO producto (prod_codigo, prod_nombre, prod_precioVenta, prod_descripcion) VALUES ('$id','$title', '$price', '$description')";

    $result = mysqli_query($conexion, $query);

    if (!$result) {
        die("Error en la inserción: " . mysqli_error($conexion));
    }

    mysqli_close($conexion);

    if (!isset($_SESSION['mensaje_mostrado'])) {
        $_SESSION['mensaje'] = "Producto guardado correctamente";
        $_SESSION['tipo_mensaje'] = 'success';
        $_SESSION['mensaje_mostrado'] = true; 
    }
    
    header("Location:../vistas/admin.php");
}


?>