-- ENGINE = InnoDB <- como charset

USE futebol;

CREATE TABLE national_team (
	id integer not null auto_increment,
	country varchar(50) not null,
	PRIMARY KEY (id)
);

CREATE TABLE soccer_players (
	id integer not null auto_increment,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	national_team_id integer not null,
	games_played integer not null,
	PRIMARY KEY(id),
	FOREIGN KEY(national_team_id) REFERENCES national_team(id)
);


SET character_set_client = utf8;
SET character_set_connection = utf8;
SET character_set_results = utf8;
SET collation_connection = utf8_general_ci;

INSERT INTO national_team (country) VALUES ('Italy');
INSERT INTO national_team (country) VALUES ('NetherLands');
INSERT INTO national_team (country) VALUES ('England');
INSERT INTO national_team (country) VALUES ('Croatia');
INSERT INTO national_team (country) VALUES ('Brazil');
INSERT INTO national_team (country) VALUES ('Argentinia');

INSERT INTO soccer_players (first_name, last_name, national_team_id, games_played) VALUES ('Gianfránco', 'Zola', 1, 35);
INSERT INTO soccer_players (first_name, last_name, national_team_id, games_played) VALUES ('Virgil', 'van Dijk', 2, 53);
INSERT INTO soccer_players (first_name, last_name, national_team_id, games_played) VALUES ('Marcus', 'Rashford', 3, 51);
INSERT INTO soccer_players (first_name, last_name, national_team_id, games_played) VALUES ('kylian', 'Mbappé', 5, 66);
INSERT INTO soccer_players (first_name, last_name, national_team_id, games_played) VALUES ('Phil', 'Foden', 3, 22);
INSERT INTO soccer_players (first_name, last_name, national_team_id, games_played) VALUES ('Frenkie', 'de Jong', 2, 22);
INSERT INTO soccer_players (first_name, last_name, national_team_id, games_played) VALUES ('Mario', 'Balotelli', 1, 36);
INSERT INTO soccer_players (first_name, last_name, national_team_id, games_played) VALUES ('Erling', 'Haaland', 6, 23);
