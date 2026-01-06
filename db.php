<?php
$host = "localhost";
$user = "root";
$pass = "";
$db   = "babystar_db";

$conn = mysqli_connect($host, $user, $pass, $db);

if (!$conn) {
    die("Veritabanı bağlantı hatası: " . mysqli_connect_error());
}

mysqli_set_charset($conn, "utf8mb4");
?>
