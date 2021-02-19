	<!-- NAVBAR -->
	<div class="navbar">
		<nav>
			<div class="container">
				<div class="nav-wrapper">
					<a href="index.php" class="brand-logo center"><img src="img/logo.png" class="logo"></a>
					<a href="#" data-target="mobile-nav" class="sidenav-trigger"><i class="material-icons">menu</i></a>
					<ul id="nav-mobile" class="left hide-on-med-and-down">
						<li >
							<a href="keranjang.php">Keranjang</a>
						</li>
						<li>
							<a href="riwayat.php">Riwayat Belanja</a>
						</li>
					</ul>
					<ul id="nav-mobile" class="right hide-on-med-and-down">
						<li>
							<a href="checkout.php">Checkout</a>
						</li>
						<!-- Jika sudah login ada session pelanggan-->
						<?php if (isset($_SESSION['pelanggan'])): ?>
							<li>
								<a class="nav-link" href="logout.php" tabindex="-1" aria-disabled="true">Logout</a>
							</li>
							<!-- Selain itu (belom login || belom ada session pelanggan) -->
							<?php else: ?>
								<li>
									<a class="nav-link" href="login.php" tabindex="-1" aria-disabled="true">Login</a>
								</li>	
								<li>
								<a href="daftar.php">daftar</a>
							</li>			    	
							<?php endif ;?>
							
						</ul>
					</div> 		
				</div>
			</nav>
		</div>
		<!-- Sidenav -->
		<ul class="sidenav" id="mobile-nav">
			<li>
				<a class="nav-link" href="keranjang.php">Keranjang</a>
			</li>
			<li>
				<a class="nav-link" href="#">Riwayat Belanja</a>
			</li>
			<li>
				<a class="nav-link" href="checkout.php">Checkout</a>
			</li>
			<!-- Jika sudah login ada session pelanggan-->
			<?php if (isset($_SESSION['pelanggan'])): ?>
				<li class="nav-item">
					<a class="nav-link" href="logout.php" tabindex="-1" aria-disabled="true">Logout</a>
				</li>
				<!-- Selain itu (belom login || belom ada session pelanggan) -->
				<?php else: ?>
					<li class="nav-item">
						<a class="nav-link" href="login.php" tabindex="-1" aria-disabled="true">Login</a>
					</li>				    	
				<?php endif ?>
			</ul>
