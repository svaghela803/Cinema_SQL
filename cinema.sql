DROP TABLE movies;

CREATE TABLE movies (
    id SERIAL,
    title VARCHAR(255),
    duration INT,
    rating VARCHAR(255)
);


INSERT INTO movies (title, duration, rating) VALUES('Alien', 117, '18');
INSERT INTO movies (title, duration, rating) VALUES ('The imitation Game', 114, '12A');
INSERT INTO movies (title, duration, rating) VALUES ('Iron Man', 126, '12A');
INSERT INTO movies (title, duration, rating) VALUES ('The Martian', 144, '12A');
INSERT INTO movies (title, duration, rating) VALUES ('Guardians of the Galaxy', 121, '12A');
INSERT INTO movies (title, duration, rating) VALUES ('You Only Live Twice', 117, 'PG');
INSERT INTO movies (title, duration, rating) VALUES ('I Know What You Did Last Summer', 101, '18');



-- Missing info
INSERT INTO movies (title, rating) VALUES ('Braveheart', 'PG');

--READ
SELECT title FROM movies;

SELECT * FROM movies WHERE rating ='12A';

SELECT title FROM movies WHERE duration > 120;

-- UPDATE 
UPDATE movies SET rating = '12A' WHERE id = 5;

UPDATE movies SET (duration, rating) = (178, '15') WHERE id = 5;

-- DELETE 
-- DELETE FROM movies WHERE id = 5; 

--DELETE FROM movies = deletes all movies

-- Finds movies with lower case 'the' as well
-- SELECT * FROM movies WHERE LOWER(title) LIKE LOWER('%The%');


-- -- ORDERING duration descending order
-- SELECT * FROM movies ORDER BY duration DESC;


-- Ordering movies alphabetically by title
-- SELECT * FROM movies ORDER BY title;

-- Orders only 12A movies by duration
-- SELECT * FROM movies WHERE rating = '12A' ORDER BY duration DESC;


-- * Selects each full row from movies table and counts movies
-- SELECT COUNT(*) FROM MOVIES;

-- -- Selects only movies with duration and counts
-- SELECT COUNT(duration) FROM movies;

-- -- Selects only ratings
-- SELECT rating FROM movies;

-- -- Selects only the specific ratings using DISTINCT
-- SELECT DISTINCT rating FROM movies;

-- Counts how many ratings there are 
SELECT COUNT(DISTINCT rating) FROM movies;

-- counts how many ratings of each movie and average duration of these movies
SELECT rating, COUNT(*), AVG(duration) FROM movies GROUP BY rating;

-- Limits the returned data to 1 
SELECT * FROM movies WHERE duration IS NOT NULL ORDER BY duration DESC LIMIT 1 OFFSET 1;










