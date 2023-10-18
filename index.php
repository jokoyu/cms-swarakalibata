<?php
  include "config/koneksi.php";
  include "rss.php";
  $iden=mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM identitas"));
  header("location: $iden[url]"); 
?>
