--------------------------------------------
-- SQL serveur
---------------------------------------------
--
-- Base de données :  `resto_concept`

-- CREATE SCHEMA IF NOT EXISTS resto_concept DEFAULT CHARACTER SET utf8 ;
--

-- --------------------------------------------------------

--
-- Structure de la table `adresses`
--




CREATE TABLE adresses (
  [idAdrs] int NOT NULL IDENTITY,
  [noCvq] varchar(10) DEFAULT NULL,
  [Rue] varchar(50) NOT NULL,
  [ville] varchar(50) DEFAULT NULL,
  [province] varchar(2) DEFAULT NULL,
  [codePostal] char(7) DEFAULT NULL,
  [telephone] char(15) DEFAULT NULL,
	PRIMARY KEY ([idAdrs])
) ;



-- --------------------------------------------------------
--
-- Structure de la table `typecomptes`
--

CREATE TABLE typecomptes (
  [idtype] int NOT NULL IDENTITY,
  [nomType] varchar(35) NOT NULL,
  	PRIMARY KEY ([idtype])
) ;



--
-- Structure de la table `comptes`
--

CREATE TABLE comptes (
  [noCompte] int NOT NULL IDENTITY,
  [notpCmpt] int NOT NULL,
  [prenom] varchar(50) NOT NULL,
  [nom] varchar(50) NOT NULL,
  [noAdrs] int NOT NULL,
  [telephone] varchar(25) DEFAULT NULL,
  [Courriel] varchar(100) DEFAULT NULL,
  [nomUtilisateur] varchar(20) NOT NULL,
  [motPasse] varchar(40) NOT NULL,
  [Actif] smallint NOT NULL DEFAULT '1',
  [commentaires] varchar(250) NOT NULL,
	PRIMARY KEY ([noCompte])
,
CONSTRAINT [comptes_ibfk_1]
    FOREIGN KEY ([notpCmpt])
    REFERENCES typecomptes ([idtype]),
CONSTRAINT [adrs_ibfk_2]
    FOREIGN KEY ([noAdrs])
    REFERENCES adresses ([idAdrs])
) ;

CREATE INDEX [idx_nomUtilisateur] ON comptes ([nomUtilisateur] ASC);



-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE categories (
  [idCategorie] int NOT NULL IDENTITY,
  [nomCategorie] varchar(100) NOT NULL,
	PRIMARY KEY ([idCategorie])
) ;

CREATE INDEX [idx_nomCategorie] ON categories ([nomCategorie] ASC);


CREATE TABLE produits (
  [idProduit] int NOT NULL IDENTITY,
  [nomProd] varchar(100) NOT NULL,
  [descProd] varchar(500) NOT NULL,
  [prixProd] decimal(10,0) NOT NULL,
  [imgProd] varchar(1000) NOT NULL,
  [idCategorie] int NOT NULL,
  PRIMARY KEY ([idProduit])
 ,
  CONSTRAINT [prod_ibfk_1]
    FOREIGN KEY ([idCategorie])
    REFERENCES categories ([idCategorie])
) ;

CREATE INDEX [idx_prod_ibfk] ON produits ([nomProd] ASC);


------------------------------------------------------

--
-- Structure de la table `restaurants`
--

CREATE TABLE restaurants (
  [idResto] int NOT NULL IDENTITY,
  [nomResto] varchar(150) NOT NULL,
  [idAdrs] int NOT NULL,
  [Actif] smallint NOT NULL DEFAULT '1',
	PRIMARY KEY ([idResto])
,
	CONSTRAINT [restaurants_ibfk_1]
		FOREIGN KEY ([idAdrs])
		REFERENCES adresses ([idAdrs])
) ;

CREATE INDEX [idx_nomResto] ON restaurants ([nomResto] ASC);

--
-- Structure de la table `menus`
--

CREATE TABLE menus (
  [idMenu] int NOT NULL IDENTITY,
  [titreMenu] varchar(100) NOT NULL,
  [actif] smallint NOT NULL DEFAULT '1',
  [commentaires] varchar(200) NOT NULL,
  [idResto] int NOT NULL,
        PRIMARY KEY ([idMenu])
       ,
	CONSTRAINT [Menus_ibfk_1]
		FOREIGN KEY ([idResto])
		REFERENCES restaurants ([idResto])
) ;

