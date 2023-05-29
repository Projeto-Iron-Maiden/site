Create database Iron_Maiden;
USE Iron_Maiden;
Drop database Iron_Maiden;
DROP table usuario;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
	idade INT,
	fkAlbum_Favorito INT,
	CONSTRAINT fkAlbFav FOREIGN KEY (fkAlbum_Favorito)
	REFERENCES album(idAlbum)
);

CREATE TABLE MembrosBanda (
  idMembro INT PRIMARY KEY,
  nome VARCHAR(50),
  funcao VARCHAR(50),
  DtEntrada date,
  DtSaida date
);

CREATE TABLE InformacoesPessoais (
  idInfo INT PRIMARY KEY,
  dtNasc date,
  localizacao VARCHAR(50),
   fkMembro INT,
  FOREIGN KEY (fkMembro) REFERENCES MembrosBanda(idMembro)
);

Create table album (
idAlbum INT PRIMARY KEY,
Nome VARCHAR(50),
DtLançamento date,
QtdMusicas INT,
DuraçãoTotal VARCHAR(50),
Gravadora VARCHAR(50),
Vezes_Selecionado INT
);

Create table musica (
idMusica INT PRIMARY KEY,
Titulo VARCHAR (50),
Numero_faixa int,
Gênero VARCHAR(50),
Duração VARCHAR(50),
fkAlbum INT,
constraint fkAlb foreign key (fkAlbum)
	references album(idAlbum)
);
 
 INSERT INTO album (idAlbum, Nome, DtLançamento, QtdMusicas, DuraçãoTotal, Gravadora)
VALUES 
    (1, 'Iron Maiden', '1980-04-14', 8, '40:06 min', 'EMI'),
    (2, 'Killers', '1981-02-02', 10, '38:49 min', 'EMI'),
    (3, 'The Number of the Beast', '1982-03-29', 8, '39:14 min', 'EMI'),
    (4, 'Piece of Mind', '1983-05-16', 9, '45:04 min', 'EMI'),
    (5, 'Powerslave', '1984-09-03', 8, '51:12 min', 'EMI'),
    (6, 'Somewhere in Time', '1986-09-29', 8, '51:17 min', 'EMI'),
    (7, 'Seventh Son of a Seventh Son', '1988-04-11', 8, '44:06 min', 'EMI'),
    (8, 'No Prayer for the Dying', '1990-10-01', 10, '43:53 min', 'EMI'),
    (9, 'Fear of the Dark', '1992-05-11', 12, '58:37 min', 'EMI'),
    (10, 'The X Factor', '1995-10-02', 11, '66:57 min', 'EMI'),
    (11, 'Virtual XI', '1998-03-23', 8, '53:19 min', 'EMI'),
    (12, 'Brave New World', '2000-05-29', 10, '66:57 min', 'EMI'),
    (13, 'Dance of Death', '2003-09-08', 11, '67:30 min', 'EMI'),
    (14, 'A Matter of Life and Death', '2006-08-28', 10, '72:08min', 'EMI'),
    (15, 'The Final Frontier', '2010-08-13', 10, '76:35 min', 'EMI'),
    (16, 'The Book of Souls', '2015-09-04', 11, '92:11 min', 'Parlophone'),
    (17, 'Senjutsu', '2021-09-03', 10, '82:52', 'Parlophone');
    
SELECT * FROM album;

