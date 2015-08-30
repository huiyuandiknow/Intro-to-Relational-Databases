-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- DROP old Tables
-- DROP VIEW IF EXISTS OMW;
DROP TABLE IF EXISTS matches CASCADE;
DROP TABLE IF EXISTS players CASCADE;

-- table to store player information
create table players (
    id SERIAL PRIMARY KEY, 
    player varchar(255)
);

-- table to store match information
create table matches
(
  id serial primary key,
  winner int references players(id), 
  loser int references players(id) 
);

-- create view on number of wins
create view wins AS
select p.id, p.player, coalesce(count(m.winner),0) as wins
from players as p left join matches as m
on p.id = m.winner
group by p.id; 

-- create view on number of loses
create view loses AS
select p.id, p.player, coalesce(count(m.loser),0) as wins
from players as p left join matches as m
on p.id = m.loser
group by p.id; 







/*
-- insert players
insert into players(player) values("Chris");
insert into players(player) values("James");
insert into players(player) values("Jani");
insert into players(player) values("Lydia");
insert into players(player) values("jimmy");
insert into players(player) values("jo");
insert into players(player) values("moo");
insert into players(player) values("nana");

INSERT INTO matches (winner, loser) values ("1", "2");
INSERT INTO matches (winner, loser) values ("3", "4");
INSERT INTO matches (winner, loser) values ("5", "6");
INSERT INTO matches (winner, loser) values ("7", "8");

INSERT INTO matches (winner, loser) values ("1", "3");
INSERT INTO matches (winner, loser) values ("5", "7");
INSERT INTO matches (winner, loser) values ("2", "4");
INSERT INTO matches (winner, loser) values ("6", "8");
*/



