<?php
if(!isset($_SESSION)) { 
  session_start(); 
}
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
 <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{

//cek hak akses user
$cek=user_akses($_GET['module'],$_SESSION['sessid']);
if($cek==1 OR $_SESSION['leveluser']=='admin'){

$aksi="modul/mod_member/aksi_member.php";
switch(isset($_GET['act']) ? $_GET['act']:''){
  // Tampil Agenda
  default:
  echo "
     
   <div id='main-content'>
   <div class='container_12'>
   <div class=grid_12> 
   </div>
  
   <div class='grid_12'>
   <div class='block-border'>
   <div class='block-header'>
   <h1>MANAJEMEN MEMBER</h1>
   <span></span> 
   </div>
   <div class='block-content'>
      
   <table id='table-example' class='table'>
      
   <thead>
   <tr>  
     <th>No.</th> 
     <th>Nama</th> 
     <th>Email</th>
     <th>Aksi</th>
   </tr> 
   </thead>
   <tbody>";

    $p      = new Paging;
    $batas  = 15;
    $posisi = $p->cariPosisi($batas);
	
    $tampil=mysqli_query($conn,"SELECT * FROM member ORDER BY id_member DESC LIMIT $posisi,$batas");

    $no = $posisi+1;
    while ($r=mysqli_fetch_array($tampil)){
      echo "<tr  class='gradeX'>
              <td>$no</td>
                <td width=220>$r[nama]</td>
                <td>$r[email]</td>
				      <td><a href=$aksi?module=member&act=hapus&id=$r[id_member]>Hapus</a></td>
		        </tr>";
      $no++;
    }
    echo "</tbody></table> ";
    // $jmldata = mysqli_num_rows(mysqli_query($conn,"SELECT * FROM member"));
    // $jmlhalaman  = $p->jumlahHalaman($jmldata, $batas);
    // $linkHalaman = $p->navHalaman($_GET['halaman'], $jmlhalaman);

    // echo "<div id=paging>$linkHalaman</div><br>";

    break;
	}
//kurawal akhir hak akses module
} else {
	echo akses_salah();
}
}
?>
