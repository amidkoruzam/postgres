CREATE DATABASE music;

\c music

CREATE TABLE songs (
    id SERIAL PRIMARY KEY,
    title varchar (255) NOT NULL
);

CREATE TABLE artists (
    id SERIAL PRIMARY KEY,
    name varchar (255) NOT NULL
);

CREATE TABLE artists_songs (
    id SERIAL PRIMARY KEY,
    song_id int REFERENCES songs ON DELETE CASCADE,
    artist_id int REFERENCES artists ON DELETE RESTRICT
);

INSERT INTO songs (title) VALUES ('Song #1');
INSERT INTO songs (title) VALUES ('Song #2');
INSERT INTO songs (title) VALUES ('Song #3');
INSERT INTO songs (title) VALUES ('Song #4');
INSERT INTO songs (title) VALUES ('Song #5');

INSERT INTO artists (name) VALUES ('Artist #1');

INSERT INTO artists_songs (song_id, artist_id) VALUES (1, 1);
INSERT INTO artists_songs (song_id, artist_id) VALUES (2, 1);
INSERT INTO artists_songs (song_id, artist_id) VALUES (3, 1);
INSERT INTO artists_songs (song_id, artist_id) VALUES (4, 1);
INSERT INTO artists_songs (song_id, artist_id) VALUES (5, 1);


