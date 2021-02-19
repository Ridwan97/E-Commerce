<h2><center>Data produk</center></h2>
<br>
<table class='table table-bordered' align="center">
	 <thead>
		<tr>
			<th><center>no</center></th>
			<th><center>kategori</center></th>
			<th><center>nama</center></th>
			<th><center>harga</center></th>
			<th><center>berat</center></th>
			<th><center>foto</center></th>
			<th><center>stok produk</center></th>
			<th><center>aksi</center></th> 
		</tr>
	</thead>
	<tbody align="center">
		<?php $nomor=1; ?>
		<?php $ambil=$koneksi->query("SELECT * FROM produk LEFT JOIN kategori ON produk.id_kategori=kategori.id_kategori"); ?>
		<?php while($pecah = $ambil->fetch_assoc()){ ?>
		<tr>
			<td><?php echo $nomor ; ?></td>
			<td><?php echo $pecah['nama_kategori'] ;?></td>
			<td><?php echo $pecah['nama_produk'] ;?></td>
			<td>Rp.<?php echo number_format($pecah['harga_produk']) ; ?></td>
			<td><?php echo $pecah['berat_produk'] ; ?></td>
			<td><img src="../foto_produk/<?php echo $pecah['foto_produk'] ;?>" width="100"></td>
			<td><?php echo $pecah['stok_produk']; ?></td>
			<td>
				<a href="index.php?halaman=hapusproduk&id=<?php echo $pecah['id_produk']; ?>" class="btn btn-danger">hapus</a>
				<a href="index.php?halaman=ubahproduk&id=<?php echo $pecah['id_produk']; ?>" class="btn btn-warning">ubah</a>
				<a href="index.php?halaman=detailproduk&id=<?php echo $pecah['id_produk']; ?>" class="btn btn-info">detail</a>
			</td>
		</tr>
		<?php $nomor++; ?>
		<?php } ?>
	</tbody>
</table>
<a href="index.php?halaman=tambahproduk" class="btn btn-primary">Tambah Data</a>