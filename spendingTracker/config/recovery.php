<?php
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\PHPMailer;

require '../PHPMailer/Exception.php';
require '../PHPMailer/PHPMailer.php';
require '../PHPMailer/SMTP.php';

require_once 'config.php';
$email  = $_POST['email'];
$query  = "SELECT * FROM usuarios where correo = '$email' AND status = 1";
$result = $conn->query($query);

if ($result->num_rows > 0) {
 $mail = new PHPMailer(true);

 try {

  $mail->isSMTP();
  $mail->Host     = 'smtp-mail.outlook.com';
  $mail->SMTPAuth = true;
  $mail->Username = 'alex1@gmail.com';
  $mail->Password = '123123';
  $mail->Port     = 587;

  $mail->setFrom('alex1@gmail.com', 'lugo');
  $mail->addAddress('alex1@gmail.com', 'Joe User'); //Add a recipient

  $mail->isHTML(true);
  $mail->Subject = 'Recuperacion de contraseña';
  $mail->Body    = 'Hola, este es un correo generado para solicitar tu recuperacion de contraseña, por favor, visita la pagina de <a href="localhost/spendingTracker/change_password.php?id=' . $row['id'] . 's>Recuperacion de contraseña</a>';
  $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

  $mail->send();
  header("Location: ../index.php?message=ok");
 } catch (Exception $e) {
  header("Location: ../index.php?message=error");
 }

} else {
 header("Location: ../index.php?message=not_found");
}