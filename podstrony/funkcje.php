<?php


function wczytaj_wycieczki()
{
    
$servername = "localhost";
$username = "root";
$password = '';
$dbname = "biuro_podrozy";
    
    $con = mysqli_connect($servername, $username, $password, $dbname);
    
    if(!$con)
    {
        die("Blad polaczenia z baza danych " . mysqli_connect_error());
    }

    $sql = "SELECT * FROM wycieczki ORDER BY id DESC";

    $result = mysqli_query($con, $sql);

    if(mysqli_num_rows($result) > 0)
    {
        while($row = mysqli_fetch_assoc($result))
        {
		  wyswietl_wycieczki($row);
        }
		        
    }
    else
    {
        echo "Brak danych!!!";
    }

    mysqli_close($con);
}

function wyswietl_wycieczki($row)
{
    $wiersz = "";
    $wiersz .= '<div class="wycieczka">';
    $wiersz .= '<img src="../img/'.$row['foto'].'" class="fot" />';
    $wiersz .= '<h2>Kierunek: '.$row['cel_podrozy'].'</h2>';
    $wiersz .= '<h3>Cena: '.$row['cena'].' zł</h3>';
    $wiersz .= '<p>Dni: '.$row['dni'].'</p>';
    $wiersz .= '<p>'.$row['opis'].'</p>';
    $wiersz .= '<p class="zarezerwuj"><button class="przycisk"><a href="formularz.html" class="linki" >Zarezerwuj</a></button></p>';
    $wiersz .= '</div>';
    echo $wiersz;
    
}


?>