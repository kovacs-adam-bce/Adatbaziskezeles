/*Az általunk választott téma a labdarúgó bajnokság mérkőzéseinek nyilvántartása.
Ez az adatbázis a magyar labdarúgó NB1 (Nemzeti Bajnokság I) adatait tartalmazza, kiegészítve néhány kitalált adattal
a teljesség és gyakorlati használhatóság érdekében. A lekérdezések gyorsasága érdekében nem használtunk fel minden adatot.
A célja, hogy strukturáltan reprezentálja a bajnokságban szereplő
csapatokat, játékosokat, mérkőzéseket, stadionokat és a mérkőzéseken szerzett gólokat.*/

/*Gyenes Péter, Seres Viktor, Kovács Ádám*/

/*Adatbázis létrehozása*/

CREATE TABLE Teams (
    team_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(100),
    founded_year INT
);
 
CREATE TABLE Players (
    player_id INT PRIMARY KEY,
    name VARCHAR(100),
    birth_date DATE,
    position VARCHAR(50),
    team_id INT
);
 
CREATE TABLE Stadiums (
    stadium_id INT PRIMARY KEY,
    name VARCHAR(100),
    capacity INT,
    city VARCHAR(100)
);
 
CREATE TABLE Matches (
    match_id INT PRIMARY KEY,
    home_team_id INT,
    away_team_id INT,
    stadium_id INT,
    match_date TIMESTAMP
);

CREATE TABLE Goals (
    goal_id INT PRIMARY KEY,
    match_id INT NOT NULL ,
    player_id INT NOT NULL,
    minute INT NOT NULL
);

/*Adatok beillesztése*/

INSERT INTO Teams (team_id, name, city, founded_year) VALUES
(1, 'Ferencvárosi TC', 'Budapest', 1899),
(2, 'Puskás Akadémia FC', 'Felcsút', 2005),
(3, 'Paksi FC', 'Paks', 1952),
(4, 'ETO FC Győr', 'Győr', 1904),
(5, 'Debreceni VSC', 'Debrecen', 1902),
(6, 'Diósgyőri VTK', 'Miskolc', 1910),
(7, 'MTK Budapest FC', 'Budapest', 1888),
(8, 'Fehérvár FC', 'Székesfehérvár', 1941),
(9, 'Zalaegerszegi TE', 'Zalaegerszeg', 1920),
(10, 'Újpest FC', 'Budapest', 1885),
(11, 'Nyíregyháza Spartacus FC', 'Nyíregyháza', 1928),
(12, 'Kecskeméti TE', 'Kecskemét', 1911);

INSERT INTO Players (player_id, name, birth_date, position, team_id) VALUES
(101, 'Barnabás Varga', '1994-10-25', 'Csatár', 1),
(102, 'Donát Bárány', '1999-04-14', 'Csatár', 5),
(103, 'Zsolt Nagy', '1993-05-25', 'Védő', 2),
(104, 'Matheus Saldanha', '1999-08-18', 'Csatár', 1),
(105, 'Lamin Colley', '1993-07-10', 'Csatár', 2),
(106, 'Jonathan Levi', '1996-01-23', 'Középpályás', 2),
(201, 'Molnár Ádám', '2009-09-18', 'Középpályás', 4),
(202, 'Takács Krisztián', '2020-09-24', 'Kapus', 12),
(203, 'Takács Róbert', '2008-03-30', 'Kapus', 1),
(204, 'Varga József', '2022-01-08', 'Csatár', 7),
(205, 'Kiss László', '2018-02-27', 'Középpályás', 11),
(206, 'Tóth Tibor', '2020-05-05', 'Csatár', 1),
(207, 'Farkas Máté', '2014-06-15', 'Középpályás', 2),
(208, 'Kovács Gergő', '2019-11-04', 'Középpályás', 1),
(209, 'Kovács Péter', '2012-07-22', 'Kapus', 11),
(210, 'Papp István', '2015-12-28', 'Középpályás', 9),
(211, 'Papp Péter', '2012-08-09', 'Középpályás', 12),
(212, 'Papp Norbert', '2018-07-28', 'Csatár', 10),
(213, 'Balogh László', '2008-09-13', 'Kapus', 6),
(214, 'Nagy Norbert', '2010-10-16', 'Csatár', 8),
(215, 'Simon Norbert', '2013-03-09', 'Védő', 5),
(216, 'Németh Máté', '2014-10-21', 'Középpályás', 1),
(217, 'Varga Csaba', '2010-04-12', 'Csatár', 6),
(218, 'Takács Tibor', '2021-04-11', 'Kapus', 10),
(219, 'Papp Bence', '2019-01-16', 'Csatár', 4),
(220, 'Nagy Péter', '2010-09-03', 'Védő', 7),
(221, 'Balogh József', '2019-02-17', 'Középpályás', 12),
(222, 'Kovács Krisztián', '2021-10-29', 'Kapus', 11),
(223, 'Szabó Tibor', '2018-07-24', 'Csatár', 5),
(224, 'Papp László', '2018-04-24', 'Csatár', 5),
(225, 'Simon Péter', '2013-01-30', 'Középpályás', 12),
(226, 'Kovács Sándor', '2015-02-07', 'Középpályás', 4),
(227, 'Kovács Gergő', '2012-10-13', 'Védő', 1),
(228, 'Kovács Ádám', '2016-12-07', 'Kapus', 10),
(229, 'Simon József', '2013-11-04', 'Védő', 10),
(230, 'Tóth Sándor', '2010-12-07', 'Csatár', 3);