CREATE INDEX [idx_titreMenu] ON menus ([titreMenu] ASC);


-- --------------------------------------------------------

--
-- Structure de la table `menu_produits`
--

CREATE TABLE menu_produits (
  [idItem] int NOT NULL IDENTITY,
  [idMenu] int NOT NULL,
  [idProduit] int NOT NULL,
          PRIMARY KEY ([idItem]),
  	CONSTRAINT [menuprod_ibfk_1]
		FOREIGN KEY ([idMenu])
		REFERENCES menus ([idMenu]),
	CONSTRAINT [menuprod_ibfk_2]
		FOREIGN KEY ([idProduit])
		REFERENCES produits ([idProduit])
) ;

-- --------------------------------------------------------

--
-- Structure de la table `etatcommandes`
--

CREATE TABLE etatcommandes (
  [idEtat] int NOT NULL IDENTITY,
  [Etat] varchar(35) NOT NULL,
          PRIMARY KEY ([idEtat])
) ;



--
-- Structure de la table `modespaiement`
--

CREATE TABLE modespaiement (
  [idMode] int NOT NULL IDENTITY,
  [description] varchar(100) NOT NULL,
	PRIMARY KEY ([idMode])
) ;



--
-- Structure de la table `commandes`
--

CREATE TABLE commandes (
  [idCommande] int NOT NULL IDENTITY,
  [datecommande] datetime2(0) NOT NULL,
  [idetat] int NOT NULL,
  [idModePaiement] int NOT NULL,
  [noClient] int NOT NULL,
  [noAdrs] int NOT NULL,
  [idMenu] int NOT NULL,
  [commentaires] varchar(250) NOT NULL,
PRIMARY KEY ([idCommande]),
	CONSTRAINT [commandes_ibfk_1]
		FOREIGN KEY ([idModePaiement])
		REFERENCES modespaiement ([idMode]),
	CONSTRAINT [commandes_ibfk_2]
		FOREIGN KEY ([noClient])
		REFERENCES comptes ([noCompte]),
	CONSTRAINT [commandes_ibfk_3]
		FOREIGN KEY ([noAdrs])
		REFERENCES adresses ([idAdrs]),
	CONSTRAINT [commandes_ibfk_4]
		FOREIGN KEY ([idetat])
		REFERENCES etatcommandes ([idEtat]),
	CONSTRAINT [commandes_ibfk_5]
		FOREIGN KEY ([idMenu])
		REFERENCES menus ([idMenu])
        
);



-- --------------------------------------------------------

--
-- Structure de la table `items_commande`
--

CREATE TABLE items_commande (
  [noCommande] int NOT NULL,
  [noProduit] int NOT NULL,
  [qte] int NOT NULL,
  	CONSTRAINT [itemcommandes_ibfk_1]
		FOREIGN KEY ([noCommande])
		REFERENCES commandes ([idCommande]),
        	CONSTRAINT [itemcommandes_ibfk_2]
		FOREIGN KEY ([noProduit])
		REFERENCES produits ([idProduit])
) ;


-- --------------------------------------------------------


-- --------------------------------------------------------


-- ------------------------------------------------------
   


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



--
-- Déchargement des données de la table `adresses`
--
SET IDENTITY_INSERT adresses ON
INSERT INTO adresses ([idAdrs], [noCvq], [Rue], [ville], [province], [codePostal], [telephone]) VALUES
(1, '154', 'la lune', 'Quebec', 'QC', 'G1X 3T3', '418-547-1234'),
(2, '198', 'Mars', 'Quebec', 'QC', 'G1K 3C3', '418-524-8484'),
(3, '128', 'Jupiter', 'Quebec', 'QC', 'G1K 3C4', '418-524-3414'),
(4, '587', 'La terre', 'Quebec', 'QC', 'G2F 4T5', '418-148-1482'),
(5, '569', 'Le soleil', 'Quebec', 'QC', 'G1F 4T7', '418-952-3654');
SET IDENTITY_INSERT adresses OFF

