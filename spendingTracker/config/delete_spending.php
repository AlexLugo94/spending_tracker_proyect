<?php
require_once 'config.php';
$id = $_GET['id'];

$query = "DELETE FROM gastos_personales WHERE id = '$id'";

$conn->query($query);

header("location: index.php");