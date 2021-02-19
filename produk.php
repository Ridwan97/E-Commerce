<section id="highlights" class="highlights scrollspy">
	<div class="container">
		<h1 class="center-align">Produk Terbaru</h1>
		<div class="row">
			<?php 	$ambil = $koneksi->query('SELECT * FROM produk'); ?>
			<?php 	while($perproduk = $ambil->fetch_assoc()){ ?>	
				<div class="grid-example col m3 s12">
					<div class=" responisve-card card hoverable">
						<div class="card-image waves-effect waves-block waves-light">
							<center>
								<img class="responsive-img activator" src="foto_produk/<?php echo $perproduk['foto_produk']; ?>" style="height: 250px; width: 250px;" id="gambarr">
							</center>
							<span class="card-title">
								<strong><p><?php echo $perproduk['nama_produk']; ?></p></strong>
							</div>
							<div class="card-content">
								<p>stok : <?php echo $perproduk['stok_produk'] ?></p>
								<span class="harga">
									<h5>Rp.<?php echo number_format($perproduk['harga_produk']); ?></h5>
								</span> 
								<hr>
								<div class="card-action">
									<a href="detail.php?id=<?php echo $perproduk['id_produk']; ?>" 
									class="btn waves-effect waves-light left red btn-small ">Detail</a>
								<a href="beli.php?id=<?php 	echo $perproduk['id_produk']; ?>" class="btn waves-effect waves-light right btn-small">beli</a></span>
								</div>
							</div>
						</div>
					</div>
				<?php 	} ?>
			</div>	
		</div>
	</section>
