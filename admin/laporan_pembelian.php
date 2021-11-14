<?php 	
$semuadata=array();
$tgl_mulai="";
$tgl_selesai="";
$status="";

if (isset($_POST["kirim"])) 
{
	$tgl_mulai = $_POST["tglm"];
	$tgl_selesai= $_POST["tgls"];
	$status = $_POST["status"];
	$ambil = $koneksi->query("SELECT * FROM pembelian pm LEFT JOIN pelanggan pl ON 
		pm.id_pelanggan=pl.id_pelanggan WHERE status_pembelian='$status' AND tanggal_pembelian BETWEEN 
		'$tgl_mulai' AND '$tgl_selesai' ");
	while($pecah = $ambil->fetch_assoc())
	{
		$semuadata[]=$pecah;
	}
	 // echo "<pre>";
	 // print_r($semuadata);
	 // echo "</pre>";
}
?>
  <style>
      .table > tbody > tr > td {
     vertical-align: middle;
     text-align: center;
}
  </style>
<h2><center>LAPORAN PEMBELIAN <?php if (isset($_POST["kirim"])): ?>
	<?php echo $tgl_mulai ?> SAMPAI <?php echo $tgl_selesai ?>
<?php endif ?></center></h2>	
<hr>

<form method="post"	>	
	<div class="row">
			<div class="col-md-3">
				<div class="form-group">
					<label class="form-group">TANGGAL AWAL</label>
					<input type="date" class="form-control" name="tglm" value="<?php echo $tgl_mulai ?>">	
				</div>
			</div>	
			<div class="col-md-3">
				<div class="form-group">
					<label class="form-group">TANGGAL AKHIR</label>
					<input type="date" class="form-control" name="tgls" value="<?php echo 	$tgl_selesai ?>">
				</div>
			</div>
		<div class="col-md-3">
			<label style="margin-bottom: 15px;">STATUS</label>
			<select class="form-control" name="status">
				<option value="">Pilih Status</option>
				<option value="Belum Dibayar">Belum Dibayar</option>
				<option value="Sudah Kirim Pembayaran">Sudah Kirim Pembayaran</option>
				<option value="Lunas">Lunas</option>
				<option value="Batal">Batal</option>
				<option value="Barang Dikirim">Barang Dikirim</option>
				<option value="Barang Sudah Sampai">Barang Sudah Sampai</option>
			</select>
		</div>	
		<div class="col-md-2">
			<br>
			<button class="btn btn-primary"	 name="kirim">LIHAT LAPORAN</button>		
		</div>	
	</div>	
</form>	

<br>

<table class="table table-bordered">
	<thead>
		<tr>
			<th>NO</th>
			<th>PELANGGAN</th>
			<th>TANGGAL</th>
			<th>STATUS</th>	
			<th>JUMLAH</th>	
		</tr>	
	</thead>	
	<tbody> 
		<?php 	$total=0; ?>
		<?php foreach ($semuadata as $key => $value): ?>
			<?php 	$total+=$value["total_pembelian"]; ?>
			<tr>
				<td><?php echo 	$key+1; ?></td>
				<td><?php echo 	$value["nama_pelanggan"] ;?></td>
				<td><?php echo 	date("d F Y",strtotime($value["tanggal_pembelian"])); ?></td>
				<td><?php echo 	$value["status_pembelian"] ;?></td>
				<td>Rp. <?php echo 	number_format($value["total_pembelian"]); ?></td>
			</tr>
		<?php endforeach ?>
		<tbody>
			<tr>
				<td colspan="4"	> <strong>TOTAL</strong></td>	
				<td><strong>Rp.<?php echo number_format($total) ;?></strong></td>	
			</tr>
		</tbody>
	</tbody>		
</table>																																															
<a href="download_laporan.php?tglm=<?php echo $tgl_mulai ?>&tgls=<?php echo $tgl_selesai ?>&status=<?php echo $status ?>" target="_blank">Download PDF</a>


