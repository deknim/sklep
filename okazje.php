<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TechnoHub</title>
    <link rel="stylesheet" href="stylarty.css">
    <link rel="icon" type="image/png" href="logo.png"/>
</head>
<body>
    <header>
        <div id="t1"></div>
        <div id="t2">
            <div class="bok">
            </div>
            <div class="srodek">
                <a href="index.php" id="logo"><img class="ikona" src="logo.png" alt="logo"></a>
            </div>
            <div class="bok">
                <a href="pomoc.html" id="pomoc"><img class="ikona" src="pomoc.png" alt="pomoc"></a>
                <a href="konto.html" id="login"><img class="ikona" src="konto.png" alt="konto"></a>
            </div>
        </div>
        <div id="navbar">
            <ul>
                <li><a href="index.php" class="navbarref">Strona główna</a></li>
                <li><a href="podzespoly.php" class="navbarref">Podzespoły komputerowe</a></li>
                <li><a href="peryferia.php" class="navbarref">Urządzenia peryferyjne</a></li>
                <li><a href="akcesoria.php" class="navbarref">Akcesoria</a></li>
            </ul>
        </div>
    </header>
    <main>
        <div id="arty">
            <?php
            $polaczenie = mysqli_connect('localhost', 'root', '', 'sklepinformatyczny');
            $zapytanie1 = "SELECT nazwa, cena, zdjecie FROM okazje";
            $wynik = mysqli_query($polaczenie, $zapytanie1);
            while($wiersz1 = mysqli_fetch_array($wynik)){
                echo "<div class='art'>
                    <img src='$wiersz1[2]' alt=''>
                    <h5>$wiersz1[0]</h5>
                    <p>cena: $wiersz1[1]zł</p>
                    </div>";
            }
        ?>
        </div>
    </main>
    <footer>
    </footer>
</body>
</html>