<?php
$couleur_bulle_classe = "gris";
$page_active = "equipe";

require_once('./ressources/includes/connexion-bdd.php');

// Vos requêtes SQL
$requete_brute = "SELECT * FROM auteur";
$resultat_brut = mysqli_query($mysqli_link, $requete_brute);

?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <base href="/<?php echo $_ENV['CHEMIN_BASE']; ?>">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Équipe de rédaction - SAÉ 203</title>

    <link rel="stylesheet" href="./ressources/css/ne-pas-modifier/reset.css">
    <link rel="stylesheet" href="./ressources/css/ne-pas-modifier/fonts.css">
    <link rel="stylesheet" href="./ressources/css/ne-pas-modifier/global.css">
    <link rel="stylesheet" href="./ressources/css/ne-pas-modifier/header.css">
    <link rel="stylesheet" href="./ressources/css/ne-pas-modifier/accueil.css">

    <link rel="stylesheet" href="./ressources/css/equipe-de-redaction.css">
    <link rel="icon" type="image/png" href="./ressources/images/logo-mmi.png">
</head>

<body>
    <?php require_once('./ressources/includes/top-navigation.php'); ?>
    <?php require_once('./ressources/includes/bulle.php'); ?>

    <main class="conteneur-principal conteneur-1280">
        <h1 class="titre-principal">Équipe de rédaction</h1>
        <div class="liste-auteurs">
            <?php while ($auteur = mysqli_fetch_assoc($resultat_brut)) : ?>
                <div class="carte-auteur">
                    <img src="<?php echo $auteur['lien_avatar']; ?>" alt="Avatar de <?php echo $auteur['prenom'] . ' ' . $auteur['nom']; ?>" class="avatar" width="100" height="100">
                    <h2><?php echo $auteur['prenom'] . ' ' . $auteur['nom']; ?></h2>
                    <?php if (!empty($auteur['lien_twitter'])) : ?>
                        <p><a href="<?php echo $auteur['lien_twitter']; ?>" target="_blank">Twitter</a></p>
                    <?php endif; ?>
                </div>
            <?php endwhile; ?>
        </div>
    </main>

    <?php require_once('./ressources/includes/footer.php'); ?>
</body>

</html>