INSERT INTO Stadiums (stadium_id, name, capacity, city) VALUES
(201, 'Groupama Aréna', 22000, 'Budapest'),
(202, 'Pancho Aréna', 3816, 'Felcsút'),
(203, 'Fehérvári úti Stadion', 5000, 'Paks'),
(204, 'ETO Park', 16000, 'Győr'),
(205, 'Nagyerdei Stadion', 20340, 'Debrecen'),
(206, 'Diósgyőri Stadion', 15000, 'Miskolc'),
(207, 'Szusza Ferenc Stadion', 13500, 'Budapest'),
(208, 'Városi Stadion', 10000, 'Nyíregyháza'),
(209, 'Széktói Stadion', 4500, 'Kecskemét'),
(210, 'Hódos Imre Sportcsarnok', 8000, 'Debrecen'),
(211, 'Perutz Stadion', 6000, 'Pápa'),
(212, 'Tiszaligeti Stadion', 5500, 'Szolnok');

INSERT INTO Matches (match_id, home_team_id, away_team_id, stadium_id, match_date) VALUES
(301, 5, 9, 205, '2025-04-19'),
(302, 6, 4, 206, '2025-04-19'),
(303, 3, 2, 203, '2025-04-19'),
(401, 5, 3, 204, '2025-04-07'),
(402, 3, 7, 208, '2025-03-28'),
(403, 1, 11, 210, '2025-04-18'),
(404, 10, 6, 208, '2025-03-22'),
(405, 9, 11, 203, '2025-04-12'),
(406, 2, 10, 206, '2025-03-25'),
(407, 11, 10, 206, '2025-04-05'),
(408, 12, 8, 207, '2025-04-09'),
(409, 2, 3, 203, '2025-04-13'),
(410, 4, 11, 211, '2025-04-27'),
(411, 4, 9, 204, '2025-03-19'),
(412, 10, 2, 211, '2025-03-12'),
(413, 6, 5, 206, '2025-03-08'),
(414, 8, 3, 212, '2025-04-06'),
(415, 3, 4, 210, '2025-04-17'),
(416, 1, 12, 206, '2025-04-11'),
(417, 5, 12, 206, '2025-03-03'),
(418, 11, 4, 212, '2025-03-21'),
(419, 4, 12, 210, '2025-04-19'),
(420, 12, 5, 210, '2025-03-27'),
(421, 2, 5, 206, '2025-04-15'),
(422, 8, 1, 212, '2025-04-20'),
(423, 11, 7, 203, '2025-04-01'),
(424, 4, 7, 206, '2025-04-01'),
(425, 12, 10, 212, '2025-04-29'),
(426, 11, 3, 212, '2025-03-25'),
(427, 4, 6, 211, '2025-03-19'),
(428, 4, 5, 206, '2025-03-19'),
(429, 8, 9, 208, '2025-04-17'),
(430, 6, 9, 208, '2025-04-17');
 
INSERT INTO Goals (goal_id, match_id, player_id, minute) VALUES (601, 420, 223, 28),
(401, 301, 102, 15),
(402, 301, 102, 30),
(403, 301, 102, 70),
(404, 301, 102, 85),
(602, 420, 208, 79),
(603, 420, 229, 32),
(604, 420, 209, 90),
(605, 420, 213, 95),
(606, 410, 213, 52),
(607, 410, 201, 6),
(608, 410, 205, 12),
(609, 406, 208, 73),
(610, 406, 202, 8),
(611, 406, 218, 75),
(612, 429, 211, 83),
(613, 429, 212, 67),
(614, 403, 230, 37),
(615, 403, 230, 91),
(616, 403, 226, 31),
(617, 424, 220, 81),
(618, 414, 227, 27),
(619, 411, 228, 42),
(620, 411, 230, 29),
(621, 415, 211, 21),
(622, 415, 225, 12),
(623, 415, 221, 31),
(624, 415, 225, 35),
(625, 421, 213, 47),
(626, 421, 219, 74),
(627, 421, 225, 9),
(628, 426, 213, 17),
(629, 426, 218, 4),
(630, 427, 220, 78),
(631, 413, 216, 64),
(632, 413, 222, 83),
(633, 409, 223, 70),
(634, 409, 207, 9),
(635, 409, 218, 46),
(636, 409, 215, 93),
(637, 423, 212, 52),
(638, 423, 220, 50),
(639, 423, 221, 22);

