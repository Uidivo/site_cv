-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 19 Septembre 2017 à 14:16
-- Version du serveur :  10.1.13-MariaDB
-- Version de PHP :  5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `microcms`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_article`
--

CREATE TABLE `t_article` (
  `art_id` int(11) NOT NULL,
  `art_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `art_content` varchar(2000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `t_article`
--

INSERT INTO `t_article` (`art_id`, `art_title`, `art_content`) VALUES
(1, 'First article', 'Hi there! This is the very first article.'),
(2, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut hendrerit mauris ac porttitor accumsan. Nunc vitae pulvinar odio, auctor interdum dolor. Aenean sodales dui quis metus iaculis, hendrerit vulputate lorem vestibulum. Suspendisse pulvinar, purus at euismod semper, nulla orci pulvinar massa, ac placerat nisi urna eu tellus. Fusce dapibus rutrum diam et dictum. Sed tellus ipsum, ullamcorper at consectetur vitae, gravida vel sem. Vestibulum pellentesque tortor et elit posuere vulputate. Sed et volutpat nunc. Praesent nec accumsan nisi, in hendrerit nibh. In ipsum mi, fermentum et eleifend eget, eleifend vitae libero. Phasellus in magna tempor diam consequat posuere eu eget urna. Fusce varius nulla dolor, vel semper dui accumsan vitae. Sed eget risus neque.'),
(3, 'Lorem ipsum in french', 'J’en dis autant de ceux qui, par mollesse d’esprit, c’est-à-dire par la crainte de la peine et de la douleur, manquent aux devoirs de la vie. Et il est très facile de rendre raison de ce que j’avance. Car, lorsque nous sommes tout à fait libres, et que rien ne nous empêche de faire ce qui peut nous donner le plus de plaisir, nous pouvons nous livrer entièrement à la volupté et chasser toute sorte de douleur ; mais, dans les temps destinés aux devoirs de la société ou à la nécessité des affaires, souvent il faut faire divorce avec la volupté, et ne se point refuser à la peine. La règle que suit en cela un homme sage, c’est de renoncer à de légères voluptés pour en avoir de plus grandes, et de savoir supporter des douleurs légères pour en éviter de plus fâcheuses.'),
(4, 'je suis un article', 'zgefoapfanfkjabidhab ljaendkjabkjab aldnakjek aodnkj'),
(5, 'Presentation', 'Bonjour je suis Ovidiu, et je suis un developpeur integrateur web debutant.\r\n\r\nActuellement je suis à la recherche d''un stage de 2 mois du 20 octobre au 20 décembre pour finaliser mes diplômes de développeur intégrateur web.');

-- --------------------------------------------------------

--
-- Structure de la table `t_comment`
--

CREATE TABLE `t_comment` (
  `com_id` int(11) NOT NULL,
  `com_content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `art_id` int(11) NOT NULL,
  `usr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `t_comment`
--

INSERT INTO `t_comment` (`com_id`, `com_content`, `art_id`, `usr_id`) VALUES
(1, 'kdhgierhuginsiurnijrg', 3, 6);

-- --------------------------------------------------------

--
-- Structure de la table `t_competence`
--

CREATE TABLE `t_competence` (
  `competence_id` int(11) NOT NULL,
  `competence_nom` varchar(255) NOT NULL,
  `competence_descriptif` varchar(11) NOT NULL,
  `competence_categorie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `t_competence`
--

INSERT INTO `t_competence` (`competence_id`, `competence_nom`, `competence_descriptif`, `competence_categorie`) VALUES
(2, 'HTML', '90', 'Back'),
(3, 'CSS3', '90%', 'Front');

-- --------------------------------------------------------

--
-- Structure de la table `t_experience`
--

CREATE TABLE `t_experience` (
  `xp_id` int(11) NOT NULL,
  `xp_contrat` varchar(255) NOT NULL,
  `xp_debut` date NOT NULL,
  `xp_fin` date NOT NULL,
  `xp_descriptif` varchar(255) NOT NULL,
  `xp_poste` varchar(255) NOT NULL,
  `xp_img` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `t_experience`
--

INSERT INTO `t_experience` (`xp_id`, `xp_contrat`, `xp_debut`, `xp_fin`, `xp_descriptif`, `xp_poste`, `xp_img`) VALUES
(1, 'CDI', '2017-02-20', '2017-12-20', 'Chantier d''insertion numérique,Ma6TvaCoder\r\nApprentissage : langages web / avec WebForce3\r\nCréation de site internet', 'Développeur intégrateur web', 'http://lepoles.org/wp-content/uploads/2015/09/logo-6tPrezi.png'),
(2, 'Contrat', '2014-01-01', '2016-12-26', 'Technicien Réparation Téléphonie et Maintenance Software\r\nPC,Tablette,Téléphonie-Wexim, Paris\r\nTechnicien Maintenance des Postes Informatique-MSS, Noisy le Grand\r\nInstallation et maintenance (matériel et logiciels)', 'Plusieurs stages technicien maintenance et réparation informatique', 'http://i85.servimg.com/u/f85/14/45/36/75/fetch_13.jpg'),
(9, 'Contrat', '2017-02-20', '2017-12-20', 'Le PoleS / WebForce3 Pantin\r\nChantier d''insertion numérique,Ma6TvaCoder\r\nApprentissage : langages web / avec WebForce3\r\nCréation de site internet', 'Formation Devellopeur Integrateur Web', 'http://lepoles.org/wp-content/uploads/2015/09/logo-6tPrezi.png'),
(10, 'CDI', '2016-04-10', '2016-08-29', 'Organismes: APPR Bondy et EFOR\r\nla Courneuve', 'Formation L''emploi c''est permis', 'http://appr-autoecole.fr/wp-content/uploads/2016/07/logo-dark-1.png'),
(11, 'CDI', '2013-09-03', '2014-08-29', 'TSRIT\r\nCentre de formation CEFIAC Sarcelles\r\nTechnicien supérieur en réseaux informatiques et télécommunications(1/3)', 'Technicien supérieur en réseaux informatiques et télécommunications', 'https://image.jimcdn.com/app/cms/image/transf/dimension=250x10000:format=png/path/sb7abbe876d54100b/image/if4ce8298ee62d412/version/1491829055/image.png'),
(13, 'CDI', '2009-09-07', '2010-07-20', 'Lycée Jules Richard Paris 19', 'Terminale BAC S.T.I.', 'http://www.lyceejulesrichard.fr/images/marianne.jpg'),
(14, 'CDI', '2005-09-05', '2007-06-20', 'Lycée Louis Girard Malakoff \r\n\r\nMétiers des Produits Mécaniques Industriels', 'BEP M.P.M.I.', 'https://www.archi-guide.com/PH/FRA/IDF/MalakLyLGirardCa.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `t_loisirs`
--

CREATE TABLE `t_loisirs` (
  `loisir_id` int(11) NOT NULL,
  `loisir_nom` varchar(255) NOT NULL,
  `loisir_descriptif` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `t_loisirs`
--

INSERT INTO `t_loisirs` (`loisir_id`, `loisir_nom`, `loisir_descriptif`) VALUES
(1, 'luge', 'j''aime faire de la luge dans les descentes !!'),
(2, 'Vélo', 'Une fois tous les mois j''aime aller à la découverte des régions à vélo.'),
(3, 'Voyages', 'Roumanie, Bulgarie,Ukraine,\r\nAllemagne, Suisse, Corse,\r\nFrance, Belgique, Espagne,\r\nItalie');

-- --------------------------------------------------------

--
-- Structure de la table `t_perso`
--

CREATE TABLE `t_perso` (
  `perso_id` int(11) NOT NULL,
  `perso_nom` varchar(255) NOT NULL,
  `perso_prenom` varchar(255) NOT NULL,
  `perso_poste` varchar(255) NOT NULL,
  `perso_img` varchar(300) NOT NULL,
  `perso_facebook` varchar(300) NOT NULL,
  `perso_github` varchar(300) NOT NULL,
  `perso_codepen` varchar(300) NOT NULL,
  `perso_tel` varchar(255) NOT NULL,
  `perso_adresse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `t_perso`
--

INSERT INTO `t_perso` (`perso_id`, `perso_nom`, `perso_prenom`, `perso_poste`, `perso_img`, `perso_facebook`, `perso_github`, `perso_codepen`, `perso_tel`, `perso_adresse`) VALUES
(1, 'Dobrigeanu', 'Ovidiu Marin', 'Devellopeur Integrateur Web', 'https://www.codeproject.com/KB/GDI-plus/ImageProcessing2/img.jpg', 'https://www.facebook.com/profile.php?id=100015451357062', 'https://github.com/Uidivo', 'none', '06 52 27 92 00', 'ovidiu.dobrigeanu@lepoles.com');

-- --------------------------------------------------------

--
-- Structure de la table `t_portfolio`
--

CREATE TABLE `t_portfolio` (
  `port_id` int(11) NOT NULL,
  `port_name` varchar(255) NOT NULL,
  `port_lieu` varchar(255) NOT NULL,
  `port_descriptif` varchar(1000) NOT NULL,
  `port_date` date NOT NULL,
  `port_img` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `t_portfolio`
--

INSERT INTO `t_portfolio` (`port_id`, `port_name`, `port_lieu`, `port_descriptif`, `port_date`, `port_img`) VALUES
(1, 'Site de la prefecture', 'Paris', 'J''ai fait le sit de la prefecture', '2017-08-09', 'https://cms-assets.tutsplus.com/uploads/users/30/posts/27134/image/elelemnents.jpg'),
(2, 'Les Simpsons', 'Pantin', 'Un site responsive sur les Simpsons', '2017-04-02', 'http://www.geeksandcom.com/wp-content/uploads/2016/09/Simpsons-television-1000x667.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `t_user`
--

CREATE TABLE `t_user` (
  `usr_id` int(11) NOT NULL,
  `usr_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `usr_password` varchar(88) COLLATE utf8_unicode_ci NOT NULL,
  `usr_salt` varchar(23) COLLATE utf8_unicode_ci NOT NULL,
  `usr_role` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `t_user`
--

INSERT INTO `t_user` (`usr_id`, `usr_name`, `usr_password`, `usr_salt`, `usr_role`) VALUES
(3, 'admin', '$2y$13$A8MQM2ZNOi99EW.ML7srhOJsCaybSbexAj/0yXrJs4gQ/2BqMMW2K', 'EDDsl&fBCJB|a5XUtAlnQN8', 'ROLE_ADMIN'),
(6, 'Adricen', '$2y$13$Jz8z9URQQhtMSrJxv.B/iOmudR.ILGk84DN4f31/5YwmDtUZ.Vgc.', '01643b5402b3f86883d75fb', 'ROLE_ADMIN');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `t_article`
--
ALTER TABLE `t_article`
  ADD PRIMARY KEY (`art_id`);

--
-- Index pour la table `t_comment`
--
ALTER TABLE `t_comment`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `fk_com_art` (`art_id`),
  ADD KEY `fk_com_usr` (`usr_id`);

--
-- Index pour la table `t_competence`
--
ALTER TABLE `t_competence`
  ADD PRIMARY KEY (`competence_id`);

--
-- Index pour la table `t_experience`
--
ALTER TABLE `t_experience`
  ADD PRIMARY KEY (`xp_id`);

--
-- Index pour la table `t_loisirs`
--
ALTER TABLE `t_loisirs`
  ADD PRIMARY KEY (`loisir_id`);

--
-- Index pour la table `t_perso`
--
ALTER TABLE `t_perso`
  ADD PRIMARY KEY (`perso_id`);

--
-- Index pour la table `t_portfolio`
--
ALTER TABLE `t_portfolio`
  ADD PRIMARY KEY (`port_id`);

--
-- Index pour la table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`usr_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `t_article`
--
ALTER TABLE `t_article`
  MODIFY `art_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `t_comment`
--
ALTER TABLE `t_comment`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `t_competence`
--
ALTER TABLE `t_competence`
  MODIFY `competence_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `t_experience`
--
ALTER TABLE `t_experience`
  MODIFY `xp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `t_loisirs`
--
ALTER TABLE `t_loisirs`
  MODIFY `loisir_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `t_perso`
--
ALTER TABLE `t_perso`
  MODIFY `perso_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `t_portfolio`
--
ALTER TABLE `t_portfolio`
  MODIFY `port_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `usr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `t_comment`
--
ALTER TABLE `t_comment`
  ADD CONSTRAINT `fk_com_art` FOREIGN KEY (`art_id`) REFERENCES `t_article` (`art_id`),
  ADD CONSTRAINT `fk_com_usr` FOREIGN KEY (`usr_id`) REFERENCES `t_user` (`usr_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
