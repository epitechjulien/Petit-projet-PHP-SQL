<?php
    $pdo = new PDO("mysql:host=localhost;dbname=wf3_php_intermediaire_julien", "root", "", [PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING, PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"]);
    // var_dump($pdo); // Si cette ligne ne sort pas d'erreur, c'est que la connexion est établi avec succès.

    if($_POST)
    {
        $pdo->exec("INSERT INTO advert (title, description, postal_code, city, type, price) VALUES ('$_POST[titre]', '$_POST[description]', '$_POST[codepostal]', '$_POST[ville]', '$_POST[type]', '$_POST[prix]')");
    }
?>


<!doctype html>
<html lang="FR">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Création annonce</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    </head>

    <body>

        <header>
            <?php
                require("header.php");
            ?>
        </header>

        <h1>Créez votre annonce ci-dessous</h1>


        <form action="" method="post">

            <label for="titre">Titre de l'annonce</label>
            <input type="text" name="titre">
            <br>

            <label for="description">Description de l'annonce</label>
            <input type="text" name="description">
            <br>    

            <label for="codepostal">Code postal</label>
            <input type="text" name="codepostal">
            <br>

            <label for="ville">Ville du bien immobilier</label>
            <input type="text" name="ville">
            <br>

            <label for="type">Type d’annonce (location ou vente)</label>
            <select id="type" name="type">
                <option value="location">Location</option>
                <option value="vente">Vente</option>
            </select>
            <br>

            <label for="prix">Prix du bien immobilier</label>
            <input type="number" name="prix">
            <br>

            <input type="submit" value="envoyer">
        </form>



    </body>
</html>
