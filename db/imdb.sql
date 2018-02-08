DROP TABLE castings;
DROP TABLE actors;
DROP TABLE movies;

CREATE TABLE actors (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50)
);

CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  genre VARCHAR(255),
  rating INT
);

CREATE TABLE castings (
  id SERIAL PRIMARY KEY,
  movie_id INT REFERENCES movies(id) ON DELETE CASCADE,
  actor_id INT REFERENCES actors(id) ON DELETE CASCADE,
  fee INT
);
