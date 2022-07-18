-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 18 juil. 2022 à 19:05
-- Version du serveur : 8.0.29
-- Version de PHP : 8.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `devoweb-tools`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `icon`) VALUES
(1, 'VS Code', 'https://code.visualstudio.com/apple-touch-icon.png'),
(2, 'Favoris', 'https://e7.pngegg.com/pngimages/114/264/png-clipart-web-development-web-design-logo-web-design-globe-text.png'),
(3, 'Chrome', 'https://cdn.icon-icons.com/icons2/2631/PNG/512/google_chrome_new_logo_icon_159144.png');

-- --------------------------------------------------------

--
-- Structure de la table `tools`
--

CREATE TABLE `tools` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `favicon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `link` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `category_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tools`
--

INSERT INTO `tools` (`id`, `name`, `description`, `favicon`, `link`, `category_id`) VALUES
(1, 'Pattern Monster', 'Pour des background avec formes SVG. Un peu space mais on sait jamais.', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAIAAACQkWg2AAACdklEQVQ4jS2Sy0uUYRjFz/O832XGyabUJLsQKBIKShRT0CLFimqhm24guHQZtSz6D6xFKxcGbqKd+6KiDJIok4IiSigLoehijTPjzOf3ve97WkyHs/qdsziLI8cPXgMgQudVhQBEQEoTkgDgKUZ9E2oz2EyDXJg6JwRJAgRIkqBzkgvTzTQQIQBVYSMJB3u/zk7NXBq/X6nmjTpjvDHeqKtU85fG789OzQz2fm0koQoDUWbO7O78s3NPZTT3+sda8fbcSBg5AFlqJs89Hh16HXZwd+efxfc9oqmcOHTVewFQGvj08XPXlfF7qz/aW3IpgHoS7d25duvumf3d3xff9gBQZUBKc9yDhYHJs09KgytDrctoiqhvhKe+vJ2ZG2kr1gCQYrq7jhn11Y3cxdPPL08+DFLvEvHpf0fGlY6sVNejNx/35WNLqgJ0XvJxOja85OtwXsTQGBpDMXRefB1jw0v5OHVeAKoKrTXtxVrXtnUJcH36wpWbE17Fq1y+MXF9+rwYdG1bby/WrDUqDAhAYJ16ChzOnXzhqaaFACZGn4lSPDzFOoWAQEBKFNhff7d+WN11uG2lNPCFGR497XdOR0rvwhgEPqzu+lXeWsilnqqAiDKzZn6xz0OQIrNab0TJZuicQQoq5l/2Z9aIEpAAACiqXCu3mpjLnzt79/4cG3mDAMjwabWjp/u39WqUpAAMIPSUKLDDpfd35o5m1rxa7q6Vc7VGHOdt5/bKvYUDfT3f5hf7nDMikP9vBcPQ/q0UdrRVypVCGDjr1FottjbKlYIxPooyQFQQoFmnJJtRayGpbrTEkSUlCl0cuiSNthQSQLxXgKT8A2ZDSbppWYOlAAAAAElFTkSuQmCC', 'https://pattern.monster/', 2),
(2, 'Animated Background Generator', 'Editeur de background animé en full CSS', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAIAAACQkWg2AAACCUlEQVQ4jV2Sy0vUcRTFz/k+xhkxRVKLMEyxh2lqBhVUWq1cmbTqn6xdrSrKaKH0EKKsREEhjcoZm3Eev9f3tPjpFN3V5ZzLPRfuhxOziwIgERBJCSQA5I2UiwJIAnCSCIAUkBsAQObTyEWSgCSQjmSeAECArEUUMUsF0Hn4gkKGdoLk2ktBSmKtGvr6k+u3TaNp3yyhVmOpE8gDBNIBAA0AJDGdS27cyaauGNshUYMjZnVZX1ZhDK2DBMn2D180SYQ4znp7m/cfhNExu1f2zx5za8OcHOLIuBsY0tZnxS0o0Hp74vhgOnRGBtnZiTB1zb96WnjykPUayz+19tYUu/3wZNjbZRZMT19W+e4a8wvxhTHS+Fjm977p7tPAKdT2SbLUZTq71WoUZ+YNjE2zZHvNmYMqYVyUIsBYz6iJJCYJEGmMuGVhmUZGMmLWrLqO1y/85lfUD3RuMru7gEadlV/yHhKSyESJNYXGu0dhb4e+I6nsOnUdM5Wy0pRb6/q2aS/f5OlRrrxEoViYnvOlnmxnI/2xjaSFuGFLXRy/dQ8kQCUxncOlq/b8jDMlgjyoJp+Wk433pIFzCALkDrGB6D0UtPI8W//I6Tm2WsmHpVCvmmInQISQP5cTs4vIOcnLWMUthAwAnKcrHPb/oZGTKIkhoy/8BTZk+sc9hK+dkIPMoyMB6khsL/0DlPYmLA3JMQIAAAAASUVORK5CYII=', 'https://wweb.dev/resources/animated-css-background-generator/', 2),
(3, 'Magic Pattern', 'Background complexe en full CSS', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAB30lEQVQ4jZWTMUwTYRTHf9/H3fVo0xjTFo21S7nFYExUMCwF25EYJCZuOHbRSQfd3MGkmw4WEw3uJYQ4QoQRnF0OllJjWoyWWrjele9zaEuqcWj/8/vlvZf3foK+aK3jwAzg+L6K+SfYANYonhWSPwAX2BFC1HqM0QVD1cpZ4f3Sr/zupmce7gf8riuU6hRJCZELkpRjMpm1g2qlXUxcGXkmhGgJgGql/frp/e+PKwdtBkkybVBYu/zm0lXjidRaJzZWG/lBYYDKQZtPHxt5rXVcApm9Lc8cmO5md9MzgRkJOGU3GJanvB8AOIbfUrFmXSElvHwXPy/wW5pSsUHuQYQPy3WyC2GuT9usrRzz9YtPs67wfRUz/FNspUCOwOx85K8uNzM2sTGDiTshrt0KAXB71ubhxCFKgX+CLYee/Z8YVhhPSkDD5/Vm3wpQenvcWeFVnbsLYW5M25RWjtG68xvWKJ7QWj+fd8pLjZ9qqM7Ri5J1N/VCAm5qfOgrknJMAFcC21M5e+g7TmbtANiRQoijucVoMZk2BoaTaYN7j6JFIURNQEem2rezwsZqI7+35ZllN6D5P5nGTaZydjC3GC2OJftk6kVrnQAygOO3VMw/7eocxrOsc523hRBHPeYPaFbBxTNATPsAAAAASUVORK5CYII=', 'https://www.magicpattern.design/tools/css-backgrounds', 2),
(4, 'SVG Background', 'Editeur de background SVG', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAACC0lEQVQ4jZ2TsW4UUQxFj+23Mzu7y4b0NLQoQkpJCQVfAQ01EhU0SHR0fAMVLT+QjgbafESoEBJhszszb96zKbKJkEAIuNJtLPtatq/hVxwBb4BT4Ouep/vY0W/yr2HAK+CrSYouLWLZrGPZrKNLizBJsRd7tc8FQPZMwFuQR6tmTdcsa9KZqJgAeNQoPkWft3aRvwPxDngClCull4I8O5gfTqv2gNaWNreFNLpgpnOSzlQlabJUTbTmMhwDE/BBgDvAp2VzsFq3N2OeltroglY7TJIA1Cgxek/2HUPZ+vfxm2zz+QVwz4AXJnZ/3R16m5ba2UqWtpZ5WklnN2i0w9TEMAlcHBeRiHHadUH0CXjYWBtJZyRtaHQerS2kSwc00gGQo0cQSuTIMZJ0RmNt9GX3MAG3VBPKZRe7EpKOhR5ebshh0h7TmVg1FBPVBHBL/3TXv0ECztzLoVOjUqP6RPEsWXtwrkconqk+RaXi1HAvApwl4CTX8W65LCTLIKnuCIJJBgCmGMi1J/sgxXMUn8h1FODEgM9BPBa0nWkKERHHiXBKjJK9J3sfvW/JviPX3i/yRsbab4CnBnwBZqXmB6paRQXHtTLJ5DmyD+TYyei9ZO99N238YjxPwGvgve2t/BG4PZbhmAhFotYolMgyxUj2IXLtfTtubDOe297Kz4H4eaH/9Uy/wz+98w9FdiYSbqcotgAAAABJRU5ErkJggg==', 'https://www.svgbackgrounds.com/', 2),
(5, 'Tabnine', 'IA d\'autocompletion du code, ultra cool', NULL, 'https://marketplace.visualstudio.com/items?itemName=TabNine.tabnine-vscode|', 1),
(6, 'Prettier', 'Formatteur de code (indentation, points virgule, etc...)', NULL, 'https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode|', 1),
(7, 'Better Comments', 'Ecrire des commentaires c\'est bien, mais quand ils sont coloriser en fonction de l\'utilité c\'est mieux', NULL, 'https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments|', 1),
(8, 'Error Lens', 'Affiche les erreurs directement dans VS Code', NULL, 'https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens|', 1),
(9, 'Icon Fonts', 'L\'autocompletion des class Font-Awesome et autre c\'est bien pratique pour les icones', NULL, 'https://marketplace.visualstudio.com/items?itemName=idleberg.icon-fonts|', 1),
(10, 'Indent Rainbow', 'Pour un bon code tuning et avoir la colorisation des indentation. En vrai c\'est pratique', NULL, 'https://marketplace.visualstudio.com/items?itemName=oderwat.indent-rainbow|', 1),
(11, 'JavaScript Snippet Pack', 'Comme son nom l\'indique, pack de snippet (Exemple: cl pour console.log())', NULL, 'https://marketplace.visualstudio.com/items?itemName=akamud.vscode-javascript-snippet-pack|', 1),
(12, 'Live Sass Compiler', 'Simplement pour faire du SASS sans se briser les burnes à l\'installer sur le PC', NULL, 'https://marketplace.visualstudio.com/items?itemName=ritwickdey.live-sass|', 1),
(13, 'Live Server', 'Lancer un serveur locale avec un Hot Reload, une sacré gain de temps', NULL, 'https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer|', 1),
(14, 'Live Share', 'Collaboration en équipe sur un même projet, même principe qu\'un Google Doc mais dans VS Code', NULL, 'https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare|', 1),
(15, 'Material Icon Theme', 'Pour des icones de fichier et dossier tout mignon dans l\'explorateur VS Code', NULL, 'https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme|', 1),
(16, 'Color Highlight', 'Colorise la couleur choisi sur le nom de la couleur (rgba, rgb, hex, etc)', NULL, 'https://marketplace.visualstudio.com/items?itemName=naumovs.color-highlight|', 1),
(17, 'W3C Web Validator', 'Vérification du code', NULL, 'https://marketplace.visualstudio.com/items?itemName=CelianRiboulet.webvalidator|', 1),
(18, 'MySQL', 'Connexion à une base de donnée et intéraction avec elle', NULL, 'https://marketplace.visualstudio.com/items?itemName=cweijan.vscode-mysql-client2', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tools`
--
ALTER TABLE `tools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `tools`
--
ALTER TABLE `tools`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `tools`
--
ALTER TABLE `tools`
  ADD CONSTRAINT `tools_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
