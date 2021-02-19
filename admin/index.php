<?php 
//koneksi ke database
session_start();
$koneksi = new mysqli('localhost','root','','computeronshop');
if (!isset($_SESSION['admin'])) 
{
	echo "<script>alert('Anda Harus Login');</script>";
	echo "<script>location='login.php';</script>";
	header('location:login.php');
	exit();
}

?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <link rel="shortcut icon" href="../favicon.ico">
  <title>Admin : Computer Onshop</title>
  <!-- BOOTSTRAP STYLES-->
  <link href="assets/css/bootstrap.css" rel="stylesheet" />
  <!-- FONTAWESOME STYLES-->
  <link href="assets/css/font-awesome.css" rel="stylesheet" />
  <!-- MORRIS CHART STYLES-->
  <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
  <!-- CUSTOM STYLES-->
  <link href="assets/css/custom.css" rel="stylesheet" />
  <!-- GOOGLE FONTS-->
  <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
  <!-- JQUERY SCRIPTS -->
  <script src="assets/js/jquery-1.10.2.js"></script>
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php">admin</a> 
            </div>
            <?php $ambil=$koneksi->query('SELECT * FROM admin'); ?>
            <?php while($pecah=$ambil->fetch_assoc()){ ?>
                <span class="navbar-text" style="color: white; width: 650px;font-size: 16px;">
                    <marquee behavior="scroll" direction="right">Selamat datang, <?php echo $pecah['nama_lengkap'] ; ?> </marquee>
                </span>
                <div style="color: white; padding: 15px 50px 5px 0px; float: right; font-size: 16px;">
                    Last access : <?php echo date("d M Y H:i:s", time()+60*60*5) ;?> &nbsp; <a href="index.php?halaman=logout" class="btn btn-danger square-btn-adjust">Logout</a> </div>
                </nav>   
            <?php } ?>
            <!-- /. NAV TOP  -->
            <nav class="navbar-default navbar-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav" id="main-menu">
                        <li class="text-center">
                            <img src="assets/img/ridwan.png" class="user-image img-responsive"/>
                        </li>
                        <li>
                          <a href="index.php"><i class="fa fa-dashboard"></i> Home</a>
                        </li>
                        <li>
                          <a href="index.php?halaman=kategori"><i class="fa fa-tag"></i> kategori</a>
                        </li>
                        <li>
                          <a href="index.php?halaman=produk"><i class="fa fa-tablet"></i> Produk</a>
                        </li>
                        <li><a href="index.php?halaman=pembelian"><i class="fa fa-shopping-cart"></i> Pembelian</a></li>
                         <li><a href="index.php?halaman=laporan_pembelian"><i class="fa fa-file"></i> Laporan</a></li>
                        <li><a href="index.php?halaman=pelanggan"><i class="fa fa-user"></i> Pelanggan</a></li>
                        <li><a href="index.php?halaman=logout"><i class="fa fa-sign-out"></i> Logout</a></li>               
                    </div>

                </nav>  
                <!-- /. NAV SIDE  -->
                <div id="page-wrapper" >
                    <div id="page-inner"> 
                        <?php 
                        if (isset($_GET['halaman'])) 
                        {
                            if ($_GET['halaman']=='produk') {
                                include 'produk.php';
                            }
                            elseif ($_GET['halaman']=='pembelian') {
                                include 'pembelian.php';
                            }
                            elseif ($_GET['halaman']=='pelanggan'){
                                include 'pelanggan.php';
                            }
                            elseif ($_GET['halaman']=='detail') {
                                include 'detail.php';
                            }
                            elseif ($_GET['halaman']=='tambahproduk') {
                                include 'tambahproduk.php';
                            }
                            elseif ($_GET['halaman']=='hapusproduk') {
                                include 'hapusproduk.php';
                            }
                            elseif ($_GET['halaman']=='ubahproduk') {
                                include 'ubahproduk.php';
                            }
                            elseif ($_GET['halaman']=='logout') {
                               include 'logout.php';
                            }
                           elseif ($_GET['halaman']=='pembayaran') {
                               include'pembayaran.php';
                           }
                           elseif ($_GET['halaman']=='laporan_pembelian') {
                               include'laporan_pembelian.php';
                           }
                            elseif ($_GET['halaman']=='kategori') {
                               include'kategori.php';
                           }
                            elseif ($_GET['halaman']=='detailproduk') {
                               include'detailproduk.php';
                           }
                           elseif ($_GET['halaman']=='hapusfotoproduk') {
                               include'hapusfotoproduk.php';
                           }
                            elseif ($_GET['halaman']=='hapus_pelanggan') {
                               include'hapus_pelanggan.php';
                           }
                       }
                       else
                       {
                        include 'home.php';
                    }  
                    ?>

                </div>
                <!-- /. PAGE INNER  -->
            </div>
            <!-- /. PAGE WRAPPER  -->
        </div>
        <!-- /. WRAPPER  -->
        <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
        <!-- BOOTSTRAP SCRIPTS -->
        <script src="assets/js/bootstrap.min.js"></script>
        <!-- METISMENU SCRIPTS -->
        <script src="assets/js/jquery.metisMenu.js"></script>
        <!-- MORRIS CHART SCRIPTS -->
        <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
        <script src="assets/js/morris/morris.js"></script>
        <!-- CUSTOM SCRIPTS -->
        <script src="assets/js/custom.js"></script>


    </body>
    </html>