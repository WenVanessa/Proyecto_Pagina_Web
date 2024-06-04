<?php include("../modelo/bd.php") ?>

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

<nav class="navbar-items">
  <div class="navbar-items">
    <div class="logo-btn">
      <a href="../index.php"><img src="../assets/img/Logo_empresa2.png" alt="Logo" class="logo-img"style="width: 300px; height: 100px;"></a>
    </div>
    <a href="cosmeticos.php"><button class="btn">Cosméticos naturales</button></a>
    <a href="medicamentos.php"><button class="btn">Medicamentos</button></a>
    <a href="bebidas.php"><button class="btn">Bebidas light</button></a>
    <a href="alimentos.php"><button class="btn">Alimentos</button></a>
  </div>
  <div class="navbar-right">
    <a href="../controlador/cerrarSesion.php"><button class="btn ingresar-btn">Cerrar Sesión</button></a>
    <div class="cart-btn">
    <img src="../assets/img/Carrito_de_compras.png" alt="Carrito de compras" class="cart-img"style="width: 61px; height: 60px;">
    </div>
  </div>
</nav>
<br>
<?php
?>
<div class="container p-4">

  <div class="row">
    <div class="col-md-4">
      <?php if(isset($_SESSION['mensaje']) && isset($_SESSION['mensaje_mostrado'])){ ?>
        <div class="alert alert-<?= $_SESSION['tipo_mensaje'];?> alert-dismissible fade show" role="alert">
          <?= $_SESSION['mensaje'] ?>
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        <?php 
        // Luego, borra la variable de sesión para que el mensaje no se muestre nuevamente
        unset($_SESSION['mensaje_mostrado']);
        ?>
      <?php } ?>
      <div class="card card-body">
        <form action="../controlador/producto.php" method="POST">
          <div class="form-group">
            <input type="nummber" name="codigo" class="form-control" placeholder="Numero producto" autofocus>
          </div>
          <div class="form-group">
            <input type="text" name="title" class="form-control" placeholder="Nombre" autofocus>
          </div>
          <div class="form-group">
            <input type="float" name="price" class="form-control" placeholder="Precio" autofocus>
          </div>
          <div class="form-group">
            <textarea name="description" rows="2" class="form-control" placeholder="Descripción" autofocus></textarea>
          </div>
          <br>
          <input type="submit" class="btn btn-success btn-block" name="save" value="Guardar producto">
        </form>
      </div>
    </div>

    <div class="col-md-8">
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>#producto</th>
            <th>Producto</th>
            <th>Precio</th>
            <th>Descrpción</th>
            <th>Acciones</th>
          </tr>
        </thead>
        <tbody>
          <?php
          $query= "SELECT * FROM producto"; 
          $result_prod = mysqli_query($conexion, $query);

          while($row = mysqli_fetch_array($result_prod)) { ?>
           <tr>
            <td><?php echo $row['prod_codigo'] ?></td>
            <td><?php echo $row['prod_nombre'] ?></td>
            <td><?php echo $row['prod_precioVenta'] ?></td>
            <td><?php echo $row['prod_descripcion'] ?></td>
            <td> 
              <a href="../modelo/Editar.php?codigo=<?php echo $row['prod_codigo']?>">
                <i class="fas fa-edit" style="color: green; font-size: 22px"></i>
              </a>
              <a href="../modelo/Eliminar.php?codigo=<?php echo $row['prod_codigo']?>">
                <i class="fas fa-trash" style="color: red; font-size: 22px"></i>
              </a>
            </td>
           </tr>

          <?php  } ?>
        </tbody>
      </table>
      <div class="text-right">
        <a href="fpdf/report.php" target="_blank" class="btn btn-success"><i class="fas fa-file-pdf"></i> Generar reportes</a>
      </div>
    </div>

  </div>
</div>

<br>
<footer>
  <div class="contact-us">
    <h2>¡Contáctanos!</h2>
  </div>
  <ul class="social-links">
    <li>
      <a href="mailto:casa_salud_del_llano@gmail.com">
        <img src="../assets/img/gmail_logo.png" alt="Gmail" />
        <span class="link-text">casa_salud_del_llano@gmail.com</span>
      </a>
    </li>
    <li>
      <a href="https://www.instagram.com/casasalud_llano1">
        <img src="../assets/img/instagram_logo.png" alt="Instagram" />
        <span class="link-text">@casasalud_llano1</span>
      </a>
    </li>
    <li>
      <a href="https://wa.me/573224567932">
        <img src="../assets/img/whatsapp_logo.png" alt="WhatsApp" />
        <span class="link-text">+57 322 4567932</span>
      </a>
    </li>
    <li>
      <a href="https://www.facebook.com/CasaSaludDelLlano">
        <img src="../assets/img/facebook_logo.png" alt="Facebook" />
        <span class="link-text">Casa Salud del Llano</span>
      </a>
    </li>
  </ul>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>