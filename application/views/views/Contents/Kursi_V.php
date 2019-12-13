<html>
<head>	
    <!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.11/css/bootstrap-select.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">

    <link rel="stylesheet" href="http://localhost/Project_B-Bioskop-master/assets/admin/css/Admin.css">
			<link rel="stylesheet" href="http://localhost/Project_B-Bioskop-master/assets/admin/css/Style.css">
	<link rel="stylesheet" href="http://localhost/Project_B-Bioskop-master/assets/admin/css/checkbox-bhm.css"

    <title>BIOSKOP XXI</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

        <style>
            .jam-tayang:hover {
                background-color : rgb(121, 118, 118)
            }

            .film-menu {
                text-align: center;
            }
            .film-menu:hover {
                opacity: 0.9;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                
            }
            .judul_film {
                font-weight: bold;
                font-size: large;
            }
            .gambar-theater{
                width: 90%
            }
		</style>
        	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script
</head>

<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                <a class="navbar-brand" href="http://localhost/Project_B-Bioskop-master/Beranda">Bioskop XXI</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active nav-item"><a class="nav-link" href="http://localhost/Project_B-Bioskop-master/Film">Film</a></li>
                    <li class="nav-item"><a class="nav-link" href="http://localhost/Project_B-Bioskop-master/Theater">Theater</a></li>
                    <li class="dropdown nav-item"><a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">E-Ticket<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-item"><a href="upcomingshow.html">Upcoming Show</a></li>
                            <li class="dropdown-item"><a href="alltransaction.html">All Transaction</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Top-Up Saldo</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                                            <li class="dropdown nav-item"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> ujangacid</a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-item"><a href="upcomingshow.html">profile</a></li>
                                <li class="dropdown-item"><a href="http://localhost/Project_B-Bioskop-master/Customer/Log_Out">logout</a></li>
                            </ul>
                        </li>
                    </ul>
            </div>
        </nav>
        <br><br><br><br>

<div style="text-align:center" class="container">
    <h2><center>SCREEN</center></h2>
    <br>
    <div class="form-group">
								<label for="inputKategori">Seat</label>
							</div>
<!-- 
							<label class="custom-checkbox-brm">One
								<input type="checkbox" checked="checked">
								<span class="checkmark-brm"></span>
							</label>
							<label class="custom-checkbox-brm">Two
								<input type="checkbox">
								<span class="checkmark-brm"></span>
							</label>
							<label class="custom-checkbox-brm">Three
								<input type="checkbox">
								<span class="checkmark-brm"></span>
							</label>
							<label class="custom-checkbox-brm">Four
								<input type="checkbox">
								<span class="checkmark-brm"></span>
							</label> --> -->



							<div class="custom-control custom-switch">
																				<label class="custom-checkbox-brm">A1													<input type="checkbox" value="71" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">A2													<input type="checkbox" value="72" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">A3													<input type="checkbox" value="3" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">A4													<input type="checkbox" value="4" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">A5													<input type="checkbox" value="5" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">A6													<input type="checkbox" value="6" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">A7													<input type="checkbox" value="7" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">A8													<input type="checkbox" value="8" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">A9													<input type="checkbox" value="9" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">A10													<input type="checkbox" value="10" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">A11													<input type="checkbox" value="11" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">A12													<input type="checkbox" value="12" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">A13													<input type="checkbox" value="13" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">A14													<input type="checkbox" value="14" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">A15													<input type="checkbox" value="15" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">A16													<input type="checkbox" value="16" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">A17													<input type="checkbox" value="17" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">A18													<input type="checkbox" value="18" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">A19													<input type="checkbox" value="19" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">A20													<input type="checkbox" value="20" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">A21													<input type="checkbox" value="21" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">A22													<input type="checkbox" value="22" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
								<br>												<label class="custom-checkbox-brm">B1													<input type="checkbox" value="23" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">B2													<input type="checkbox" value="24" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">B3													<input type="checkbox" value="25" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">B4													<input type="checkbox" value="26" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">B5													<input type="checkbox" value="27" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">B6													<input type="checkbox" value="28" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">B7													<input type="checkbox" value="29" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">B8													<input type="checkbox" value="30" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">B9													<input type="checkbox" value="31" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">B10													<input type="checkbox" value="32" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">B11													<input type="checkbox" value="33" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">B12													<input type="checkbox" value="34" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">B13													<input type="checkbox" value="35" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">B14													<input type="checkbox" value="36" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">B15													<input type="checkbox" value="37" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">B16													<input type="checkbox" value="38" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">B17													<input type="checkbox" value="39" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">B18													<input type="checkbox" value="40" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">B19													<input type="checkbox" value="41" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">B20													<input type="checkbox" value="42" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">B21													<input type="checkbox" value="43" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">B22													<input type="checkbox" value="44" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
								<br>												<label class="custom-checkbox-brm">C1													<input type="checkbox" value="66" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">C2													<input type="checkbox" value="67" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">C3													<input type="checkbox" value="68" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">C4													<input type="checkbox" value="69" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
																				<label class="custom-checkbox-brm">C5													<input type="checkbox" value="70" name="seat[]">
													<span class="checkmark-brm"></span>
												</label>
								<br>
								<!-- <div class="form-check form-check-inline">
											<input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
											<label class="form-check-label" for="inlineCheckbox2"><? //= $value['nomorSeat']; 
																									?></label>
										</div> -->
															</div>

    <br><br>
    
</div>

<!-- <div class="container-fluid">
    <center><img src="DesignUI_ViewETicket3_edit.jpg"></center>
</div> -->

<br>
<div class="container">
    <div class="row">
        <div class="col-lg-2">
            <a href= "<?php echo site_url(); ?>Jadwal_Tayang"><button class="btn btn-danger">Back</button></a>
        </div>
        <div class="col-lg-2">
            <h5>Avengers : Endgame</h5>
            <h6>Regular</h6>
            <h6>Category : ACTION</h6>
        </div>
        <div class="col-lg-2">
            <h6>Cinema : Ciwalk XXI</h6>
            <h6>Date : Wednesday, 01 May 2019</h6>
            <h6>Time : 11:00</h6>
            <h6>Audi : #1</h6>
        </div>
        <div class="col-lg-2">
            <h6>Seats : 2</h6>
            <h6>Seats No : A12, A13</h6>
        </div>
        <div class="col-lg-2">
            <h6>Total: Rp 100.000</h6>
        </div>
        <div class="col-lg-2">
            <a href="<?php echo site_url(); ?>Pembayaran"></a><button class="btn btn-danger">Next</button></a>
        </div>
    </div>
      
</div>
</body>
</html>


