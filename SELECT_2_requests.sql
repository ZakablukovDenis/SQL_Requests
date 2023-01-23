-- ПРОДВИНУТАЯ ВЫБОРКА ДАННЫХ --

-- ЗАПРОС 1 --
-- КОЛИЧЕСТВО ИСПОЛНИТЕЛЕЙ В КАЖДОМ ЖАНРЕ --
SELECT
	g.title,
	count(p.named)
FROM
	genre g
LEFT JOIN performer_genre pg ON
	g.id = pg.genre_id
LEFT JOIN performer p ON
	pg.name_id = p.id
GROUP BY
	g.title
ORDER BY
	count(p.id) DESC

-- ЗАПРОС 2 --
-- КОЛИЧЕСТВО ТРЕКОВ, ВОШЕДШИХ В АЛЬБОМЫ 
SELECT
	t.track_name,
	a.album_year
FROM
	albums a
LEFT JOIN tracks t ON
	t.albums_id  = a.id
WHERE
	(a.album_year >= 2011) AND (a.album_year <= 2012)
---------------------------------------------------------
SELECT
	count(t.track_name) 
FROM
	albums a
LEFT JOIN tracks t ON
	t.albums_id  = a.id
WHERE
	(a.album_year >= 2011) AND (a.album_year <= 2012)

-- ЗАПРОС 3 --
-- СРЕДНЯЯ ПРОДОЛЖИТЕЛЬНОСТЬ ТРЕКОВ ПО КАЖДОМУ АЛЬБОМУ --
SELECT
	a.album_title,
	sum(t.track_time)/count(t.track_time) 
FROM
	albums a
LEFT JOIN tracks t ON
	t.albums_id = a.id
GROUP BY
	a.album_title
ORDER BY
	sum(t.track_time);

-- ЗАПРОС 4 --
-- ВСЕ ИСПОЛНИТЕЛИ, КОТОРЫЕ НЕ ВЫПУСТИЛИ АЛЬБОМЫ В 2020 ГОДУ --

SELECT
	DISTINCT p.named
FROM
	performer p 
LEFT JOIN album_performer ap ON
	p.id = ap.performer_id
LEFT JOIN albums a ON
	a.id = ap.performer_id
WHERE 
	a.album_year != 2022;

-- ЗАПРОС 5 --
-- НАЗВАНИЯ СБОРНИКОВ, В КОТОРЫХ ПРИСУТСТВУЕТ КОНКРЕТНЫЙ ИСПОЛНИТЕЛЬ --
SELECT
	c.named,
	p.named  
FROM
	compilation c
LEFT JOIN compilation_tracks ct ON
	ct.compilation_id = c.id
LEFT JOIN tracks t ON
	t.id = ct.tracks_id
LEFT JOIN albums a ON
	a.id = t.albums_id
LEFT JOIN album_performer ap ON
	ap.albums_id = a.id
LEFT JOIN performer p ON
	p.id = ap.performer_id
WHERE p.named LIKE '%%Foo %%';

-- ЗАПРОС 6 --
-- НАЗВАНИЕ АЛЬБОМОВ, В КОТОРЫХ ПРИСУТСТВУЮТ ИСПОЛНИТЕЛИ БОЛЕЕ 1 ЖАНРА --
????????????????????????????????
SELECT
	a.album_title,
FROM
	albums a
LEFT JOIN album_performer ap ON
	ap.albums_id = a.id
LEFT JOIN performer p ON
	p.id = ap.performer_id
LEFT JOIN performer_genre pg ON
	pg.id = p.id
LEFT JOIN genre g ON
	g.id = pg.genre_id
GROUP BY
	a.album_title  
HAVING ?????????????????????????;

-- ЗАПРОС 7 --
-- НАИМЕНОВАНИЕ ТРЕКОВ, КОТОРЫЕ НЕ ВХОДЯТ В СБОРНИКИ --

SELECT
	t.track_name
FROM
	tracks t
LEFT JOIN compilation_tracks ct ON
	ct.tracks_id = t.id
WHERE
	ct.tracks_id IS NULL;

-- ЗАПРОС 8 --
-- ИСПОЛНИТЕЛЯ(-ЕЙ), НАПИСАВШЕГО САМЫЙ КОРОТКИЙ --
-- ПО ПРОДОЛЖИТЕЛЬНОСТИ ТРЕК --
-- (ТЕОРЕТИЧЕСКИ ТАКИХ ТРЕКОВ МОЖЕТ БЫТЬ НЕСКОЛЬКО)--

SELECT
	min(track_time)
FROM
	tracks t
LEFT JOIN albums a ON
	a.id = t.albums_id
LEFT JOIN album_performer ap ON
	ap.albums_id = a.id
LEFT JOIN performer p ON
	p.id = ap.performer_id;

-- ЗАПРОС 9 --
-- НАЗВАНИЕ АЛЬБОМОВ, СОДЕРЖАЩИХ НАИМЕНЬШЕЕ КОЛИЧЕСТВО ТРЕКОВ --
??????????????????????????????????
SELECT
	a.album_title,
	count(a.album_title) 
FROM
	albums a
LEFT JOIN tracks t ON
	t.albums_id = a.id
GROUP BY
	a.album_title
??????????????????????????????????;