INSERT INTO musica (idMusica, Titulo, Numero_faixa, Gênero, Duração, fkAlbum)
VALUES 
    -- Músicas do álbum "Iron Maiden"
    (1, 'Prowler', 1, 'Heavy Metal', '3:55 min', 1),
    (2, 'Remember Tomorrow', 2, 'Heavy Metal', '5:27 min', 1),
    (3, 'Running Free', 3, 'Heavy Metal', '3:17 min', 1),
    (4, 'Phantom of the Opera', 4, 'Heavy Metal', '7:20 min', 1),
    (5, 'Transylvania', 5, 'Instrumental', '4:05 min', 1),
    (6, 'Strange World', 6, 'Heavy Metal', '5:45 min', 1),
    (7, 'Sanctuary', 7, 'Heavy Metal', '3:12 min', 1),
    (8, 'Charlotte the Harlot', 8, 'Heavy Metal', '4:12 min', 1),

    -- Músicas do álbum "Killers"
    (9, 'The Ides of March', 1, 'Heavy Metal', '1:45 min', 2),
    (10, 'Wrathchild', 2, 'Heavy Metal', '2:54 min', 2),
    (11, 'Murders in the Rue Morgue', 3, 'Heavy Metal', '4:18 min', 2),
    (12, 'Another Life', 4, 'Heavy Metal', '3:22 min', 2),
    (13, 'Genghis Khan', 5, 'Instrumental', '3:06 min', 2),
    (14, 'Innocent Exile', 6, 'Heavy Metal', '3:51 min', 2),
    (15, 'Killers', 7, 'Heavy Metal', '4:58 min', 2),
    (16, 'Prodigal Son', 8, 'Heavy Metal', '6:11 min', 2),
    (17, 'Purgatory', 9, 'Heavy Metal', '3:20 min', 2),
    (18, 'Drifter', 10, 'Heavy Metal', '4:48 min', 2),
    
    -- Músicas do álbum "The Number of the Beast"
	(19, 'Invaders', 1, 'Heavy Metal', '3:20 min', 3),
	(20, 'Children of the Damned', 2, 'Heavy Metal', '4:35 min', 3),
	(21, 'The Prisoner', 3, 'Heavy Metal', '6:00 min', 3),
	(22, '22 Acacia Avenue', 4, 'Heavy Metal', '6:38 min', 3),
	(23, 'The Number of the Beast', 5, 'Heavy Metal', '4:52 min', 3),
	(24, 'Run to the Hills', 6, 'Heavy Metal', '3:54 min', 3),
	(25, 'Gangland', 7, 'Heavy Metal', '3:47 min', 3),
	(26, 'Hallowed Be Thy Name', 8, 'Heavy Metal', '7:11 min', 3),
    
    -- Músicas do álbum "Piece of Mind"
	(27, 'Where Eagles Dare', 1, 'Heavy Metal', '6:08 min', 4),
	(28, 'Revelations', 2, 'Heavy Metal', '6:49 min', 4),
	(29, 'Flight of Icarus', 3, 'Heavy Metal', '3:49 min', 4),
	(30, 'Die with Your Boots On', 4, 'Heavy Metal', '5:28 min', 4),
	(31, 'The Trooper', 5, 'Heavy Metal', '4:11 min', 4),
	(32, 'Still Life', 6, 'Heavy Metal', '4:56 min', 4),
	(33, 'Quest for Fire', 7, 'Heavy Metal', '3:40 min', 4),
	(34, 'Sun and Steel', 8, 'Heavy Metal', '3:26 min', 4),
	(35, 'To Tame a Land', 9, 'Heavy Metal', '7:26 min', 4),
    
    -- Músicas do álbum "Powerslave"
	(36, 'Aces High', 1, 'Heavy Metal', '4:31 min', 5),
	(37, '2 Minutes to Midnight', 2, 'Heavy Metal', '6:00 min', 5),
	(38, 'Losfer Words (Big ''Orra)', 3, 'Instrumental', '4:15 min', 5),
	(39, 'Flash of the Blade', 4, 'Heavy Metal', '4:05 min', 5),
	(40, 'The Duellists', 5, 'Heavy Metal', '6:06 min', 5),
	(41, 'Back in the Village', 6, 'Heavy Metal', '5:03 min', 5),
	(42, 'Powerslave', 7, 'Heavy Metal', '7:11 min', 5),
	(43, 'Rime of the Ancient Mariner', 8, 'Heavy Metal', '13:45 min', 5),
    
    -- Músicas do álbum "Somewhere in Time"
	(44, 'Caught Somewhere in Time', 1, 'Heavy Metal', '7:26 min', 6),
	(45, 'Wasted Years', 2, 'Heavy Metal', '5:06 min', 6),
	(46, 'Sea of Madness', 3, 'Heavy Metal', '5:42 min', 6),
	(47, 'Heaven Can Wait', 4, 'Heavy Metal', '7:24 min', 6),
	(48, 'The Loneliness of the Long Distance Runner', 5, 'Heavy Metal', '6:31 min', 6),
	(49, 'Stranger in a Strange Land', 6, 'Heavy Metal', '5:43 min', 6),
	(50, 'Déjà Vu', 7, 'Heavy Metal', '4:56 min', 6),
	(51, 'Alexander the Great', 8, 'Heavy Metal', '8:35 min', 6),
    
    -- Músicas do álbum "Seventh Son of a Seventh Son"
	(52, 'Moonchild', 1, 'Heavy Metal', '5:41 min', 7),
	(53, 'Infinite Dreams', 2, 'Heavy Metal', '6:09 min', 7),
	(54, 'Can I Play with Madness', 3, 'Heavy Metal', '3:31 min', 7),
	(55, 'The Evil That Men Do', 4, 'Heavy Metal', '4:34 min', 7),
	(56, 'Seventh Son of a Seventh Son', 5, 'Heavy Metal', '9:53 min', 7),
	(57, 'The Prophecy', 6, 'Heavy Metal', '5:05 min', 7),
	(58, 'The Clairvoyant', 7, 'Heavy Metal', '4:27 min', 7),
	(59, 'Only the Good Die Young', 8, 'Heavy Metal', '4:42 min', 7),
    
    -- Músicas do álbum "No Prayer for the Dying"
	(60, 'Tailgunner', 1, 'Heavy Metal', '4:13 min', 8),
	(61, 'Holy Smoke', 2, 'Heavy Metal', '3:49 min', 8),
	(62, 'No Prayer for the Dying', 3, 'Heavy Metal', '4:23 min', 8),
	(63, 'Public Enema Number One', 4, 'Heavy Metal', '4:14 min', 8),
	(64, 'Fates Warning', 5, 'Heavy Metal', '4:11 min', 8),
	(65, 'The Assassin', 6, 'Heavy Metal', '4:18 min', 8),
	(66, 'Run Silent Run Deep', 7, 'Heavy Metal', '4:35 min', 8),
	(67, 'Hooks in You', 8, 'Heavy Metal', '4:08 min', 8),
	(68, 'Bring Your Daughter... to the Slaughter', 9, 'Heavy Metal', '4:45 min', 8),
	(69, 'Mother Russia', 10, 'Heavy Metal', '5:32 min', 8),
    
    -- Músicas do álbum "Fear of the Dark"
	(70, 'Be Quick or Be Dead', 1, 'Heavy Metal', '3:24 min', 9),
	(71, 'From Here to Eternity', 2, 'Heavy Metal', '3:38 min', 9),
	(72, 'Afraid to Shoot Strangers', 3, 'Heavy Metal', '6:56 min', 9),
	(73, 'Fear Is the Key', 4, 'Heavy Metal', '5:35 min', 9),
	(74, 'Childhood''s End', 5, 'Heavy Metal', '4:40 min', 9),
	(75, 'Wasting Love', 6, 'Heavy Metal', '5:50 min', 9),
	(76, 'The Fugitive', 7, 'Heavy Metal', '4:54 min', 9),
	(77, 'Chains of Misery', 8, 'Heavy Metal', '3:37 min', 9),
	(78, 'The Apparition', 9, 'Heavy Metal', '3:54 min', 9),
	(79, 'Judas Be My Guide', 10, 'Heavy Metal', '3:08 min', 9),
	(80, 'Weekend Warrior', 11, 'Heavy Metal', '5:39 min', 9),
	(81, 'Fear of the Dark', 12, 'Heavy Metal', '7:18 min', 9),
    
    -- Músicas do álbum "The X Factor"
	(82, 'Sign of the Cross', 1, 'Heavy Metal', '11:17 min', 10),
	(83, 'Lord of the Flies', 2, 'Heavy Metal', '5:03 min', 10),
	(84, 'Man on the Edge', 3, 'Heavy Metal', '4:11 min', 10),
	(85, 'Fortunes of War', 4, 'Heavy Metal', '7:24 min', 10),
	(86, 'Look for the Truth', 5, 'Heavy Metal', '5:10 min', 10),
	(87, 'The Aftermath', 6, 'Heavy Metal', '6:20 min', 10),
	(88, 'Judgement of Heaven', 7, 'Heavy Metal', '5:12 min', 10),
	(89, 'Blood on the World''s Hands', 8, 'Heavy Metal', '5:58 min', 10),
	(90, 'The Edge of Darkness', 9, 'Heavy Metal', '6:39 min', 10),
	(91, '2 A.M.', 10, 'Heavy Metal', '5:37 min', 10),
	(92, 'The Unbeliever', 11, 'Heavy Metal', '8:10 min', 10),
    
    -- Músicas do álbum "Virtual XI"
	(93, 'Futureal', 1, 'Heavy Metal', '2:55 min', 11),
	(94, 'The Angel and the Gambler', 2, 'Heavy Metal', '9:52 min', 11),
	(95, 'Lightning Strikes Twice', 3, 'Heavy Metal', '4:50 min', 11),
	(96, 'The Clansman', 4, 'Heavy Metal', '9:06 min', 11),
	(97, 'When Two Worlds Collide', 5, 'Heavy Metal', '6:17 min', 11),
	(98, 'The Educated Fool', 6, 'Heavy Metal', '6:44 min', 11),
	(99, 'Don''t Look to the Eyes of a Stranger', 7, 'Heavy Metal', '8:03 min', 11),
	(100, 'Como Estais Amigos', 8, 'Heavy Metal', '5:30 min', 11),
    
    -- Músicas do álbum "Brave New World"
	(101, 'The Wicker Man', 1, 'Heavy Metal', '4:35 min', 12),
	(102, 'Ghost of the Navigator', 2, 'Heavy Metal', '6:50 min', 12),
	(103, 'Brave New World', 3, 'Heavy Metal', '6:18 min', 12),
	(104, 'Blood Brothers', 4, 'Heavy Metal', '7:14 min', 12),
	(105, 'The Mercenary', 5, 'Heavy Metal', '4:42 min', 12),
	(106, 'Dream of Mirrors', 6, 'Heavy Metal', '9:21 min', 12),
	(107, 'The Fallen Angel', 7, 'Heavy Metal', '4:00 min', 12),
	(108, 'The Nomad', 8, 'Heavy Metal', '9:06 min', 12),
	(109, 'Out of the Silent Planet', 9, 'Heavy Metal', '6:25 min', 12),
	(110, 'The Thin Line Between Love and Hate', 10, 'Heavy Metal', '8:27 min', 12),
    
    -- Músicas do álbum "Dance of Death"
	(111, 'Wildest Dreams', 1, 'Heavy Metal', '3:52 min', 13),
	(112, 'Rainmaker', 2, 'Heavy Metal', '3:49 min', 13),
	(113, 'No More Lies', 3, 'Heavy Metal', '7:21 min', 13),
	(114, 'Montségur', 4, 'Heavy Metal', '5:50 min', 13),
	(115, 'Dance of Death', 5, 'Heavy Metal', '8:36 min', 13),
	(116, 'Gates of Tomorrow', 6, 'Heavy Metal', '5:12 min', 13),
	(117, 'New Frontier', 7, 'Heavy Metal', '5:04 min', 13),
	(118, 'Paschendale', 8, 'Heavy Metal', '8:28 min', 13),
	(119, 'Face in the Sand', 9, 'Heavy Metal', '6:31 min', 13),
	(120, 'Age of Innocence', 10, 'Heavy Metal', '6:10 min', 13),
	(121, 'Journeyman', 11, 'Heavy Metal', '7:07 min', 13),
    
	-- Músicas do álbum "The Final Frontier"
	(132, 'Satellite 15... The Final Frontier', 1, 'Heavy Metal', '8:40 min', 15),
	(133, 'El Dorado', 2, 'Heavy Metal', '6:49 min', 15),
	(134, 'Mother of Mercy', 3, 'Heavy Metal', '5:20 min', 15),
	(135, 'Coming Home', 4, 'Heavy Metal', '5:52 min', 15),
	(136, 'The Alchemist', 5, 'Heavy Metal', '4:29 min', 15),
	(137, 'Isle of Avalon', 6, 'Heavy Metal', '9:06 min', 15),
	(138, 'Starblind', 7, 'Heavy Metal', '7:48 min', 15),
	(139, 'The Talisman', 8, 'Heavy Metal', '9:03 min', 15),
	(140, 'The Man Who Would Be King', 9, 'Heavy Metal', '8:28 min', 15),
	(141, 'When the Wild Wind Blows', 10, 'Heavy Metal', '10:59 min', 15),
    
	-- Músicas do álbum "The Book of Souls"
	(142, 'If Eternity Should Fail', 1, 'Heavy Metal', '8:28 min', 16),
	(143, 'Speed of Light', 2, 'Heavy Metal', '5:01 min', 16),
	(144, 'The Great Unknown', 3, 'Heavy Metal', '6:37 min', 16),
	(145, 'The Red and the Black', 4, 'Heavy Metal', '13:33 min', 16),
	(146, 'When the River Runs Deep', 5, 'Heavy Metal', '5:52 min', 16),
	(147, 'The Book of Souls', 6, 'Heavy Metal', '10:27 min', 16),
	(148, 'Death or Glory', 7, 'Heavy Metal', '5:13 min', 16),
	(149, 'Shadows of the Valley', 8, 'Heavy Metal', '7:32 min', 16),
	(150, 'Tears of a Clown', 9, 'Heavy Metal', '4:59 min', 16),
	(151, 'The Man of Sorrows', 10, 'Heavy Metal', '6:28 min', 16),
	(152, 'Empire of the Clouds', 11, 'Heavy Metal', '18:01 min', 16),
    
    -- Músicas do álbum "Senjutsu"
	(153, 'Senjutsu', 1, 'Heavy Metal', '8:20 min', 17),
	(154, 'Stratego', 2, 'Heavy Metal', '4:59 min', 17),
	(155, 'The Writing on the Wall', 3, 'Heavy Metal', '6:13 min', 17),
	(156, 'Lost in a Lost World', 4, 'Heavy Metal', '9:31 min', 17),
	(157, 'Days of Future Past', 5, 'Heavy Metal', '4:03 min', 17),
	(158, 'The Time Machine', 6, 'Heavy Metal', '7:09 min', 17),
	(159, 'Darkest Hour', 7, 'Heavy Metal', '7:20 min', 17),
	(160, 'Death of the Celts', 8, 'Heavy Metal', '10:20 min', 17),
	(161, 'The Parchment', 9, 'Heavy Metal', '12:39 min', 17),
	(162, 'Hell on Earth', 10, 'Heavy Metal', '11:19 min', 17);
    
    select * from musica;
    select Vezes_selecionado from album;
    UPDATE album set Vezes_Selecionado = 1 where idAlbum = 1;
    