/*Lekérdezések*/

/* 1. Meccsek időrendben és gólok mozgóátlaga*/
SELECT
m.match_id,
m.match_date,
COUNT(g.goal_id) AS goals_in_match,
ROUND(AVG(COUNT(g.goal_id))
OVER(ORDER BY m.match_date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW), 2) AS moving_avg_3
FROM Matches m
JOIN Goals g ON g.match_id = m.match_id
GROUP BY m.match_id, m.match_date
ORDER BY m.match_date;

/* 2. Gólok és előző meccsen szerzett gólok*/
WITH player_goals AS (
  SELECT 
    p.player_id,
    p.name AS player_name,
    m.match_date,
    COUNT(g.goal_id) AS goals
  FROM Players p
  JOIN Goals g ON p.player_id = g.player_id
  JOIN Matches m ON g.match_id = m.match_id
  GROUP BY p.player_id, p.name, m.match_date)
 ,
goal_trend AS (
  SELECT 
    player_id,
    player_name,
    match_date,
    goals,
    LAG(goals) OVER (PARTITION BY player_id ORDER BY match_date) AS prev_goals
FROM player_goals)

SELECT 
  player_name,
  match_date,
  goals,
  prev_goals,
  CASE 
    WHEN prev_goals IS NULL THEN 'Első meccs'
    WHEN goals > prev_goals THEN 'Fejlődik'
    WHEN goals < prev_goals THEN 'Romlik'
    ELSE 'Változatlan'
  END AS forma_trend
FROM goal_trend
ORDER BY player_name, match_date
;

/* 3. A legtöbb gólt szerző játékosok csapatonként rangsorolva*/
SELECT
t.name AS team,
p.name AS player,
COUNT(g.goal_id) AS goals,
RANK() OVER (PARTITION BY t.name ORDER BY COUNT(g.goal_id) DESC) AS rank
FROM Players p
JOIN Teams t ON p.team_id = t.team_id
LEFT JOIN Goals g ON p.player_id = g.player_id
GROUP BY t.name, p.name
ORDER BY t.name, rank;

/* 4. Összesített gólok csapatonként és idősávonként*/
WITH goal_periods AS (
  SELECT 
    t.name AS team_name,
    CASE 
      WHEN g.minute <= 15 THEN '0-15 perc'
      WHEN g.minute <= 30 THEN '16-30 perc'
      WHEN g.minute <= 45 THEN '31-45 perc'
      WHEN g.minute <= 60 THEN '46-60 perc'
      WHEN g.minute <= 75 THEN '61-75 perc'
      ELSE '76-90+ perc'
    END AS goal_period
  FROM Goals g
  JOIN Players p ON g.player_id = p.player_id
  JOIN Teams t ON p.team_id = t.team_id
)
SELECT 
  team_name,
  goal_period,
  COUNT(*) AS goals_scored
FROM goal_periods
GROUP BY ROLLUP (team_name, goal_period)
ORDER BY team_name, goal_period;

/* 5. Meccsenként a leggyorsabb gól szerzője (percre pontosan)*/
SELECT DISTINCT
m.match_id,
FIRST_VALUE(p.name) OVER (PARTITION BY m.match_id ORDER BY g.minute ASC) AS first_scorer,
MIN(g.minute) OVER (PARTITION BY m.match_id) AS first_goals_minute
FROM Matches m
JOIN Goals g ON m.match_id = g.match_id
JOIN Players p ON g.player_id = p.player_id
ORDER BY first_goals_minute;

/* 6. Havi góllövőlista játékosonként, rangsorral*/
WITH goals_by_month AS (
SELECT 
p.name AS player_name,
STRFTIME('%Y-%m', m.match_date) AS hónap,
COUNT(*) AS goal_count
FROM Goals g
JOIN Players p ON g.player_id = p.player_id
JOIN Matches m ON g.match_id = m.match_id
GROUP BY p.name, hónap)
,
ranked_goals AS(
SELECT 
player_name,
hónap,
goal_count,
DENSE_RANK() OVER (PARTITION BY hónap ORDER BY goal_count DESC) AS rank_in_month
FROM goals_by_month
)

SELECT 
  hónap,
  player_name,
  goal_count,
  rank_in_month
FROM ranked_goals
ORDER BY hónap, rank_in_month;