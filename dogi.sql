--
-- Файл сгенерирован с помощью SQLiteStudio v3.3.3 в Сб май 14 15:45:20 2022
--
-- Использованная кодировка текста: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Таблица: color
CREATE TABLE color (id PRIMARY KEY, name STRING);
INSERT INTO color (id, name) VALUES (1, 'black');
INSERT INTO color (id, name) VALUES (2, 'blue');
INSERT INTO color (id, name) VALUES (3, 'Brindle');

-- Таблица: dog
CREATE TABLE dog ("id " INTEGER PRIMARY KEY, trainer STRING REFERENCES trainer (id), nickname STRING, color STRING REFERENCES color (id), Dob DATE, sex STRING REFERENCES sex ("id "), Lob STRING REFERENCES "Land of birth" (id), "weight(kg)" INTEGER);
INSERT INTO dog ("id ", trainer, nickname, color, Dob, sex, Lob, "weight(kg)") VALUES (1, 1, 'Signet Ace', 1, '8 SEP 2018', 1, 1, 32);
INSERT INTO dog ("id ", trainer, nickname, color, Dob, sex, Lob, "weight(kg)") VALUES (2, 2, 'Jaguar Macie', 1, 'APR 2019', 2, 1, 27);
INSERT INTO dog ("id ", trainer, nickname, color, Dob, sex, Lob, "weight(kg)") VALUES (3, 3, 'Ballymac Kingdom', 2, '2 ARP 2018', 1, 1, 36);
INSERT INTO dog ("id ", trainer, nickname, color, Dob, sex, Lob, "weight(kg)") VALUES (4, 4, 'Glengar Bale ', 1, '14 JUL 2018', 1, 1, 33);
INSERT INTO dog ("id ", trainer, nickname, color, Dob, sex, Lob, "weight(kg)") VALUES (5, 5, 'Newinn Jacko', 1, '3 JUL 2018', 1, 1, 33);

-- Таблица: Land of birth
CREATE TABLE "Land of birth" (id INTEGER PRIMARY KEY, Name STRING);
INSERT INTO "Land of birth" (id, Name) VALUES (1, 'IE Ireland');

-- Таблица: location
CREATE TABLE location ("id " INTEGER PRIMARY KEY, name STRING);
INSERT INTO location ("id ", name) VALUES (1, 'Central Park Stadium');

-- Таблица: matches
CREATE TABLE matches (id INTEGER PRIMARY KEY, tournament STRING REFERENCES tournament (id));
INSERT INTO matches (id, tournament) VALUES (1, 1);

-- Таблица: sex
CREATE TABLE sex ("id " INTEGER PRIMARY KEY, name STRING);
INSERT INTO sex ("id ", name) VALUES (1, 'male');
INSERT INTO sex ("id ", name) VALUES (2, 'famale');

-- Таблица: tournament
CREATE TABLE tournament (id PRIMARY KEY, event_name STRING, date DATE, "location " STRING REFERENCES location ("id "));
INSERT INTO tournament (id, event_name, date, "location ") VALUES (1, '2021 UK Greyhound Racing Year', 'july', 1);

-- Таблица: trainer
CREATE TABLE trainer (id INTEGER PRIMARY KEY, name STRING);
INSERT INTO trainer (id, name) VALUES (1, 'K R Hutton');
INSERT INTO trainer (id, name) VALUES (2, 'G Rankin');
INSERT INTO trainer (id, name) VALUES (3, 'L Dowling');
INSERT INTO trainer (id, name) VALUES (4, 'P Buckley');
INSERT INTO trainer (id, name) VALUES (5, 'G E Evans');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
