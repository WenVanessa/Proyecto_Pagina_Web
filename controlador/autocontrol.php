<?php

require("../vistas/login.php");

include('../modelo/Conexion.php');

$USUARIO=$_POST['username'];
$PASSWORD=$_POST['password'];

session_start();
$_SESSION['username']=$USUARIO; 


$consulta= "SELECT* FROM usuario where nombre= '$USUARIO' and clave ='$PASSWORD'";
$resultado= mysqli_query($conexion, $consulta);


$filas= mysqli_fetch_array($resultado);

if ($filas['tipoUsuario']=='cliente') {
    echo '<script type="text/javascript">
    alert("INGRESO EXITOSO, BIENVENIDO CLIENTE!!");    
    window.location.href="../vistas/layout.php"; 
    </script>';
} else
if($filas['tipoUsuario']=='administrador'){
    echo '<script type="text/javascript">
    alert("INGRESO EXITOSO, BIENVENIDO ADMIN!!");    
    window.location.href="../vistas/admin.php"; 
</script>';
}
else {
    include_once("../vistas/login.php");
    ?>
    <h2> Error De Autenticación, intentelo de nuevo </h2>
    <?php
}


mysqli_free_result($resultado);
mysqli_close($conexion); 

?> 