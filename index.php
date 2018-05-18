<?php
	session_start();
	require_once 'koneksi.php';
	$iduser = $_GET["iduser"];

	$sql = "SELECT * FROM user where id_user = $iduser";
	$query = mysqli_query($conn, $sql);
		while ($row = mysqli_fetch_array($query))
	{
		$username = $row['username'];
		$nohp = $row['no_hp'];
		$poin = $row['poin'];
	}
?>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>EXOTIK | TICKETING SYSTEM</title>
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<link rel="icon" href="Mamoru.png"/>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
		<link rel="stylesheet" href="css/matrix-style.css" />
		<link rel="stylesheet" href="css/matrix-media.css" />
		<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
		<link rel="stylesheet" href="css/jquery.gritter.css" />
		<link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
		<link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
		<link rel="stylesheet" href="css/Mamoru.min.css">
		<link rel="stylesheet" href="css/skins/_all-skins.min.css">
		<link rel="stylesheet" href="bower_components/jvectormap/jquery-jvectormap.css">
		<link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
		<script src="bower_components/jquery/dist/jquery.min.js"></script>
		<script src="bower_components/jquery-ui/jquery-ui.min.js"></script>
		<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
		<script src="bower_components/raphael/raphael.min.js"></script>
		<script src="bower_components/morris.js/morris.min.js"></script>
		<script src="bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
		<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
		<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
		<script src="bower_components/moment/min/moment.min.js"></script>
		<script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
		<script src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
		<script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
		<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
		<script src="bower_components/fastclick/lib/fastclick.js"></script>
		<script src="js/mamoru.min.js"></script>
		<script src="js/pages/dashboard.js"></script>
		<script src="js/demo.js"></script>


	</head>
 <body class="hold-transition skin-purple sidebar-mini">
      <div class="wrapper">
        <header class="main-header">
          <a class="logo">
          <span class="logo-lg"><b></b></span></a>
         <nav class="navbar navbar-static-top">
          <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <li class="dropdown messages-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success">2</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 2 messages</li>
              <li>
               <ul class="menu">
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="img/user2-160x160.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                         Irma | Admin EXOTIK
                        <small><i class="fa fa-clock-o"></i> 5 mins</small>
                      </h4>
                      <p>Terima kasih telah membeli tiket di EXOTIK</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="img/user6-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Yulin | Admin EXOTIK
                        <small><i class="fa fa-clock-o"></i> 2 days</small>
                      </h4>
                      <p>Maaf kereta anda mengalami keterlambatan</p>
                    </a>
                  </li>
                </ul>
              </li>
              <li class="footer"><a href="mailbox.html">See All Messages</a></li>
            </ul>
          </li>

          <li class="dropdown notifications-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            <i class="fa fa-bell-o"></i>
           <span class="label label-warning">0</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 0 notifications</li>
              <li class="footer"><a href="#">View all</a></li>
            </ul>
          </li>
       </ul></div></nav>
      </header>
	<aside class="main-sidebar">
		<section class="sidebar">
			<div class="user-panel">
				<div class="pull-left image">
					<img src="img/gambar2.png" class="img-circle" alt="User Image">
				</div>
				<div class="pull-left info">
				<p><?php echo "$username";?></p>
					<small><?php echo "$nohp";?></small>
					<p><small><?php echo "$poin Poin";?></small></p>
				</div>
			</div>

		<form action="#" method="get" class="sidebar-form">
			<div class="input-group">
				<input type="text" name="q" class="form-control" placeholder="Search">
					<span class="input-group-btn">
						<button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
						</button>
					</span>
			</div>
		</form>
		<ul class="sidebar-menu" data-widget="tree">
			<li class="header">MAIN NAVIGATION</li>
        <li>
			<a href="index.php?iduser=<?php echo $iduser;?>">
				<i class="fa fa-home"></i><span>Home</span>
			</a>
        </li>
 	   <li>
				<a href="diskon/diskon.php?iduser=<?php echo $iduser;?>">
			<i class="fa fa-tags"></i><span>Promo</span>
				</a></li>
        <li>
			<a href="profil.php?iduser=<?php echo $iduser;?>">
				<i class="fa fa-user"></i><span>Profil</span>
			</a>
        </li>
        <li>
			<a href="kontak.php?iduser=<?php echo $iduser;?>">
				<i class="fa fa-phone"></i><span>Hubungi Kami</span>
			</a>
        </li>
        <li>
			<a href="help.php?iduser=<?php echo $iduser;?>">
				<i class="fa fa-question-circle"></i><span>Bantuan</span>
			</a>
        </li>
        <li>
			<a href="index.html">
				<i class="fa fa-sign-out"></i><span>Keluar</span>
			</a>
        </li>
		</ul>
    </section>
	</aside>

	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">
				<div class="item active">
					<img src="img/diskon1.jpg" alt="Los Angeles" style="width:100%;">
				</div>
			<div class="item">
				<img src="img/diskon2.jpg" alt="Image" style="width:100%;">
			</div>
			<div class="item">
				<img src="img/diskon3.jpg" alt="Image" style="width:100%;">
			</div>
			</div>
		</div>
	</div>
		<div class="container-fluid">
			<div class="quick-actions_homepage">
				<ul class="quick-actions">
					<li class="bg_lb">
						<a href="tiketkereta/caritiket.php?iduser=<?php echo $iduser;?>"> <i class="icon-shopping-cart"></i> Tiket Kereta </a></li>
					<li class="bg_lg">
						<a href="maps.php?iduser=<?php echo $iduser;?>"> <i class="icon-map-marker"></i> Lokasi Kereta</a></li>
					<li class="bg_ly">

						<a href="kompensasi/kompensasi.php?iduser=<?php echo $iduser;?>"> <i class="icon-bell"></i><span class="label label-success"></span> Kompensasi </a></li>
					<li class="bg_lo">
						<a href="jadwal/jadwal.php?iduser=<?php echo $iduser;?>"> <i class="icon-calendar"></i> Jadwal Kereta</a></li>
					<li class="bg_ls">
						<a href="diskon/diskon.php?iduser=<?php echo $iduser;?>"> <i class="icon-tags"></i> Promo</a></li>
				</ul>
			</div>
		</div>
		</div>
		<div class="control-sidebar-bg"></div></div>
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<script>
var slideIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
      x[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > x.length) {slideIndex = 1}
    x[slideIndex-1].style.display = "block";
    setTimeout(carousel, 2000);
}
</script>
	</body>
</html>
