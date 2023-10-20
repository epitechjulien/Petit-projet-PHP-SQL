<?php
    $pdo = new PDO("mysql:host=localhost;dbname=wf3_php_intermediaire_julien", "root", "", [PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING, PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"]);
    // var_dump($pdo); // Si cette ligne ne sort pas d'erreur, c'est que la connexion est établi avec succès.

    $resultat = $pdo->query("SELECT * from advert ORDER BY id DESC");
    $touteLesAnnonces = $resultat->fetchAll(PDO::FETCH_ASSOC);
    // print_r($touteLesAnnonces);
?>


<!doctype html>
<html lang="FR">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Toutes les annonces</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    </head>

    <body>


        <header>
            <?php
                require("header.php");
            ?>
        </header>

        <h1>Ici decouvez toutes les annonces</h1>


        <?php
            foreach($touteLesAnnonces as $annonceUnique)
                {
                    $titreMiniscule = $annonceUnique['title'];
                    $titremajuscule = strtoupper($titreMiniscule);

                    echo "<div class='card' style='width: 18rem;>";
                    echo "<div class='card-body'>";
                    echo "<h5 class='card-title'><span style='font-weight:bold'>Titre : </span>" . $titremajuscule . "</h5>";
                    echo "<h5 class='card-title'><span style='font-weight:bold'>Type : </span>" . $annonceUnique['type'] . "</h5>";
                    echo "<h5 class='card-title'><span style='font-weight:bold'>Localisation : </span>" . $annonceUnique['city'] . "(" . $annonceUnique['postal_code']. ")</h5>";
                    echo "<p class='card-text'><span style='font-weight:bold'>Prix : </span>" . $annonceUnique['price'] ." €</p>";
                    echo "<a href='#' class='btn btn-primary'>Consulter l'annonce</a></div></div>";
                }
        ?>

    </body>
</html>