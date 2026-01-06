<?php
require_once ("../../ressources/includes/connexion-bdd.php");

$page_courante = "articles";

$formulaire_soumis = !empty($_POST);

if ($formulaire_soumis) {
    if (
        isset(
            $_POST["auteur_id"],
            $_POST["titre"],
            $_POST["chapo"],
            $_POST["contenu"],
            $_POST["image"],
            $_POST["date_creation"],
            $_POST["lien_yt"]
        )
    ) {
        $titre = htmlentities($_POST["titre"]);
        $chapo = htmlentities($_POST["chapo"]);
        $contenu = htmlentities($_POST["contenu"] ?? '');
        $image = htmlentities($_POST["image"] ?? '');
        $date = htmlentities($_POST["date_creation"] ?? '');
        $auteur = htmlentities($_POST["auteur_id"] ?? '');
        $video = htmlentities($_POST["lien_yt"] ?? '');

        $requete_brute = "
        INSERT INTO article(auteur_id, titre, chapo, contenu, image, date_creation, lien_yt)  
        VALUES ('$auteur', '$titre', '$chapo', '$contenu', '$image', '$date', '$video')
        ";

        $resultat_brut = mysqli_query($mysqli_link, $requete_brute);

        if ($resultat_brut === true) {
$pageRedirection = $_SERVER['HTTP_REFERER'];
header("Location: $pageRedirection");
$racineURL = pathinfo($_SERVER['REQUEST_URI']);
$pageRedirection = $racineURL['dirname'];
header("Location: $pageRedirection");
            // Tout s'est bien passé
        } else {
            // Il y a eu un problème
        }
    }
}
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <?php require_once('../ressources/includes/head.php'); ?>

    <title>Creation articles - Administration</title>
</head>

<body>
    <?php require_once('../ressources/includes/menu-principal.php'); ?>
    <header class="bg-white shadow">
        <div class="mx-auto max-w-7xl py-3 px-4">
            <p class="text-3xl font-bold text-gray-900">Créer</p>
        </div>
    </header>

    <main>
        <div class="mx-auto max-w-7xl py-6 px-4">
            <div class="py-6">
<form method="POST" action="" class="rounded-lg bg-white p-4 shadow border-gray-300 border-1">
                    <section class="grid gap-6">
                        <div class="col-span-12">
                            <label for="titre" class="block text-lg font-medium text-gray-700">Titre</label>
                            <input type="text" name="titre"  id="titre" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus-within:border-indigo-500 focus-within:ring-indigo-500" id="prenom">
                        </div>
 
                        <div class="col-span-12">
                            <label for="chapo" class="block text-lg font-medium text-gray-700">Chapô</label>
                            <textarea type="text" name="chapo" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus-within:border-indigo-500 focus-within:ring-indigo-500" id="chapo"></textarea>
                        </div>
 
                        <div class="col-span-12">
                            <label for="contenu" class="block text-lg font-medium text-gray-700">Contenu</label>
                            <textarea name="contenu" id="contenu" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm"></textarea>
                        </div>
                        
                        <div class="col-span-12">
                            <label for="image" class="block text-lg font-medium text-gray-700">Image</label>
                            <input type="url" name="image" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus-within:border-indigo-500 focus-within:ring-indigo-500" id="image">
                            <p class="text-sm text-gray-500">
                                Mettre l'URL de l'image (chemin absolu)
                            </p>
                        </div>
 
                        <div class="col-span-12">
                            <label for="date" class="block text-lg font-medium text-gray-700">Date de création</label>
                            <input type="datetime-local" name="date_creation"  id="date" value="<?php echo isset($entite['date_creation']) ? date('Y-m-d\TH:i:s', strtotime($entite['date_creation'])) : ''; ?>" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus-within:border-indigo-500 focus-within:ring-indigo-500">
                        </div>
 
                        <div class="col-span-12">
                            <label for="auteur" class="block text-lg font-medium text-gray-700">Auteur</label>
                            <select name="auteur_id" id="auteur" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm"><?php $result_auteurs = mysqli_query($mysqli_link, "SELECT id, nom FROM auteur");
                            while ($auteur = mysqli_fetch_assoc($result_auteurs)) {
                            $selected = ($auteur['id'] == ($entite['auteur_id'] ?? '')) ? 'selected' : '';
                            echo "<option value='{$auteur['id']}' $selected>{$auteur['nom']}</option>";} ?>
                            </select>
                        </div>
 
                        <div class="col-span-12">
                            <label for="lien_yt" class="block text-lg font-medium text-gray-700">Video</label>
                            <input type="url" name="lien_yt" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus-within:border-indigo-500 focus-within:ring-indigo-500" id="lien_yt">
                            <p class="text-sm text-gray-500">
                                Mettre l'URL de la video (chemin absolu)
                            </p>
                        </div>
 
                        <div class="mb-3 col-md-6">
                            <button type="submit" class="rounded-md bg-indigo-600 py-2 px-4 text-lg font-medium text-white shadow-sm hover:bg-indigo-700 focus-within:bg-indigo-700">Créer</button>
                        </div>
                    </section>
                </form>
            </div>
        </div>
    </main>
    <?php require_once("../ressources/includes/global-footer.php"); ?>
</body>
</html>
