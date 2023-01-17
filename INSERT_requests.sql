-- INSERT ЗАПРОСЫ --

-- ИСПОЛНИТЕЛИ --
INSERT INTO performer(named)
	VALUES ('Пикник');
INSERT INTO performer(named)
	VALUES ('Crematory');
INSERT INTO performer(named)
	VALUES ('Foo Fighters');
INSERT INTO performer(named)
	VALUES ('In Extremo');
INSERT INTO performer(named)
	VALUES ('Marilyn Manson');
INSERT INTO performer(named)
	VALUES ('Ozzy Osbourne');
INSERT INTO performer(named)
	VALUES ('Rob Zombie');
INSERT INTO performer(named)
	VALUES ('Theory of a Deadman');
INSERT INTO performer(named)
	VALUES ('Tiamat');

-- ЖАНРЫ --
INSERT INTO genre(title)
	VALUES ('Rock');
INSERT INTO genre(title)
	VALUES ('Gothic Rock');
INSERT INTO genre(title)
	VALUES ('Folk-Rock');
INSERT INTO genre(title)
	VALUES ('Industrial');
INSERT INTO genre(title)
	VALUES ('Hard Rock');
INSERT INTO genre(title)
	VALUES ('Horror Metal');
INSERT INTO genre(title)
	VALUES ('Alt. Rock');
INSERT INTO genre(title)
	VALUES ('Gothic Metal');
	
-- ИСПОЛНИТЕЛЬ ЖАНР --
INSERT INTO performer_genre(performer(id),genre(id))
	VALUES (1,1);
INSERT INTO performer_genre(performer(id),genre(id))
	VALUES (2,2);
INSERT INTO performer_genre(performer(id),genre(id))
	VALUES (3,1);
INSERT INTO performer_genre(performer(id),genre(id))
	VALUES (4,3);
INSERT INTO performer_genre(performer(id),genre(id))
	VALUES (5,4);
INSERT INTO performer_genre(performer(id),genre(id))
	VALUES (6,5);
INSERT INTO performer_genre(performer(id),genre(id))
	VALUES (7,6);
INSERT INTO performer_genre(performer(id),genre(id))
	VALUES (8,7);
INSERT INTO performer_genre(performer(id),genre(id))
	VALUES (9,8);

-- АЛЬБОМЫ --
INSERT INTO albums (album_title,album_year)
	VALUES ('Весёлый и злой',2022);
INSERT INTO albums (album_title,album_year)
	VALUES ('Infinity',2010);
INSERT INTO albums (album_title,album_year)
	VALUES ('Wasting Light', 2011);
INSERT INTO albums (album_title,album_year)
	VALUES ('Kunstraub',2013);
INSERT INTO albums (album_title,album_year)
	VALUES ('Born Villain', 2012);
INSERT INTO albums (album_title,album_year)
	VALUES ('Black Rain',2007);
INSERT INTO albums (album_title,album_year)
	VALUES ('Educated Horses',2006);
INSERT INTO albums (album_title,album_year)
	VALUES ('The Truth Is...',2011);
INSERT INTO albums (album_title,album_year)
	VALUES ('The Scarred People',2012);

-- АЛЬБОМ - ИСПОЛНИТЕЛЬ --
INSERT INTO album_performer (albums_id,performer_id)
	VALUES (1,1);
INSERT INTO album_performer (albums_id,performer_id)
	VALUES (2,2);
INSERT INTO album_performer (albums_id,performer_id)
	VALUES (3,3);
INSERT INTO album_performer (albums_id,performer_id)
	VALUES (4,4);
INSERT INTO album_performer (albums_id,performer_id)
	VALUES (5,5);
INSERT INTO album_performer (albums_id,performer_id)
	VALUES (6,6);	
INSERT INTO album_performer (albums_id,performer_id)
	VALUES (7,7);	
INSERT INTO album_performer (albums_id,performer_id)
	VALUES (8,8);
INSERT INTO album_performer (albums_id,performer_id)
	VALUES (9,9);

-- ТРЕКИ --
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Играй, струна, играй',3.44,1);
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Дивись же, какими мы стали!',4.28,1);
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Только не плачь, палач',4.13,1);
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Сквозь одежды',3.33,1);

INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Infinity',4.52,2);	
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Sense Of Time',5.46,2);
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Out Of Mind',3.21,2);
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Black Celebration',4.57,2);
	
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Bridge Burning',4.47,3);
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Rope',4.19,3);
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Dear Rosemary',4.27,3);
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('White Limo',3.23,3);
	
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Der Die Sonne Schlafen Schickt',3.57,4);
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Wege Ohne Namen',4.24,4);
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Lebemann',3.23,4);
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Himmel Und Hoelle',3.57,4);

INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Hey, Cruel World...',3.45,5);
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('No Reflection',4.37,5);
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Pistol Whipped',4.11,5);
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Overneath the Path of Misery',5.19,5);

INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Not Going Away',4.32,6);
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('I Don`t Wanna Stop',4.00,6);
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Black Rain',4,43,6);
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Lay Your World On Me',4.16,6);

INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Sawdust In The Blood',1.23,7);
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('American Witch',3.48,7);
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Foxy Foxy',3.29,7);
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('17 Year Locust',4.07,7);

INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Lowlife',3.26,8);
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Bitch Came Back',3.39,8);
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Hurricane',4.17,8);
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Out Of My Head',3.58,8);

INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('The Scarred People',6.38,9);
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Winter Dawn',4.13,9);
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('384',4.25,9);
INSERT INTO tracks (track_name,track_time,albums_id)
	VALUES ('Radiant Star',3.46,9);

-- СБОРНИКИ --
INSERT INTO (named,release_year)
	VALUES ('compilation_1',2020);
INSERT INTO (named,release_year)
	VALUES ('compilation_2',2022);

-- ТРЕКИ СБОРНИКОВ --
INSERT INTO compilation_tracks(tracks_id,compilation_id)
	VALUES (2,1);
INSERT INTO compilation_tracks(tracks_id,compilation_id)
	VALUES (7,1);
INSERT INTO compilation_tracks(tracks_id,compilation_id)
	VALUES (12,1);
INSERT INTO compilation_tracks(tracks_id,compilation_id)
	VALUES (13,1);
INSERT INTO compilation_tracks(tracks_id,compilation_id)
	VALUES (20,2);
INSERT INTO compilation_tracks(tracks_id,compilation_id)
	VALUES (25,2);
INSERT INTO compilation_tracks(tracks_id,compilation_id)
	VALUES (30,2);
INSERT INTO compilation_tracks(tracks_id,compilation_id)
	VALUES (35,2);







