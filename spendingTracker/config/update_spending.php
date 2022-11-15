<?php
require_once 'config.php';
$cantidad    = $_POST['cantidad'];
$categoria   = $_POST['categoria'];
$descripcion = $_POST['descripcion'];
$id          = $_POST['id'];

$query = " UPDATE gastos_personales set cantidad = '$cantidad', categoria = '$categoria', descripcion = '$descripcion' where id = '$id'";

$conn->query($query);

header("location: ../index.php");