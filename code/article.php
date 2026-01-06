<?php
$couleur_bulle_classe = "rose";
$page_active = "index";
 
require_once('./ressources/includes/connexion-bdd.php');
 
// Code à améliorer
$id = isset($_GET['id']) ? intval($_GET['id']) : 0;
$requete_brute = "
    SELECT article.*, auteur.prenom, auteur.nom
    FROM article
    JOIN auteur ON article.auteur_id = auteur.id
    WHERE article.id = $id
";
$resultat_brut = mysqli_query($mysqli_link, $requete_brute);
$entite = mysqli_fetch_array($resultat_brut);
?>
<!DOCTYPE html>
<html lang="fr">
 
<head>
    <base href="/<?php echo $_ENV['CHEMIN_BASE']; ?>">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Article - SAÉ 203</title>
 
    <link rel="stylesheet" href="./ressources/css/ne-pas-modifier/reset.css">
    <link rel="stylesheet" href="./ressources/css/ne-pas-modifier/fonts.css">
    <link rel="stylesheet" href="./ressources/css/ne-pas-modifier/global.css">
    <link rel="stylesheet" href="./ressources/css/ne-pas-modifier/header.css">
    <link rel="stylesheet" href="./ressources/css/ne-pas-modifier/accueil.css">
 
    <link rel="stylesheet" href="./ressources/css/article.css">
    <link rel="icon" type="image/png" href="./ressources/images/logo-mmi.png">
 
    <!-- A supprimer -->
    <style>
        .no-design {
            padding: 0.5rem 1rem;
            background-color: lightgray;
            border: 1px solid gray;
            border-radius: 0.25rem;
            text-align: center;
        }
    </style>
</head>
 
<body>
    <?php require_once('./ressources/includes/top-navigation.php'); ?>
    <?php
        // A supprimer si vous n'en avez pas besoin.
        // Mettre une couleur dédiée pour cette bulle, si vous gardez la bulle
        require_once('./ressources/includes/bulle.php');
    ?>
 
    <!-- Vous allez principalement écrire votre code HTML ci-dessous -->
    <main class="conteneur-principal conteneur-1280">

        <h1 class="titre"><?php echo $entite["titre"]; ?></h1>

    <!-- Auteur et Date -->
        <p class="auteur"> Rédigé par : <?php echo htmlspecialchars($entite["prenom"] . " " . $entite["nom"]); ?></p>
        <p class="date-publication"> Publié le :<?php $date = new DateTime($entite["date_creation"]); echo $date->format("d/m/Y à H:i");?></p>

    <!-- Image -->
        <?php $image = !empty($entite["image"]) ? $entite["image"] : 'ressources/images/image-article.png';?>
        <img src="<?php echo htmlspecialchars($image); ?>" alt="Image de l’article" style="max-width: 100%; height: auto; margin-bottom: 1rem;">

    <!-- Chapo -->
       <p class="chapo"><?php echo nl2br(htmlspecialchars($entite["chapo"])); ?></p>
 
    <!-- Contenu -->
        <article class="contenu-article"> <?php echo nl2br($entite["contenu"]); ?></article>
 

 
    </main>
    <?php require_once('./ressources/includes/footer.php'); ?>
</body>
 
</html>