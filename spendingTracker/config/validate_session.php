<?php
session_start();
if (isset($_SESSION['user'])) {
 header("Location: ../bienvenida.php");
} else {
 header("Location: ../index.php");
}