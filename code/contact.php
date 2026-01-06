<?php
$couleur_bulle_classe = "jaune";
$page_active = "contact";

$formulaire_a_erreurs = false;
$formulaire_soumis = !empty($_POST);

require_once('./ressources/includes/connexion-bdd.php');

if ($formulaire_soumis) {
    $erreurs_champs = [];

    // Vérification de chaque champ
    if (empty($_POST["prenom"])) {
        $erreurs_champs["prenom"] = "Veuillez renseigner votre prénom.";
    }

    if (empty($_POST["nom"])) {
        $erreurs_champs["nom"] = "Veuillez renseigner votre nom.";
    }

    if (empty($_POST["email"])) {
        $erreurs_champs["email"] = "Veuillez renseigner votre adresse e-mail.";
    }elseif (!filter_var($_POST["email"], FILTER_VALIDATE_EMAIL)) {
    $erreurs_champs["email"] = "L'adresse e-mail n'est pas valide.";
}
    if (empty($_POST["message"])) {
        $erreurs_champs["message"] = "Veuillez écrire un message.";
    }

    if (empty($_POST["je_suis"])) {
        $erreurs_champs["je_suis"] = "Veuillez sélectionner une option.";
    }
}

    if (empty($erreurs_champs)) {
        // Aucun champ n'est vide, on peut continuer

$nom = htmlentities($_POST["nom"] ?? '');
$prenom = htmlentities($_POST["prenom"] ?? '');
$message = htmlentities($_POST["message"] ?? '');
$email = htmlentities($_POST["email"] ?? '');
$type = htmlentities($_POST["je_suis"] ?? '');
        $date = new DateTimeImmutable();
        $date_formatte = $date->format('Y-m-d H:i:s');

        $requete_brute = "
            INSERT INTO message(nom, prenom, contenu, email, type, date_creation)
            VALUES ('$nom', '$prenom', '$message', '$email', '$type', '$date_formatte')
        ";

        $resultat_brut = mysqli_query($mysqli_link, $requete_brute);

        if ($resultat_brut === false) {
            $formulaire_a_erreurs = true;
        }
    } else {
        // Il y a au moins une erreur
        $formulaire_a_erreurs = true;
    }
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <base href="/<?php echo $_ENV['CHEMIN_BASE']; ?>">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact - SAÉ 203</title>

    <link rel="stylesheet" href="./ressources/css/ne-pas-modifier/reset.css">
    <link rel="stylesheet" href="./ressources/css/ne-pas-modifier/fonts.css">
    <link rel="stylesheet" href="./ressources/css/ne-pas-modifier/global.css">
    <link rel="stylesheet" href="./ressources/css/ne-pas-modifier/header.css">

    <link rel="stylesheet" href="./ressources/css/contact.css">
    <link rel="icon" type="image/png" href="./ressources/images/logo-mmi.png">
</head>

