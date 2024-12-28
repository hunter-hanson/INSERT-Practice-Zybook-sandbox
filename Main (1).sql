-- Drop Movie table if created in prior run
DROP TABLE IF EXISTS Movie;

-- Create Movie table
CREATE TABLE Movie (
  ID INT AUTO_INCREMENT,
  Title VARCHAR(100),
  Rating CHAR(5) CHECK (Rating IN ('G', 'PG', 'PG-13', 'R')),
  ReleaseDate DATE,
  PRIMARY KEY (ID)
);

-- Your SQL statement goes here
INSERT INTO Movie(Title, Rating, ReleaseDate)
VALUES("Raiders of the Lost Ark", "PG", '1981-06-15');
INSERT INTO Movie(Title, Rating, ReleaseDate)
VALUES("The Godfather", "R", '1972-03-24');
INSERT INTO Movie(Title, Rating, ReleaseDate)
VALUES("The Pursuit of Happyness", "PG-13", '2006-12-15');

-- Select all rows from Movie
SELECT *
FROM Movie;