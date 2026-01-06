<?php
    if (!is_null($mysqli_link)) {
        mysqli_close($mysqli_link);
    }
?>
<footer class="border-y border-gray-400 text-center mx-6 py-2 mb-1">
    <p class="font-bold">SAÉ 203 - Concevoir un site web avec une source de données</p>
    <p class="font-bold">MMI <?php echo (date("Y") - 1) . "-" . (date("Y") + 2); ?></p>
    <p>Projet réalisé par :</p>
    <ul class="inline-flex">
        <li class="px-1">Hakan GUNDUZ</li>
        <li class="px-1">Sarah IMMEL</li>
        <li class="px-1">Shadelya LUKAU LOLA</li>
        <li class="px-1">Yosra MESBAH</li>
        <li class="px-1">Asnati MOHAMED</li>
        <li class="px-1">Raliya MOHAMED OUSMAN</li>
    </ul>
</footer>
