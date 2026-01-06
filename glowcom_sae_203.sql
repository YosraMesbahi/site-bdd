-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql-glowcom.alwaysdata.net
-- Generation Time: Jun 14, 2025 at 01:53 PM
-- Server version: 10.11.13-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `glowcom_sae_203`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `auteur_id` int(11) DEFAULT NULL,
  `titre` varchar(255) NOT NULL,
  `chapo` longtext NOT NULL,
  `contenu` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `date_creation` datetime NOT NULL DEFAULT current_timestamp() COMMENT '(DC2Type:datetime_immutable)',
  `lien_yt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `auteur_id`, `titre`, `chapo`, `contenu`, `image`, `date_creation`, `lien_yt`) VALUES
(8, 8, 'BUT M&eacute;tiers du Multim&eacute;dia et de l&#039;Internet (MMI) - Vichy', 'Le/La titulaire du BUT MMI peut se d&eacute;finir comme un(e) sp&eacute;cialiste polyvalent(e) dans la mesure o&ugrave; ses comp&eacute;tences s&rsquo;appuient sur une solide culture du multim&eacute;dia et g&eacute;n&eacute;rale.', 'Pr&eacute;sentation\r\n\r\nLe d&eacute;partement M&eacute;tiers du Multim&eacute;dia et de l&rsquo;Internet forme des professionnels de la conception et de la r&eacute;alisation de produits et de services multim&eacute;dias.\r\nAvec l&rsquo;av&egrave;nement de nouvelles technologies et face aux nouvelles attentes de la soci&eacute;t&eacute;, de nombreux m&eacute;tiers et sous domaines du multim&eacute;dia sont apparus. Les besoins en outils de communication multi et pluri m&eacute;dia sont croissants. On peut d&rsquo;ailleurs les cat&eacute;goriser dans deux branches diff&eacute;rentes : les nouvelles technologies qui concernent l&rsquo;informatique (d&eacute;veloppement de sites internet, de serious game, gestion des r&eacute;seaux sociaux), et l&rsquo;audiovisuel. En d&eacute;coulent l&rsquo;art graphique qui se traduit par le graphisme (print ou web), la vid&eacute;o (prise de vue r&eacute;elle, effets sp&eacute;ciaux, animation, 3D, Sound &amp; Motion Design, &hellip;), et plus g&eacute;n&eacute;ralement tout ce qui concerne la communication num&eacute;rique.\r\n \r\nEnjeux\r\n\r\nNos &eacute;tudiant(e)s deviennent des sp&eacute;cialistes polyvalent(e)s dans la mesure o&ugrave; ses comp&eacute;tences de technicien(ne) s&rsquo;appuient sur une solide culture du multim&eacute;dia et g&eacute;n&eacute;rale avec de multiples comp&eacute;tences (informatique, communication, infographie, audiovisuel, &hellip;) leur permettant d&rsquo;intervenir &agrave; la fois dans la conception des contenus, dans la r&eacute;alisation des produits et services, dans la strat&eacute;gie de communication et de commercialisation ou leur implantation au sein d&rsquo;une organisation.', 'https://img.freepik.com/photos-premium/concepteur-graphique-editeur-creativite_53876-60406.jpg', '2020-11-07 09:55:00', ''),
(9, 7, 'BUT MMI : mati&egrave;res, d&eacute;bouch&eacute;s', 'Quels sont les d&eacute;bouch&eacute;s du BUT MMI (m&eacute;tiers du multim&eacute;dia et de l&rsquo;internet) ? Les mati&egrave;res &eacute;tudi&eacute;es ? Nous avons interview&eacute; Fathallah Daghmi, ma&icirc;tre de Conf&eacute;rences en Sciences de l&rsquo;information et de la communication &agrave; l&rsquo;Universit&eacute; de Poitiers.', 'Pouvez-vous pr&eacute;senter le BUT MMI ?\r\nLe BUT MMI est une formation universitaire qui fournit en trois ans toutes les comp&eacute;tences utiles &agrave; la mise en &oelig;uvre ou &agrave; l&rsquo;&eacute;volution d&rsquo;une strat&eacute;gie de communication num&eacute;rique. Le BUT MMI est un dipl&ocirc;me structur&eacute; en cinq blocs de comp&eacute;tences, dont trois blocs de comp&eacute;tences communs aux trois parcours.\r\n\r\nAu fur et &agrave; mesure de leur formation, les &eacute;tudiants pourront, gr&acirc;ce aux divers parcours, s&rsquo;orienter vers la strat&eacute;gie de communication, le d&eacute;veloppement web ou la communication num&eacute;rique. L&rsquo;&eacute;quipe p&eacute;dagogique du BUT MMI s&rsquo;attache &eacute;galement &agrave; proposer une dimension innovante permettant d&rsquo;anticiper les besoins du monde professionnel et ainsi de garantir l&rsquo;employabilit&eacute; des dipl&ocirc;m&eacute;s.\r\n\r\n \r\n\r\nQuel profil pour int&eacute;grer le BUT MMI (ex DUT MMI) ? \r\nNous souhaitons avoir des &eacute;tudiants ayant une grande ouverture d&rsquo;esprit. En effet, le BUT MMI (m&eacute;tiers du multim&eacute;dia et de l&rsquo;internet) est une formation pluridisciplinaire qui porte sur le num&eacute;rique, le d&eacute;veloppement web, la communication, l&rsquo;infographie&hellip; De ce fait nos &eacute;tudiants doivent avoir l&rsquo;envie de s&rsquo;ouvrir &agrave; une large diversit&eacute; de mati&egrave;res.', 'https://cdn.futura-sciences.com/sources/images/dossier/773/07-773.jpg', '2025-03-28 12:07:00', ''),
(10, 9, 'Que faire apr&egrave;s un DUT MMI (m&eacute;tiers multim&eacute;dia et Internet) ?', 'Parce qu&rsquo;aujourd&rsquo;hui, tout est digitalis&eacute;, num&eacute;ris&eacute; et qu&rsquo;Internet est entr&eacute; dans les m&oelig;urs, le secteur du multim&eacute;dia et d&rsquo;Internet ne s&rsquo;est certainement jamais mieux port&eacute;. ', 'Pourquoi pr&eacute;parer un DUT MMI m&eacute;tiers du multim&eacute;dia et de l&#039;Internet ?\r\nLe DUT MMI m&eacute;tiers du multim&eacute;dia et de l&#039;Internet est un dipl&ocirc;me national qui se pr&eacute;parait en 2 ans dans un institut universitaire de technologie (IUT). Depuis la rentr&eacute;e 2021, il est officiallement appel&eacute; bachelor universitaire de technologie (BUT). Le BUT MMI m&eacute;tiers du multim&eacute;dia et de l&#039;Internets&#039;adresse en priorit&eacute; :\r\naux titulaires d&#039;un bac g&eacute;n&eacute;ral (bac S de pr&eacute;f&eacute;rence) avec les enseignements de sp&eacute;cialit&eacute; &laquo; Math&eacute;matiques &raquo; et &laquo; Num&eacute;rique et sciences informatiques &raquo; ;\r\naux titulaires du bac technologique sciences et technologies de l&#039;industrie et du d&eacute;veloppement durable (bac STI2D, de pr&eacute;f&eacute;rence avec la sp&eacute;cialit&eacute; syst&egrave;mes d&#039;information et num&eacute;rique).\r\nLe BUT MMI conf&egrave;re le grade de licence. Il se pr&eacute;pare en 3 ans dans un IUT. Pendant les 3 ann&eacute;es d&#039;&eacute;tudes, les &eacute;l&egrave;ves vont acqu&eacute;rir des comp&eacute;tences techniques sp&eacute;cifiques aux domaines de l&#039;informatique, du Web et du multim&eacute;dia. Ces comp&eacute;tences incluent :\r\nla ma&icirc;trise de logiciels ;\r\nl&#039;apprentissage du langage Web (programmation) ;\r\nl&#039;&eacute;laboration d&#039;un plan de communication ;\r\nla r&eacute;alisation de supports de communication, notamment l&#039;infographie ;\r\nle d&eacute;veloppement d&#039;applications Web et mobiles ;\r\nla production audiovisuelle ;\r\nl&#039;&eacute;criture pour les m&eacute;dias num&eacute;riques.\r\nIl existe une trentaine d&#039;&eacute;tablissements en France qui proposent cette formation. C&#039;est notamment le cas de l&#039;IUT d&#039;Angoul&ecirc;me (Universit&eacute; de Poitiers), de l&#039;universit&eacute; Paris-Est Cr&eacute;teil (UPEC), de l&#039;IUT de l&#039;universit&eacute; Aix-Marseille, de l&#039;IUT de l&#039;universit&eacute; Haute-Alsace &agrave; Mulhouse.\r\nQuels sont les d&eacute;bouch&eacute;s du BUT MMI m&eacute;tiers du multim&eacute;dia et de l&#039;Internet ?\r\nQue faire apr&egrave;s un BUT MMI m&eacute;tiers du multim&eacute;dia et de l&#039;Internet ? Chercher du travail ou poursuivre vos &eacute;tudes. Si vous d&eacute;cidez d&#039;entrer sur le march&eacute; du travail, vous ciblerez en priorit&eacute; :\r\nles agences de communication ;\r\nles agences publicitaires ;\r\nles entreprises sp&eacute;cialis&eacute;es dans le webmarketing ;\r\nles soci&eacute;t&eacute;s qui proposent des services informatiques ;\r\nle service de communication des grandes entreprises.\r\nLes d&eacute;bouch&eacute;s de ce dipl&ocirc;me d&eacute;pendront surtout de votre sp&eacute;cialisation. En 1re ou en 2e ann&eacute;e, vous devrez choisir un des trois parcours suivants pour devenir experte ou expert dans un domaine pr&eacute;cis.', 'https://framerusercontent.com/images/n8ZinD2839c3jAHtvXelwgnD3E.jpeg', '2024-06-27 12:09:00', ''),
(12, 10, 'Que faire apr&egrave;s un BUT (ancien DUT) MMI ?', 'Le BUT (ancien DUT devenu BUT apr&egrave;s la r&eacute;forme de 2021) M&eacute;tiers du multim&eacute;dia et de l&rsquo;internet (MMI) est une formation courte post-bac universitaire en 3 ans qui se pr&eacute;pare au sein d&rsquo;un IUT (institut universitaire et technologique), tr&egrave;s souvent apr&egrave;s l&#039;obtention d&#039;un bac g&eacute;n&eacute;ral. ', 'Quelles sont les d&eacute;bouch&eacute;s du BUT multim&eacute;dia internet et communication ?\r\nSi vous avez obtenu votre BUT MMI, vous pouvez poursuivre vos &eacute;tudes en mast&egrave;res pour gagner en expertise et vous diriger vers des m&eacute;tiers, mieux r&eacute;mun&eacute;r&eacute;s avec plus de responsabilit&eacute;s qu&rsquo;avec un bac+3.  A Digital Campus, vous aurez le choix entre plusieurs mast&egrave;res :\r\n\r\nMast&egrave;re Data Marketing,\r\nMast&egrave;re Brand Content,\r\nMast&egrave;re Direction Artistique Digitale,\r\nMast&egrave;re Lead UX,\r\nMast&egrave;re Tech Lead\r\nSi vous avez arr&ecirc;t&eacute; votre BUT MMI au bout de 2ans et que vous avez donc obtenu une &laquo; qualification interm&eacute;diaire &raquo; DUT, vous pouvez tout de m&ecirc;me poursuivre vos &eacute;tudes et opter pour une 3&egrave;me ann&eacute;e de sp&eacute;cialisation. Il existe par exemple chez Digital Campus, le cycle intensif bachelor 3&egrave;me ann&eacute;e qui permet d&rsquo;obtenir le titre de chef de projet multim&eacute;dia en 1 an. Une bonne option pour ne pas perdre d&rsquo;ann&eacute;e, pour se sp&eacute;cialiser encore plus dans le secteur du digital.\r\nLa formation BUT MMI est-elle disponible en alternance ?\r\nLes BUT MMI sont parfois disponibles en alternance en fonction de la politique de l&#039;&eacute;tablissement. L&rsquo;alternance permet aux &eacute;tudiants de combiner p&eacute;riodes de formation &agrave; l&#039;IUT et p&eacute;riodes en entreprise, ce qui leur permet d&#039;acqu&eacute;rir une exp&eacute;rience professionnelle tout en poursuivant leurs &eacute;tudes.\r\n\r\nQue faire apr&egrave;s un BUT MMI ?\r\nPendant trois ans, le BUT MMI forme les &eacute;tudiants pour leur permettre de travailler dans le domaine de la communication digitale et d&rsquo;internet. Il s&rsquo;agit d&rsquo;un dipl&ocirc;me op&eacute;rationnel, qui leur donne la possibilit&eacute; de d&eacute;crocher un poste facilement, dans un secteur qui recrute. Apr&egrave;s ces 3 ans d&rsquo;&eacute;tudes, l&rsquo;&eacute;tudiant aura plusieurs options :\r\n\r\nPoursuivre ses &eacute;tudes ; \r\nS&rsquo;orienter vers la vie professionnelle.\r\nA noter &eacute;galement que m&ecirc;me si depuis la rentr&eacute;e 2021, le BUT a remplac&eacute; le DUT visant &agrave; obtenir un bac+3 (au lieu d&rsquo;un bac+2 initialement), il est tout &agrave; fait possible de s&rsquo;arr&ecirc;ter en fin de 2&egrave;me ann&eacute;e et d&rsquo;obtenir une &laquo; qualification interm&eacute;diaire &raquo; pour obtenir automatique un DUT bac+2.', 'https://siecledigital.fr/wp-content/uploads/2024/11/usurpation-identite-numerique.jpg', '2025-02-18 15:22:00', ''),
(13, 2, 'BUT MMI - m&eacute;tiers du multim&eacute;dia et de l&rsquo;internet', 'Le BUT MMI (m&eacute;tiers du multim&eacute;dia et de l&rsquo;internet) forme des professionnels de la conception et de la r&eacute;alisation de produits et de services de communication utilisant les technologies num&eacute;riques. ', 'Pr&eacute;sentation du BUT MMI (m&eacute;tiers du multim&eacute;dia et de l&rsquo;internet)\r\n\r\nDe niveau bac+3, le BUT offre une formation moins th&eacute;orique que l&rsquo;ancien DUT et plus professionnalisante avec pour objectif une insertion rapide sur le march&eacute; du travail, tout en permettant une poursuite d&rsquo;&eacute;tudes pour ceux qui le souhaitent.\r\n\r\nLe titulaire du BUT sp&eacute;cialit&eacute; MMI est capable de cr&eacute;er des produits de communication multim&eacute;dia (mise au point des caract&eacute;ristiques esth&eacute;tiques et ergonomiques, d&eacute;veloppement et programmation d&#039;applications interactives, r&eacute;alisations audiovisuelles, mise en place d&#039;un plan communication ou marketing, gestion de bases de donn&eacute;es ou de r&eacute;seaux informatiques...). Les m&eacute;tiers du multim&eacute;dia et de l&#039;internet &eacute;tant en constante &eacute;volution, il faut avoir une bonne capacit&eacute; d&#039;adaptation pour &eacute;voluer avec les nouveaux outils, nouveaux supports et nouveaux r&eacute;seaux informatiques.\r\n\r\nL&rsquo;&eacute;tudiant pourra, en fonction de son projet professionnel et personnel, choisir l&rsquo;un des trois parcours offerts par la sp&eacute;cialit&eacute; m&eacute;tiers du multim&eacute;dia et de l&rsquo;internet.\r\nQuels sont les parcours du BUT MMI (m&eacute;tiers du multim&eacute;dia et de l&rsquo;internet) ?\r\n\r\nLes trois parcours du BUT MMI sont accessibles d&egrave;s la deuxi&egrave;me ann&eacute;e. Attention, tous les parcours ne sont pas dispens&eacute;s par chaque IUT. Pensez &agrave; bien v&eacute;rifier.\r\n\r\n1- BUT MMI parcours strat&eacute;gie de communication num&eacute;rique et design d&rsquo;exp&eacute;rience\r\n\r\nCe parcours axe les comp&eacute;tences sur la conception de supports de communication et la prise en compte des aspects humains.\r\n\r\n2- BUT MMI parcours cr&eacute;ation num&eacute;rique\r\n\r\nCe parcours a pour objectif de former &agrave; la cr&eacute;ation de supports de communication multim&eacute;dia notamment web avec un focus sur l&rsquo;exp&eacute;rience utilisateur et les m&eacute;thodologies de cr&eacute;ativit&eacute;.\r\n\r\n3- BUT MMI parcours d&eacute;veloppement web et dispositifs interactifs\r\n\r\nCe parcours est une sp&eacute;cialisation en d&eacute;veloppement web.', 'https://www.wakatsera.com/wp-content/uploads/2022/06/technologie-numerique.jpg', '2022-02-25 15:05:00', ''),
(14, 11, 'M&eacute;tiers du Multim&eacute;dia &amp; de l&#039;Internet', 'Organisation des &eacute;tudes :\r\n- 6 semestres (180 ects)\r\n- 2000 heures d&#039;enseignements\r\n- 600 heures de projet tutor&eacute;\r\n- 22 &agrave; 26 semaines de stage || Alternance possible &agrave; partir du semestre 3', 'Les parcours du BUT MMI &agrave; l&#039;IUT de l&#039;Universit&eacute; de Corse :\r\nLe parcours du BUT MMI d&eacute;bute au semestre 3 (d&eacute;but de deuxi&egrave;me ann&eacute;e) : \r\n- Cr&eacute;ation num&eacute;rique (pour le web et le multim&eacute;dia)\r\n \r\n\r\nLe BUT MMI permet &agrave; l&#039;&eacute;tudiant de faire l&#039;acquisition de cinq comp&eacute;tences :\r\n- Comprendre les &eacute;cosyst&egrave;mes, les besoins des utilisateurs et les dispositifs de communication num&eacute;rique\r\n- Concevoir ou co-concevoir une r&eacute;ponse strat&eacute;gique pertinente &agrave; une probl&eacute;matique complexe\r\n- Exprimer un message avec les m&eacute;dias num&eacute;riques pour informer et communiquer\r\n- D&eacute;velopper pour le web et les m&eacute;dias num&eacute;riques\r\n- Entreprendre dans le secteur du num&eacute;rique\r\n \r\n\r\nLes d&eacute;bouch&eacute;s :\r\nSECTEURS D&#039;ACTIVIT&Eacute;S : Programmation &amp; d&eacute;veloppement web, digital, agences de communication, audiovisuel...\r\n\r\nFONCTIONS/M&Eacute;TIERS : Int&eacute;grateur web, web designer, concepteur multim&eacute;dia, infographiste et animateur 2D/3D, assistant de communication num&eacute;rique, d&eacute;veloppeur d&#039;applications web &amp; mobiles, chef de projet web...', 'https://rtvconcept.fr/wp-content/uploads/2018/01/regie_inha-e1732612064311-1024x577.jpeg', '2024-05-23 15:23:00', 'https://youtu.be/w51E1fkPazk'),
(15, 8, 'BUT m&eacute;tiers du multim&eacute;dia et de l&#039;internet parcours cr&eacute;ation num&eacute;rique (MMI)', 'Dur&eacute;e de la formation : 3 ans\r\nNature de la formation : Dipl&ocirc;me conf&eacute;rant le grade de licence\r\n                                          Dipl&ocirc;me national ou dipl&ocirc;me d&#039;&Eacute;tat\r\n\r\nNiveau terminal d&#039;&eacute;tudes : Bac + 3\r\nType de formation : BUT (bachelor universitaire de technologie)', 'Objectifs de la formation\r\n\r\nDipl&ocirc;me professionnel de niveau 6 (bac + 3), le BUT MMI (m&eacute;tiers du multim&eacute;dia et de l&rsquo;Internet) forme &agrave; des activit&eacute;s relevant de domaines vari&eacute;s, allant de la conception de sites Internet &agrave; la gestion de communaut&eacute;s sur les r&eacute;seaux sociaux, en passant par la production de produits multim&eacute;dias (jeux vid&eacute;o, applications mobiles, etc.) ou le d&eacute;veloppement de services Web. Le BUT MMI propose trois parcours diff&eacute;rents, accessibles d&egrave;s la 2e ann&eacute;e : parcours cr&eacute;ation num&eacute;rique ; parcours strat&eacute;gie de communication num&eacute;rique et design d&rsquo;exp&eacute;rience ; parcours d&eacute;veloppement Web et dispositifs interactifs.\r\nLe parcours cr&eacute;ation num&eacute;rique vise &agrave; d&eacute;velopper l&rsquo;expression de message sur diff&eacute;rents m&eacute;dias, sous la forme de cr&eacute;ation graphique et d&rsquo;&eacute;criture multim&eacute;dia. II permet d&rsquo;acqu&eacute;rir les techniques n&eacute;cessaires &agrave; la cr&eacute;ation de ressources num&eacute;riques, notamment de publications Web. Il pr&eacute;pare principalement aux m&eacute;tiers de designer, infographiste, game designer ou technicien audiovisuel. Les principaux d&eacute;bouch&eacute;s se situent en agences de communication, en agences Web, en agences publicitaires, ou dans les services de communication des grandes entreprises.\r\nAttendus Parcoursup\r\n\r\nAttendus nationaux de la plateforme d&#039;inscription dans l&#039;enseignement sup&eacute;rieur Parcoursup \r\n\r\nCOMP&Eacute;TENCES TECHNIQUES ET SCIENTIFIQUES\r\n\r\nAvoir un int&eacute;r&ecirc;t pour les techniques associ&eacute;es &agrave; la communication num&eacute;rique (culture scientifique, conception et programmation Web),\r\nAvoir une curiosit&eacute; et de l&#039;int&eacute;r&ecirc;t pour la cr&eacute;ation de site web, r&eacute;alisations de vid&eacute;os, animation d&#039;un r&eacute;seau social,\r\nAvoir un usage courant d&#039;Internet et du num&eacute;rique,\r\nSavoir mobiliser ses connaissances pour r&eacute;pondre &agrave; une r&eacute;solution de probl&egrave;me,\r\nSavoir &eacute;laborer un raisonnement scientifique/logique structur&eacute; et adapt&eacute; &agrave; une situation.\r\nQUALIT&Eacute;S HUMAINES\r\n\r\nAvoir une premi&egrave;re r&eacute;flexion sur son projet professionnel,\r\nAvoir l&#039;esprit d&#039;&eacute;quipe et savoir s&#039;int&eacute;grer dans les travaux de groupe via les projets et les travaux pratiques,\r\nAvoir le sens pratique, &ecirc;tre attentif et rigoureux,\r\nMontrer son int&eacute;r&ecirc;t et sa motivation dans les mati&egrave;res relevant de la technique et/ou de la cr&eacute;ativit&eacute; (programmation, audiovisuel, communication, graphisme, etc.),\r\nSavoir s&#039;impliquer et s&#039;organiser dans ses &eacute;tudes (ou g&eacute;rer sa charge de travail) pour fournir le travail n&eacute;cessaire &agrave; sa r&eacute;ussite en autonomie.\r\nCOMP&Eacute;TENCES G&Eacute;N&Eacute;RALES\r\n\r\nAvoir une ma&icirc;trise du fran&ccedil;ais permettant de communiquer &agrave; l&#039;&eacute;crit et &agrave; l&#039;oral de fa&ccedil;on adapt&eacute;e, de comprendre un &eacute;nonc&eacute;, de l&#039;analyser et de r&eacute;diger une solution,\r\nAvoir de la cr&eacute;ativit&eacute; et une curiosit&eacute; pour le design ou les outils utilis&eacute;s (dessin, graphisme, infographie, conception, prototypage&hellip;),\r\nAvoir une connaissance suffisante d&#039;une langue vivante &eacute;trang&egrave;re de pr&eacute;f&eacute;rence l&#039;anglais permettant de progresser pendant la formation : &eacute;changer &agrave; l&#039;oral, lire et comprendre un texte, r&eacute;pondre aux questions &eacute;crites et orales,\r\nSavoir mobiliser ses connaissances et d&eacute;velopper un sens critique,\r\n&Ecirc;tre capable d&#039;&eacute;voluer dans un environnement num&eacute;rique et d&eacute;tenir des connaissances de base en bureautique.\r\nAcc&egrave;s &agrave; la formation\r\n\r\nLe BUT m&eacute;tiers du multim&eacute;dia et de l&rsquo;Internet est accessible &agrave; tout titulaire d&rsquo;un baccalaur&eacute;at, g&eacute;n&eacute;ral ou technologique (STMG ou STI2D). L&rsquo;acc&egrave;s se fait sur dossier scolaire, projet motiv&eacute;, voire tests et/ou entretien.\r\nPoursuites d&#039;&eacute;tudes\r\n\r\nSi le BUT m&eacute;tiers du multim&eacute;dia et de l&rsquo;Internet pr&eacute;pare directement &agrave; l&rsquo;insertion professionnelle, les dipl&ocirc;m&eacute;s peuvent &eacute;ventuellement poursuivre en &eacute;cole sp&eacute;cialis&eacute;e ou en master.', 'https://www.herbak.bzh/images/blog/204.jpg', '2023-04-25 15:24:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `auteur`
--

CREATE TABLE `auteur` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `lien_twitter` varchar(255) NOT NULL,
  `lien_avatar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `auteur`
