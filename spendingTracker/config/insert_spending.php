<?php
require_once 'config.php';
$cantidad    = $_POST['cantidad'];
$categoria   = $_POST['categoria'];
$descripcion = $_POST['descripcion'];

$query = "INSERT INTO gastos_personales (cantidad, categoria, descripcion) VALUES ('$cantidad', '$categoria','$descripcion')";
$conn->query($query);

header("Location: index.php");