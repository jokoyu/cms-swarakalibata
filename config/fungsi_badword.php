<?php
function sensor($teks){
	global $conn;
    $w = mysqli_query($conn,"SELECT * FROM katajelek");
    while ($r = mysqli_fetch_array($w)){
        $teks = str_replace($r['kata'], $r['ganti'], $teks);       
    }
    return $teks;
}  
?>
