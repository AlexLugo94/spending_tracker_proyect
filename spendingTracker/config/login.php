<?php
require_once 'config.php';
$email    = $_POST['email'];
$password = $_POST['password'];

$query  = "SELECT * FROM usuarios where correo = '$email' AND password = '$password'";
$result = $conn->query($query);
if ($result->num_rows > 0) {
 session_start();
 $_SESSION['user'] = $email;
 header("Location: ../bienvenida.php");
} else {
 header("Location: ../index.php");
}