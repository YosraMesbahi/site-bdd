<?php
require_once '../../ressources/includes/connexion-bdd.php';

if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $id_auteur = intval($_GET['id']);

    $requete_suppression = "DELETE FROM auteur WHERE id = $id_auteur LIMIT 1";
    $resultat = mysqli_query($mysqli_link, $requete_suppression);

    if ($resultat) {
        header("Location: index.php"); // redirige vers la liste après suppression
        exit;
    } else {
        echo "Erreur lors de la suppression.";
    }
} else {
    echo "ID invalide.";
}
?>