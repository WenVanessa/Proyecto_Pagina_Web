<?php
include('../modelo/bd.php'); 
$codigo = '';
$producto = '';
$precio = '';
$descripcion = ''; 
if(isset($_GET['codigo'])){
    $codigo = $_GET['codigo'];
    $query = "SELECT * FROM producto WHERE prod_codigo = $codigo";
    $resultado = mysqli_query($conexion, $query);
    if (mysqli_num_rows($resultado) == 1){
        $row = mysqli_fetch_array($resultado);
        $codigo = $row['prod_codigo'];
        $producto = $row['prod_nombre'];
        $precio = $row['prod_precioVenta'];
        $descripcion = $row['prod_descripcion'];
    }
}

if (isset($_POST['update'])) {
    $codigo = $_GET['codigo'];
    $producto = $_POST['producto'];
    $precio = $_POST['precio'];
    $descripcion = $_POST['descripcion'];

    $query = "UPDATE producto SET prod_codigo = '$codigo', prod_nombre = '$producto', prod_precioVenta = '$precio', prod_descripcion = '$descripcion' WHERE prod_codigo = '$codigo'"; 
    mysqli_query($conexion, $query);
    if (!isset($_SESSION['mensaje_mostrado'])) {
        $_SESSION['mensaje'] = "Producto actualizado correctamente";
        $_SESSION['tipo_mensaje'] = 'warning';
        $_SESSION['mensaje_mostrado'] = true; 
    }
    header("Location:../vistas/admin.php");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../assets/css/layout.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/fontawesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <title>Administracion</title>
</head>
<body>
<div class="container p-4"> 
    <div class="row"> 
        <div class="col-md-4 mx-auto"> 
            <div class="card card-body"> 
                <form method="POST" action="Editar.php?codigo=<?php echo $_GET['codigo']; ?>">
                    <div class="form-group"> 
                        <input type="text" name="producto" value="<?php echo $producto; ?>" class="form-control" placeholder="Actualizar producto">
                    </div>
                    <div class="form-group"> 
                        <input type="number" name="precio" value="<?php echo $precio; ?>" class="form-control" placeholder="Actualizar precio">
                    </div>
                    <div class="form-group"> 
                        <textarea name="descripcion" rows="2" class="form-control" placeholder="Actualizar descripción"><?php echo $descripcion; ?></textarea>
                    </div>
                    <button class="btn btn-success" name="update">Actualizar</button>
                </form> 
            </div> 
        </div> 
    </div> 
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>