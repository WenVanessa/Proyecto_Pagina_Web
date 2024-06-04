<?php
include("../modelo/bd.php");

if (isset($_GET["codigo"])) {
    $codigo = $_GET["codigo"];
    $sql = $conexion->query("DELETE FROM producto WHERE prod_codigo = $codigo");
    if (!$sql) {
        echo 'No ha sido eliminado debido a un error: ' . mysqli_error($conexion);
    } else {
        header("Location: ../vistas/admin.php");
    }
}
if (!isset($_SESSION['mensaje_mostrado'])) {
    $_SESSION['mensaje'] = "Producto eliminado correctamente";
    $_SESSION['tipo_mensaje'] = 'danger';
    $_SESSION['mensaje_mostrado'] = true; 
}

header("Location:../vistas/admin.php");
?>

