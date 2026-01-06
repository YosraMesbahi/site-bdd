<?php
require_once('../../ressources/includes/connexion-bdd.php');

$page_courante = "articles";

$formulaire_soumis = !empty($_POST);
$id_present_url = array_key_exists("id", $_GET);

$entite = null;
if ($id_present_url) {
    $id = $_GET["id"];
    // On cherche l'article à éditer
    $requete_brute = "SELECT * FROM article WHERE id = $id";
    $resultat_brut = mysqli_query($mysqli_link, $requete_brute);
    $entite = mysqli_fetch_array($resultat_brut, MYSQLI_ASSOC);
}

if ($formulaire_soumis) {
    $id = $_POST["id"];
    $titre = htmlentities($_POST["titre"]);
    $chapo = htmlentities($_POST["chapo"]);
    $contenu = htmlentities($_POST["contenu"] ?? '');
    $image = htmlentities($_POST["image"] ?? '');
    $date = htmlentities($_POST["date_creation"] ?? '');
    $auteur = htmlentities($_POST["auteur_id"] ?? '');
    $video = htmlentities($_POST["lien_yt"] ?? '');

    // On crée notre requête pour éditer une entité
    $requete_brute = "
        UPDATE article
        SET
            titre = '$titre',
            chapo = '$chapo',
            contenu= '$contenu',
            image = '$image', 
            date_creation = '$date',
            auteur_id = '$auteur',
            lien_yt = '$video'
        WHERE id = '$id'
    ";
    // On met à jour l'élément
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
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <?php include_once("../ressources/includes/head.php"); ?>

    <title>Éditer articles - Administration</title>
</head>

<body>
<?php include_once '../ressources/includes/menu-principal.php'; ?>
    <header style="view-transition-name: article-<?php echo $id; ?>" class="bg-white shadow">
        <div class="mx-auto max-w-7xl py-3 px-4">
            <p class="text-3xl font-bold text-gray-900">Éditer "<?php echo $entite['titre']; ?>"</p>
        </div>
    </header>
    <main>
        <div class="mx-auto max-w-7xl py-6 px-4">
            <div class="py-6">
                
                <form method="POST" action="" class="rounded-lg bg-white p-4 shadow border-gray-300 border-1">
                    <section class="grid gap-6">
                        <input type="hidden" value="<?php echo $entite['id']; ?>" name="id">

                        <div class="col-span-12">
                            <label for="titre" class="block text-lg font-medium text-gray-700">Titre</label>
                            <input type="text" name="titre"  value="<?php echo $entite['titre']; ?>"  id="titre" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus-within:border-indigo-500 focus-within:ring-indigo-500">
                        </div>

                        <div class="col-span-12">
                            <label for="chapo" class="block text-lg font-medium text-gray-700">Chapô</label>
                            <textarea type="text" name="chapo" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus-within:border-indigo-500 focus-within:ring-indigo-500" id="chapo"><?php echo $entite['chapo']; ?></textarea>
                        </div>

                        <div class="col-span-12">
                            <label for="contenu" class="block text-lg font-medium text-gray-700">Contenu</label>
                            <textarea name="contenu" id="contenu" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm"><?php echo $entite['contenu']; ?></textarea>
                        </div>

                        <div class="col-span-12">
                            <label for="image" class="block text-lg font-medium text-gray-700">Image</label>
                            <input type="url" value="<?php echo $entite['image']; ?>" name="image" class="block w-full rounded-md border-gray-300 shadow-sm focus-within:border-indigo-500 focus-within:ring-indigo-500" id="image">
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
    <select name="auteur_id" id="auteur" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm">
        <?php
        $result_auteurs = mysqli_query($mysqli_link, "SELECT id, nom FROM auteur");
        while ($auteur = mysqli_fetch_assoc($result_auteurs)) {
            $selected = ($auteur['id'] == ($entite['auteur_id'] ?? '')) ? 'selected' : '';
            echo "<option value='{$auteur['id']}' $selected>{$auteur['nom']}</option>";
        }
        ?>
    </select>
</div>
                        <div class="col-span-12">
                            <label for="video" class="block text-lg font-medium text-gray-700">Video</label>
                            <input type="url" value="<?php echo $entite['lien_yt'] ?? ''; ?>" name="lien_yt" class="block w-full rounded-md border-gray-300 shadow-sm focus-within:border-indigo-500 focus-within:ring-indigo-500" id="video">
                                <p class="text-sm text-gray-500">
                                    Mettre l'URL de la video (chemin absolu)
                                </p>
                        </div>

                        <div class="mb-3 col-md-6">
                            <button type="submit" class="rounded-md bg-indigo-600 py-2 px-4 text-lg font-medium text-white shadow-sm hover:bg-indigo-700 focus-within:bg-indigo-700">Éditer</button>
                        </div>
                    </section>
                </form>
            </div>
        </div>
    </main>
    <?php require_once("../ressources/includes/global-footer.php"); ?>
</body>

</html>