--
-- Déchargement des données de la table `typecomptes`
--
SET IDENTITY_INSERT typecomptes ON
INSERT INTO typecomptes ([idtype], [nomType]) VALUES
(1, 'Admin'),
(2, 'Gérant'),
(3, 'Chef'),
(4, 'Livreur'),
(5, 'Client');
SET IDENTITY_INSERT typecomptes OFF

--
-- Déchargement des données de la table `comptes`
--
SET IDENTITY_INSERT comptes ON
INSERT INTO comptes ([noCompte], [notpCmpt], [prenom], [nom], [noAdrs], [telephone], [Courriel], [nomUtilisateur], [motPasse], [Actif], [commentaires]) VALUES
(1, 1, 'Alain', 'Bernad', 1, '418-148-1482', 'alain@yahoo.com', 'alainber', '12345678', 1, ''),
(2, 3, 'bob', 'LE super', 1, '418-952-3654', 'monchef@concept.ca', 'lesuperchef', '123456789', 1, ''),
(3, 5, 'Eric', 'lavisite', 2, '418-148-2382', 'labonne@yahoo.com', 'ericlavivi', '12345678', 1, ''),
(4, 5, 'Marie', 'La france', 3, '418-952-5754', 'france@gmail.com', 'francemarie', '123456789', 1, '');

SET IDENTITY_INSERT comptes OFF


--
-- Déchargement des données de la table `categories`
--
SET IDENTITY_INSERT categories ON
INSERT INTO categories ([idCategorie], [nomCategorie]) VALUES
(1, 'Promotions'),
(2, 'Pizza'),
(3, 'Poutines'),
(4, 'Hamburgers'),
(5, 'Poulet'),
(6, 'Pates'),
(7, 'Salade'),
(8, 'Desserts'),
(9, 'Boissons');


SET IDENTITY_INSERT categories OFF
--
-- Déchargement des données de la table `produits`
--
SET IDENTITY_INSERT produits ON
INSERT INTO produits ([idProduit], [nomProd], [descProd], [prixProd], [imgProd], [idCategorie]) VALUES
(1, 'Duo pizza 12 pouces', 'Obtenez deux pizzas de notre éventail complet pour un prix incroyable !', '16', 'images/deuxpizzas.jpg', 1),
(2, 'Deux poutines', 'Obtenez deux poutines de format régulier pour seulement 15$ !', '15', 'images/poutine.jpg', 1),
(3, 'Le burger du Prince', 'Le burger du Prince, frite régulière et canette de liqueur de votre choix.', '9', 'images/trioprince.jpg', 1),
(4, 'La lasagne du chef', 'La lasagne suprême de notre chef émoustillera vos papilles !', '14', 'images/lasagnechef.jpg', 1),
(5, 'Special du chef', 'Description: Obtenez deux pizzas de notre ï¿½ventail complet pour un prix incroyable !', '18', 'images/pizzaquebecoise.jpg', 2),
(6, 'Pizza All-Dressed', 'Une pizza composée de fromage, peperonnis, champignons et piments verts.', '8', 'images/pizzaalldressed.jpg', 2),
(7, 'Pizza québécoise', 'Sauce tomates, boeuf haché, oignons, fromage.', '10', 'images/pizzaquebecoise.jpg', 2),
(8, 'Club sandwich (viande blanche)', 'Des tranches de poulet rôti (viande blanche), tomates, bacon, laitue frisée entre des tranches de pain grillé, le tout servi avec l’accompagnement de votre choix, sauce BBQ, salade de chou et 2 sachets de mayonnaise. ', '14', 'images/clubSandwich.jpg', 4),
(9, 'Burger artisan', 'Effiloché de porc nappé de sauce whisky BBQ, rondelles d’oignon, salade de chou, laitue frisée et tartinade de poivrons rouges grillés. Le tout servi dans un pain burger avec graines de pavot. rn', '12', 'images/burgerPorcEffiloche.jpg', 4),
(10, 'Économix avec boisson gazeuse (2 à 9 repas)', 'Repas pour 2 personnes et plus (prix indiqué par personne). Combinaison de quarts de poulet cuisse et quarts de poulet poitrine (50%/50%). ', '10', 'images/economixBoissonGazeuse.jpg', 1),
(11, 'Shish Royal', 'Délicieuse délicatesse exotique.', '6', 'images/shishTaouk.jpg', 7),
(12, 'Spaghetti Yolonaise', 'Delicieux spaghetti maison', '10', 'images/spagYolonaise.jpg', 6);
SET IDENTITY_INSERT produits OFF
-- --
--
-- Déchargement des données de la table `restaurants`
--
SET IDENTITY_INSERT restaurants ON
INSERT INTO restaurants ([idResto], [nomResto], [idAdrs], [Actif]) VALUES
(1, 'La lune brillante', 1, 1),
(2, 'Mon Mars', 2, 1),
(3, 'Velo', 3, 0);
SET IDENTITY_INSERT restaurants OFF
--
-- Déchargement des données de la table `menus`
SET IDENTITY_INSERT menus ON
INSERT INTO menus ([idMenu], [titreMenu], [actif], [commentaires], [idResto]) VALUES
(1, 'Menu de l''été sur la lune', 1, '', 1),
(2, 'Menu de l''hiver sur la lune', 0, 'n''est pas actif', 1),
(3, 'Menu festival', 1, '', 2),
(4, 'Un menu santé ', 1, 'Super humm', 3);

