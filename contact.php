<?php
require 'mail/class.phpmailer.php';
require 'mail/class.smtp.php';

session_start(); 
  

  

$email = $_SESSION['email'];
$name =  $_SESSION['full_name'];
$mail = new PHPMailer();
$mail->setFrom('training@contessabd.com');
$mail->addAddress($email);
$mail->Subject = 'Contessa Training Insitute Apply confirmation';
$mail->Body = "Thanks for applying. We will contact you soon through phone call. ";
$mail->IsSMTP();
$mail->SMTPSecure = 'ssl';
$mail->Host = 'mail.contessabd.com';
$mail->SMTPAuth = true;
$mail->Port = 465;

//Set your existing gmail address as user name
$mail->Username = 'training@contessabd.com';

//Set the password of your gmail address here
$mail->Password = 'cscl123$';
if(!$mail->send()) {
  echo 'Email is not sent.';
  echo 'Email error: ' . $mail->ErrorInfo;
} else {

    header("Location:success.php");
}






?>




