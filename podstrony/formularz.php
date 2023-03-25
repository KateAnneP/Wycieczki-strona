<!DOCTYPE htmL>
<html>
	<head>
		<meta charset="UTF-8">
        <meta http-equiv = "x-ua-compatible" content = "ie = edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>EuropeTour</title>
		<link rel="stylesheet" type="text/css" href="../css/style.css">
        <link rel="stylesheet" href="../css/foundation.css">
        <link rel="stylesheet" href="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
        
        
	</head>
	<body>
		<div class="container">

			<div class="row">
                <div class = "title-bar" data-responsive-toggle = "top_bar" data-hide-for = "medium">
                    <button class = "menu-icon" type = "button" data-toggle></button>
                    <div class = "title-bar-title">Menu</div>
                </div>
                <div class="top-bar" id="top_bar" >
                    <div class="top-bar-left logo">
                       <img src="../img/logo.png" />
                    </div>
                    <div class="top-bar-right">
                        <ul class="menu">
                          <li><a href="../index.html" class="linki2">STRONA GŁÓWNA</a></li>
                                <li><a href="wycieczki.php" class="linki2">WYCIECZKI</a></li>
                                <li><a href="kontakt.html" class="linki2">KONTAKT</a></li>
                                <li><a href="pomoc.html" class="linki2">POMOC</a></li>
                        </ul>
                    </div>
				</div>
            </div>
            
            <div class="row column text-center" style="background-image: url(../img/baner.JPG); margin-bottom: 20px; margin-top: 20px;">
                <hr />
                <h2>EuropeTours</h2>
                <h3>Podróżuj z nami po Europie!</h3>
                <hr />
            </div>
                
            <div class="row small-up-1 large-up-1 main">
				<div class="column">

<?php

    $imie = $_POST['imie'];
    $nazwisko = $_POST['nazwisko'];
    $ulica = $_POST['ulica'];
    $nr_domu = $_POST['nr_domu'];
    $mieszkanie = $_POST['mieszkanie'];
    $kod_pocz1 = $_POST['kod_pocz1'];
    $kod_pocz2 = $_POST['kod_pocz2'];
    $miejscowosc = $_POST['miejscowosc'];
    $telefon = $_POST['telefon'];
    $mail = $_POST['mail'];
    $uwagi = $_POST['uwagi'];
                    
    if($mieszkanie == "mieszkanie")
    {
        $nr_mieszkania = $_POST['nr_mieszkania'];
    }
    else {
        $nr_mieszkania = "-";
    }
                    

    $imie_nazwisko = $imie." ".$nazwisko;
    $ulica_mieszkanie = $ulica." ".$nr_domu."/".$nr_mieszkania;
    $miejscowosc = $kod_pocz1."-".$kod_pocz2.", ".$miejscowosc;

    $servername = "localhost";
    $username = "root";
    $password = '';
    $dbname = "biuro_podrozy";

    $con = mysqli_connect($servername, $username, $password, $dbname);

	    if(!$con)
	    {
	        die("Blad polaczenia z baza danych " . mysqli_connect_error());
	    }

	    $sql = "INSERT INTO rezerwacje(imie_nazwisko, ulica_mieszkanie, miejscowosc, nr_tel, mail, uwagi) VALUES ('".$imie_nazwisko."','".$ulica_mieszkanie."','".$miejscowosc."','".$telefon."','".$mail."','".$uwagi."')";

	    if(mysqli_query($con, $sql))
	    {
	        echo '<h3>Dodano rezerwację!</h3>';
            echo '<h5>Podane dane: </h5>';
            echo '<p>Imię i nazwisko: '.$imie_nazwisko.'</p>';
            echo '<p>Adres: '.$ulica_mieszkanie.','.$miejscowosc.'</p>';
            echo '<p>Adres e-mail: '.$mail.'</p>';
            echo '<p>Telefon: '.$telefon.'</p>';
	        echo '<h5>Powrót do katalogu wycieczek <a href="wycieczki.php">tutaj</a></h5>';
	    }
	    else
	    {
	        echo "Błąd dodawania danych do bazy!!!";
	    }

	    mysqli_close($con);

?>
                    
</div>
			</div>

			<div class="row small-up-1 large-up-2 stopka text-center">
                <div class="column">
                    <p>Biuro podróży <b>,,EuropeTours"</b></p>
                    <p>ul. Barcelońska 13/43</p>
                    <p>34-567 Wiedeń</p>
                </div>
                <div class="column">
                    <img src="../img/yt_icon.png">
                    <img src="../img/tw_icon.png">
                    <img src="../img/fb_icon.png">
                </div>

			</div>

                

        </div>

        
        <!-- Compressed JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.0.1/js/vendor/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/foundation-sites@6.5.1/dist/js/foundation.min.js" integrity="sha256-WUKHnLrIrx8dew//IpSEmPN/NT3DGAEmIePQYIEJLLs= sha384-53StQWuVbn6figscdDC3xV00aYCPEz3srBdV/QGSXw3f19og3Tq2wTRe0vJqRTEO sha512-X9O+2f1ty1rzBJOC8AXBnuNUdyJg0m8xMKmbt9I3Vu/UOWmSg5zG+dtnje4wAZrKtkopz/PEDClHZ1LXx5IeOw==" crossorigin="anonymous"></script>
        <script>
            $(document).ready(function() {
            $(document).foundation();
            })
            
        </script>

	</body>
</html>


