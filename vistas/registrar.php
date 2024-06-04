<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registar</title>
    <link rel="stylesheet" type="text/css" href="../assets/css/registro.css">
</head>
<body>
<div class="ini-contenedor">
<div class="card shadow" style="width: 18rem;">
    <div class="card-body">
        <h2 class="card-title">¡Unete con nosotros!</h2>
        <form method="post" action="../controlador/registro.php">
            <label for="id">Documento:</label>
            <input type="number" id="id" name="id" required><br>
            <label for="username">Usuario:</label>
            <input type="text" id="username" name="username" required><br>
            <label for="password">Contraseña:</label>
            <input type="password" id="password" name="password" required><br>
            <button type="submit">Registrarse</button><br>
        </form>
    </div>
</div>
</div>
</body>
</html>