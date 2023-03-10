CREATE TABLE IF NOT EXISTS performer (
id SERIAL PRIMARY KEY,
named VARCHAR(25) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS genre (
id SERIAL PRIMARY KEY,
title VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS performer_genre (
id SERIAL PRIMARY KEY,
name_id INTEGER REFERENCES performer(id),
genre_id INTEGER REFERENCES genre(id)
);

CREATE TABLE IF NOT EXISTS albums (
id SERIAL PRIMARY KEY,
album_title TEXT NOT NULL UNIQUE,
album_year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS album_performer (
id SERIAL PRIMARY KEY,
albums_id INTEGER REFERENCES albums(id),
performer_id INTEGER REFERENCES performer(id)
);

CREATE TABLE IF NOT EXISTS tracks (
id SERIAL PRIMARY KEY,
track_name VARCHAR(35) NOT NULL, 
track_time DECIMAL(3.2) NOT NULL,
albums_id INTEGER REFERENCES albums(id)
);

CREATE TABLE IF NOT EXISTS compilation (
id SERIAL PRIMARY KEY,
named VARCHAR(30) NOT NULL UNIQUE,
release_year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS compilation_tracks (
id SERIAL PRIMARY KEY,
tracks_id INTEGER REFERENCES tracks(id),
compilation_id INTEGER REFERENCES compilation(id)
);

