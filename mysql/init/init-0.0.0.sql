CREATE TABLE `oc_intersections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `id_voie` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `oc_voies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `city` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `oc_resultats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_intersection` int(11) NOT NULL,
  `id_voie_entree` int(11) NOT NULL,
  `id_voie_sortie` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `id_creneau` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `date` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `oc_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `desc` varchar(255) COLLATE utf8_bin,
  PRIMARY KEY (`id`)
);

CREATE TABLE `oc_creneaux` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `heure_debut` bigint(20) NOT NULL,
  `heure_fin` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
);