INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES
(NULL, 'Ail'),
(NULL, 'Ananas'),
(NULL, 'Artichaut'),
(NULL, 'Bacon'),
(NULL, 'Base Tomate'),
(NULL, 'Base crème'),
(NULL, 'Champignon'),
(NULL, 'Chèvre'),
(NULL, 'Cresson'),
(NULL, 'Emmental'),
(NULL, 'Gorgonzola'),
(NULL, 'Jambon cuit'),
(NULL, 'Jambon fumé'),
(NULL, 'Mozarella'),
(NULL, 'Oeuf'),
(NULL, 'Oignon'),
(NULL, 'Olive noire'),
(NULL, 'Olive verte'),
(NULL, 'Parmesan'),
(NULL, 'Piment'),
(NULL, 'Poivre'),
(NULL, 'Pomme de terre'),
(NULL, 'Raclette'),
(NULL, 'Salami'),
(NULL, 'Tomate cerise');

INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix_focaccia`) VALUES
(NULL, 'Mozaccia', 9.80),
(NULL, 'Gorgonzollaccia', 10.80),
(NULL, 'Raclaccia', 8.90),
(NULL, 'Emmentalaccia', 9.80),
(NULL, 'Tradizione', 8.90),
(NULL, 'Hawaienne', 11.20),
(NULL, 'Américaine', 10.80),
(NULL, 'Paysanne', 12.80);

INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES
(1,5),(1,14),(1,9),(1,13),(1,1),(1,3),(1,7),(1,19),(1,21),(1,17),
(2,5),(2,11),(2,9),(2,1),(2,7),(2,19),(2,21),(2,17),
(3,5),(3,23),(3,9),(3,1),(3,7),(3,19),(3,21),
(4,6),(4,10),(4,9),(4,7),(4,19),(4,21),(4,16),
(5,5),(5,14),(5,9),(5,12),(5,7),(5,19),(5,21),(5,17),(5,18),
(6,5),(6,14),(6,9),(6,4),(6,2),(6,20),(6,19),(6,21),(6,17),
(7,5),(7,14),(7,9),(7,4),(7,22),(7,19),(7,21),(7,17),
(8,6),(8,8),(8,9),(8,22),(8,13),(8,1),(8,3),(8,7),(8,19),(8,21),(8,17),(8,15);

INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES
(NULL, 'Coca-cola'),
(NULL, 'Cristalline'),
(NULL, 'Monster'),
(NULL, 'Pepsico');

INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES
(NULL, 'Coca-cola zéro', '1'),
(NULL, 'Coca-cola original', '1'),
(NULL, 'Fanta citron', '1'),
(NULL, 'Fanta orange', '1'),
(NULL, 'Capri-sun', '1'),
(NULL, 'Pepsi', '4'),
(NULL, 'Pepsi Max Zéro', '4'),
(NULL, 'Lipton zéro citron', '4'),
(NULL, 'Lipton Peach', '4'),
(NULL, 'Monster energy ultra gold', '3'),
(NULL, 'Monster energy ultra blue', '3'),
(NULL, 'Eau de source', '2');