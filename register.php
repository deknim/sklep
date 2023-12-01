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
        <div id="mainpomoc">
            <h2>Załóż konto</h2>

            <form action="" method="post">
                <label for="username">Login:</label>
                <input type="text" name="username" required><br>

                <label for="email">Email:</label>
                <input type="email" name="email" required><br>

                <label for="password">Hasło:</label>
                <input type="password" name="password" required><br>

                <input type="submit" value="Zarejestruj">
            </form>

                        <?php
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "rejestracja";

            $conn = new mysqli($servername, $username, $password, $dbname);

            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            if ($_SERVER["REQUEST_METHOD"] == "POST"){
                $username = $_POST['username'];
                $email = $_POST['email'];
                $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
            

            $sql = "INSERT INTO uzytkownicy (username, email, password) VALUES ('$username', '$email', '$password')";

            if ($conn->query($sql) === TRUE) {
                echo "Rejestracja przebiegła pomyślnie";
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
            }

            $conn->close();
            ?>
        </div>
    </main>
    <footer>
    </footer>
</body>
</html>