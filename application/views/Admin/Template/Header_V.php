<!DOCTYPE html>
<html lang="en">
    <head>
        <title>BIOSKOP XXI</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

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
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                <a class="navbar-brand" href="<?php echo site_url(); ?>Beranda">Admin Bioskop XXI</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active nav-item"><a class="nav-link" href="<?php echo site_url(); ?>Laporan">Laporan</a></li>
                    <li class="nav-item"><a class="nav-link" href="<?php echo site_url(); ?>Menu">Menu</a></li>
                    <li class="nav-item"><a class="nav-link" href="<?php echo site_url(); ?>VerifikasiTopUp">Verifikasi Top-Up</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> Admin Kelompok 4</a></li>
                </ul>
            </div>
        </nav>
        <br><br><br><br>