<body>
    <?php require_once('./ressources/includes/top-navigation.php'); ?>
    <?php
    if ($formulaire_soumis && !$formulaire_a_erreurs) {
        echo "
            <section class='banniere-alerte succes' role='alert' aria-live='polite'>
                <p>Message envoyé !</p>
            </section>
        ";
    }
    if ($formulaire_soumis && $formulaire_a_erreurs) {
        echo "
            <section class='banniere-alerte erreur' role='alert' aria-live='polite'>
                <p>Votre message possède une erreur !</p>
            </section>
        ";
    }
    ?>
    <?php require_once('./ressources/includes/bulle.php'); ?>

    <main class="conteneur-principal conteneur-1280">
        <h1 class="titre">Plus d'infos sur la formation ? <br /> Contactez-nous !</h1>

        <section>
            <p class="paragraphe">
                <span class="texte-gras">La formation s'ouvre à tous les bacheliers.</span> Avoir des connaissances en programmation, design ou encore audiovisuel n'est pas obligatoire mais reste un bon atout, car il faut aimer la curiosité dans cette formation pluridisciplinaire. <span class="texte-gras">Il est également possible de faire la formation après une reprise d'études ou une réorientation.</span>
            </p>
        </section>

        <p class="titre">Nous contacter en ligne</p>
        <form action="" method="POST" class="formulaire-contact">
                            <p><span class="erreur-champ">* Champs obligatoires</span></p><br>

            <article class="champ-conteneur">
                <label for="prenom" class="label-champ texte-gras">Prénom</label><span class="erreur-champ">*</span>
                <input type="text" class="champ" name="prenom" id="prenom" value="<?php echo $formulaire_a_erreurs ? htmlspecialchars($_POST["prenom"] ?? '') : ''; ?>">
                <?php if (!empty($erreurs_champs["prenom"])): ?>
                    <p class="erreur-champ"><?php echo $erreurs_champs["prenom"]; ?></p>
                    <?php endif; ?>
            </article>

            <article class="champ-conteneur">
                <label for="nom" class="label-champ texte-gras">Nom</label><span class="erreur-champ">*</span>
                <input type="text" class="champ" name="nom" id="nom" value="<?php echo $formulaire_a_erreurs ? htmlspecialchars($_POST["nom"] ?? '') : ''; ?>">
                <?php if (!empty($erreurs_champs["nom"])): ?>
                    <p class="erreur-champ"><?php echo $erreurs_champs["nom"]; ?></p>
                    <?php endif; ?>
            </article>

            <article class="champ-conteneur">
                <label for="email" class="label-champ texte-gras">E-mail</label><span class="erreur-champ">*</span>
                <input type="text" class="champ" name="email" id="email" value="<?php echo $formulaire_a_erreurs ? htmlspecialchars($_POST["email"] ?? '') : ''; ?>">
                <?php if (!empty($erreurs_champs["email"])): ?>
                    <p class="erreur-champ"><?php echo $erreurs_champs["email"]; ?></p>
                    <?php endif; ?>
            </article>
            

            <article class="champ-conteneur">
                <label for="message" class="label-champ texte-gras">Message</label><span class="erreur-champ">*</span>
                <textarea name="message" id="message" cols="30" rows="10" class="champ"><?php echo $formulaire_a_erreurs ? htmlspecialchars($_POST["message"] ?? '') : ''; ?></textarea>
                <?php if (!empty($erreurs_champs["message"])): ?>
                    <p class="erreur-champ"><?php echo $erreurs_champs["message"]; ?></p>
                    <?php endif; ?>
            </article>

            <article class="champ-conteneur">
                <p class="label-champ texte-gras">Je suis</p>
                <ul class="liste-choix">
                    <li class="choix">
                        <input type="radio" name="je_suis" id="pas_precise" value="pas_precise">
                        <label for="pas_precise">Je ne souhaite pas le préciser</label>
                    </li>
                    <li class="choix">
                        <input type="radio" name="je_suis" id="etudiant" value="etudiant">
                        <label for="etudiant">Étudiant / Étudiante</label>
                    </li>
                    <li class="choix">
                        <input type="radio" name="je_suis" id="parent" value="parent">
                        <label for="parent">Parent</label>
                    </li>
                    <li class="choix">
                        <input type="radio" name="je_suis" id="autre" value="autre">
                        <label for="autre">Autre</label>
                    </li>
                </ul>
            </article>
            <article class="champ-conteneur">
                <button type="submit" class="btn-envoi texte-gras">
                    ENVOYER
                </button>
            </article>
        </form>

        <p class="titre">Nous contacter par courrier</p>
        <p class="paragraphe">
            IUT de Cergy-Pontoise,<br>
            Département Métiers du Multimédia et de l’Internet (MMI) <br>
            34 Bis Boulevard Henri Bergson <br>
            95200 Sarcelles
        </p>
    </main>
    <?php require_once('./ressources/includes/footer.php'); ?>
</body>

</html>
