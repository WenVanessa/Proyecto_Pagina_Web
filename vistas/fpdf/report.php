<?php
require('fpdf.php');

class PDF extends FPDF
{
// Cabecera de página
function Header()
{
    // Logo
    $this->Image('../../assets/img/Logo_empresa2.png',10,8,33);
    // Arial bold 15
    $this->SetFont('times','',18);
    // Movernos a la derecha
    $this->Cell(60);
    // Título
    $this->Cell(70,10,'Reporte de productos',0,0,'C');
    // Salto de línea
    $this->Ln(20);
    $this->Cell(20,10,'Codigo',1,0,'C',0);
    $this->Cell(50,10,'Producto',1,0,'C',0);
    $this->Cell(40,10,'Precio',1,0,'C',0);
    $this->Cell(80,10,'Descripcion',1,1,'C',0);

}

// Pie de página
function Footer()
{
    // Posición: a 1,5 cm del final
    $this->SetY(-15);
    // Arial italic 8
    $this->SetFont('Arial','I',8);
    // Número de página
    $this->Cell(0,10,'Pagina '.$this->PageNo().'/{nb}',0,0,'C');
}
}
require ('../../modelo/bd.php'); 
$consulta = "SELECT * FROM producto";
$resultado = $conexion->query($consulta);


$pdf = new PDF();
$pdf->AddPage();
$pdf->SetFont('Times','',16);

while ($row = $resultado->fetch_assoc()) {
    $pdf->Cell(20, 10, utf8_decode($row['prod_codigo']), 1, 0, 'C', 0);
    $pdf->Cell(50, 10, utf8_decode($row['prod_nombre']), 1, 0, 'C', 0);
    $pdf->Cell(40, 10, utf8_decode($row['prod_precioVenta']), 1, 0, 'C', 0);
    $pdf->MultiCell(80, 10, utf8_decode($row['prod_descripcion']), 1, 'L', 0);
}

$pdf->Output();
?>