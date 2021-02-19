<?php
include '../koneksi.php';

// Require composer autoload
require_once  '../vendor/autoload.php';
// Create an instance of the class:
$mpdf = new \Mpdf\Mpdf();


// echo "<pre>";
// print_r($_GET);
// echo "</pre>";

$tgl_mulai = $_GET["tglm"];
$tgl_selesai = $_GET["tgls"];
$status = $_GET["status"];

$semuadata= array();
$ambil = $koneksi->query("SELECT * FROM pembelian pm LEFT JOIN pelanggan pl ON 
		pm.id_pelanggan=pl.id_pelanggan WHERE status_pembelian='$status' AND tanggal_pembelian BETWEEN 
		'$tgl_mulai' AND '$tgl_selesai' ");
	while($pecah = $ambil->fetch_assoc())
	{
		$semuadata[]=$pecah;
	}

$isi= "<h3>Laporan Pembelian ".$status."</h3>".
$isi.= "<h5>Mulai ".date("d F Y",strtotime($tgl_mulai))." Sampai ".date("d F Y",strtotime($tgl_selesai));
$isi.= "<table class='table table-bordered' border='1'>";
	$isi.= "<thead>
		<tr>
			<th>NO</th>
			<th>Pelanggan</th>
			<th>Tanggal</th>
			<th>Status</th>	
			<th>Jumlah</th>	
		</tr>	
	</thead>	
	<tbody> ";
		$total=0;
		foreach ($semuadata as $key => $value): 
		 	$total+=$value["total_pembelian"]; 
		 	$nomor = $key+1;
			 $isi.= "<tr>";
				$isi.= "<td>".$nomor."</td>";
				$isi.= "<td>".$value["nama_pelanggan"]."</td>";
				$isi.= "<td>".date("d F Y",strtotime($value["tanggal_pembelian"]))."</td>";
				$isi.="<td>".$value["status_pembelian"]."</td>";
				$isi.="<td>Rp.".number_format($value["total_pembelian"])."</td>";
			$isi.= "</tr>";
		 endforeach;
		$isi.= "<tbody>";
			$isi.= "<tr>";
				$isi.= "<td colspan='4'> <strong>TOTAL</strong></td>";
				$isi.= "<td><strong>Rp.".number_format($total)."</strong></td>";
			$isi.= "</tr>
		</tbody>
	</tbody>		
</table>	";

// Write some HTML code:
$mpdf->WriteHTML($isi);

// Output a PDF file directly to the browser
$mpdf->Output("laporan.pdf","I");
?>

