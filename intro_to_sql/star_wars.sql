DROP TABLE IF EXISTS lightsabers;
DROP TABLE IF EXISTS characters;

CREATE TABLE characters (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  darkside BOOLEAN,
  age INT
);

CREATE TABLE lightsabers (
  id SERIAL PRIMARY KEY,
  hilt_metal VARCHAR(255) NOT NULL,
  colour VARCHAR(255) NOT NULL,
  character_id INT REFERENCES characters(id)
);


--INSERT INTO lightsabers (colour) VALUES ('red'); --can't do because both say NOT NULL

--SELECT * FROM lightsabers;

INSERT INTO characters (name, darkside, age) VALUES ('Obi-Wan Kenobi', false, 27);
INSERT INTO characters (name, darkside, age) VALUES ('Anakin Skywalker', false, 19);

INSERT INTO lightsabers (hilt_metal, colour, character_id) VALUES ('palladium', 'green', 2);
INSERT INTO lightsabers (hilt_metal, colour, character_id) VALUES ('gold', 'red', 1);

-- SELECT * FROM characters;
-- SELECT * FROM lightsabers;
SELECT * FROM lightsabers WHERE character_id = 2;

--INSERT INTO lightsabers (hilt_metal) VALUES ('red', 'gold');


-- INSERT INTO characters (name, darkside, age) VALUES ('Darth Maul', true, 32);
-- INSERT INTO characters (name, darkside) VALUES ('Yoda', false);

-- INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
-- INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
-- INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
-- INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
-- INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
-- INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);

--SELECT * FROM characters;

-- UPDATE characters SET (darkside, name) = (true, 'Darth Vader') WHERE name = 'Anakin Skywalker';
--
-- DELETE FROM characters WHERE name = 'Darth Maul';
--

--SELECT name, age FROM characters;
--SELECT COUNT(*) FROM characters;
--SELECT SUM(age) FROM characters;
-- MAX, MIN, AVG, etc
