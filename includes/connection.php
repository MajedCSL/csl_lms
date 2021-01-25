<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "training_center";
// Create ection
$connection = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($connection->connect_error) {
die("connection failed: " . $connection->connect_error);
}
?>