--

INSERT INTO `auteur` (`id`, `nom`, `prenom`, `lien_twitter`, `lien_avatar`) VALUES
(2, 'IMMEL', 'Sarah ', 'https://www.twitter.com/sarah', 'https://glowcom.alwaysdata.net/SAE-203/DanYellow-cours-main-integration/code/ressources/images/auteurs/sarah.jpg'),
(7, 'GUNDUZ', 'Hakan ', 'https://www.twitter.com/hakan', 'https://glowcom.alwaysdata.net/SAE-203/DanYellow-cours-main-integration/code/ressources/images/auteurs/hakan.jpg'),
(8, 'MESBAHI', 'Yosra', 'https://www.twitter.com/yosra', 'https://glowcom.alwaysdata.net/SAE-203/DanYellow-cours-main-integration/code/ressources/images/auteurs/yosra.jpg'),
(9, 'MOHAMED OUSMAN ', 'Raliya ', 'https://www.twitter.com/raliya', 'https://glowcom.alwaysdata.net/SAE-203/DanYellow-cours-main-integration/code/ressources/images/auteurs/raliya.jpg'),
(10, 'LUKAU LOLA ', 'Shadelya', 'https://twitter.com/shadelya', 'https://glowcom.alwaysdata.net/SAE-203/DanYellow-cours-main-integration/code/ressources/images/auteurs/shadelya.jpg'),
(11, 'MOHAMED', 'Asnati', 'https://www.twitter.com/asnati', 'https://glowcom.alwaysdata.net/SAE-203/DanYellow-cours-main-integration/code/ressources/images/auteurs/asnati.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contenu` longtext NOT NULL,
  `type` varchar(255) NOT NULL,
  `date_creation` datetime NOT NULL DEFAULT current_timestamp() COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `nom`, `prenom`, `email`, `contenu`, `type`, `date_creation`) VALUES
(1, 'Martin', 'Thomas', 'm.thomas43@yopmail.com', 'Je suis intéressé par la formation.', 'etudiant', '2022-04-13 08:28:01'),
(2, 'Despoux', 'Helena', 'h.despoux@foo.fr', 'Je suis intéressé par la formation.', 'etudiant', '2022-04-13 08:28:01'),
(14, '', '', '', '', '', '2025-06-10 22:53:33'),
(15, '', '', '', '', '', '2025-06-11 09:51:12'),
(16, '', '', '', '', '', '2025-06-11 16:41:15'),
(17, '', '', '', '', '', '2025-06-11 16:47:25'),
(18, '', '', '', '', '', '2025-06-11 16:56:44'),
(19, '', '', '', '', '', '2025-06-11 16:59:18'),
(20, '', '', '', '', '', '2025-06-12 14:03:05'),
(21, '', '', '', '', '', '2025-06-12 18:41:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_23A0E6660BB6FE6` (`auteur_id`);

--
-- Indexes for table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `auteur`
--
ALTER TABLE `auteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E6660BB6FE6` FOREIGN KEY (`auteur_id`) REFERENCES `auteur` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