SET IDENTITY_INSERT menus OFF

SET IDENTITY_INSERT menu_produits ON

--
-- Déchargement des données de la table `menu_produits`
--

INSERT INTO menu_produits ([idItem], [idMenu], [idProduit]) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 4),
(4, 1, 8),
(5, 1, 9),
(6, 1, 10),
(7, 2, 12),
(8, 2, 11),
(9, 2, 9),
(10, 2, 6),
(11, 2, 8),
(12, 2, 1),
(13, 3, 7),
(14, 3, 3);
SET IDENTITY_INSERT menu_produits OFF

SET IDENTITY_INSERT etatcommandes ON
--
-- Déchargement des données de la table `etatcommandes`
--

INSERT INTO etatcommandes ([idEtat], [Etat]) VALUES
(0, 'Refusée'),
(1, 'Acceptée'),
(2, 'En préparation'),
(3, 'Prête à livrer'),
(4, 'En livraison'),
(5, 'Livrée avec succès'),
(6, 'Problème de livraison'),
(7, 'Autre');


SET IDENTITY_INSERT etatcommandes OFF

SET IDENTITY_INSERT modespaiement ON

--
-- Déchargement des données de la table `modespaiement`
--

INSERT INTO modespaiement ([idMode], [description]) VALUES
(1, 'Argents comptants'),
(2, 'Crédit'),
(3, 'Débit'),
(4, 'Coupons'),
(5, 'Carte cadeau');
SET IDENTITY_INSERT modespaiement OFF


SET IDENTITY_INSERT commandes ON
--
-- Déchargement des données de la table `commandes`
--

INSERT INTO commandes ([idCommande], [datecommande], [idetat], [idModePaiement], [noClient], [noAdrs], [idMenu], [commentaires]) VALUES
(1, '2017-10-03 01:30:00', 5, 2, 3, 2, 1, ''),
(2, '2017-11-13 11:33:18', 3, 1, 3, 2, 1, ''),
(3, '2017-12-11 11:30:10', 1, 2, 3, 4, 2, ''),
(4, '2017-11-10 12:32:20', 3, 4, 2, 3, 1, ''),
(5, '2017-12-12 10:39:50', 4, 1, 3, 3, 3, '');

SET IDENTITY_INSERT commandes OFF



INSERT INTO items_commande ([noCommande], [noProduit], [qte]) VALUES
(2, 2, 1),
(2, 1, 4),
(2, 8, 3),
(1, 1, 1),
(1, 4, 1),
(1, 2, 1),
(3, 11, 1),
(3, 12, 1),
(4, 2, 20),
(4, 4, 1),
(4, 8, 1),
(4, 10, 10),
(5, 11, 1);






