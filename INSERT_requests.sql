-- INSERT ЗАПРОСЫ --

-- ИСПОЛНИТЕЛИ --
INSERT INTO performer(named)
	VALUES 
		('Пикник'),
		('Crematory'),
		('Foo Fighters'),
		('In Extremo'),
		('Marilyn Manson'),
		('Ozzy Osbourne'),
		('Rob Zombie'),
		('Theory of a Deadman'),
		('Tiamat');

-- ЖАНРЫ --
INSERT INTO genre(title)
	VALUES 
		('Rock'),
		('Gothic Rock'),
		('Folk-Rock'),
		('Industrial'),
		('Hard Rock'),
		('Horror Metal'),
		('Alt. Rock'),
		('Gothic Metal');
	
-- ИСПОЛНИТЕЛЬ ЖАНР --
INSERT INTO performer_genre(name_id,genre_id)
	VALUES 
		(1,1),
		(2,2),
		(3,1),
		(4,3),
		(5,4),
		(6,5),
		(7,6),
		(8,7),
		(9,8);

-- АЛЬБОМЫ --
INSERT INTO albums (album_title,album_year)
	VALUES
		('Весёлый и злой',2022),
		('Infinity',2010),
		('Wasting Light', 2011),
		('Kunstraub',2013),
		('Born Villain', 2012),
		('Black Rain',2007),
		('Educated Horses',2006),
		('The Truth Is...',2011),
		('The Scarred People',2012);

-- АЛЬБОМ - ИСПОЛНИТЕЛЬ --
INSERT INTO album_performer (albums_id,performer_id)
	VALUES 
		(1,1),
		(2,2),
		(3,3),
		(4,4),
		(5,5),
		(6,6),
		(7,7),
		(8,8),
		(9,9);

-- ТРЕКИ --
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES 
		('Играй, струна, играй',3.44,1),
		('Дивись же, какими мы стали!',4.28,1),
		('Только не плачь, палач',4.13,1),
		('Сквозь одежды',3.33,1),
		('Infinity',4.52,2),	
		('Sense Of Time',5.46,2),
		('Out Of Mind',3.21,2),
		('Black Celebration',4.57,2),
		('Bridge Burning',4.47,3),
		('Rope',4.19,3),
		('Dear Rosemary',4.27,3),
		('White Limo',3.23,3),
		('Der Die Sonne Schlafen Schickt',3.57,4),
		('Wege Ohne Namen',4.24,4),
		('Lebemann',3.23,4),
		('Himmel Und Hoelle',3.57,4),
		('Hey, Cruel World...',3.45,5),
		('No Reflection',4.37,5),
		('Pistol Whipped',4.11,5),
		('Overneath the Path of Misery',5.19,5),
		('Not Going Away',4.32,6),
		('I Don`t Wanna Stop',4.00,6),
		('Black Rain',4.43,6),
		('Lay Your World On Me',4.16,6),
		('Sawdust In The Blood',1.23,7),
		('American Witch',3.48,7),
		('Foxy Foxy',3.29,7),
		('17 Year Locust',4.07,7),
		('Lowlife',3.26,8),
		('Bitch Came Back',3.39,8),
		('Hurricane',4.17,8),
		('Out Of My Head',3.58,8),
		('The Scarred People',6.38,9),
		('Winter Dawn',4.13,9),
		('384',4.25,9),
		('Radiant Star',3.46,9);

-- СБОРНИКИ --
INSERT INTO compilation (named,release_year)
	VALUES 
		('compilation_1',2020),
		('compilation_2',2022);

-- ТРЕКИ СБОРНИКОВ --
INSERT INTO compilation_tracks(tracks_id,compilation_id)
	VALUES 
		(2,1),
		(7,1),
		(12,1),
		(13,1),
		(20,2),
		(25,2),
		(30,2),
		(35,2);




