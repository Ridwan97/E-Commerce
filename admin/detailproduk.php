<?php 
$id_produk= $_GET["id"];

$ambil = $koneksi->query("SELECT * FROM produk LEFT JOIN kategori ON produk.id_kategori=kategori.id_kategori WHERE id_produk='$id_produk'");
$detailproduk = $ambil->fetch_assoc();

$fotoproduk = array();
$ambilfoto = $koneksi->query("SELECT * FROM produk_foto WHERE id_produk='$id_produk' ");
while ($tiap = $ambilfoto->fetch_assoc()) 
{
	$fotoproduk[]=$tiap;
}


// echo "<pre>";
// print_r ($detailproduk);
// print_r($fotoproduk);
// echo "</pre>";
 ?>

<h2><center>DETAIL PRODUK</center></h2>
<br>  <br>	
 <table class="table">
 	<tr>
 		<th>Kategori</th>
 		<td><?php echo $detailproduk["nama_kategori"] ;?></td>
 		<td rowspan="6"><img src="../foto_produk/<?= $detailproduk['foto_produk'] ?>" width="200"></td>
 	</tr>
 	<tr>
 		<th>Produk</th>
 		<td><?php echo $detailproduk["nama_produk"] ;?></td>
 	</tr>
 	<tr>
 		<th>Harga</th>
 		<td>Rp. <?php echo number_format($detailproduk["harga_produk"]); ?></td>
 	</tr>
 	<tr>
 		<th>Berat</th>
 		<td><?php echo $detailproduk["berat_produk"] ;?></td>
 	</tr>
 	<tr>
 		<th>Deskripsi</th>
 		<td><?php echo $detailproduk["deskripsi_produk"] ;?></td>
 	</tr>
 	<tr>
 		<th>Stok</th>
 		<td><?php echo $detailproduk["stok_produk"] ;?></td>
 	</tr>
 </table>


<a href="index.php?halaman=produk" class="btn btn-danger">Kembali</a>