<?php
$HOST     = ("localhost");
$USER     = "root";
$PASSWORD = "";
$DB       = "proyecto";

$conn = new mysqli($HOST, $USER, $PASSWORD, $DB);

if ($conn->connect_errno) {
 echo "falló la base de datos" . $conn->connect_error;
}