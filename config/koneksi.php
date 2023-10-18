<?php

// panggil fungsi validasi xss dan injection
require_once('fungsi_validasi.php');

$server =  "localhost";
$username = "root";
$password = "";
$database = "swarakalibata";

// Koneksi dan memilih database di server
//mysql_connect($server,$username,$password) or die("Koneksi gagal");
//mysql_select_db($database) or die("Database tidak bisa dibuka");

$conn = mysqli_connect($server, $username, $password, $database);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// buat variabel untuk validasi dari file fungsi_validasi.php
$val = new Rizalvalidasi;

?>
