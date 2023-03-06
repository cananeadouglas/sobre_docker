USE meubanco;

CREATE TABLE user (
	id integer not null auto_increment,
	is_active boolean not null,
	created_date datetime not null,
	fullname varchar(200),
	PRIMARY KEY (id)
);

SET character_set_client = utf8;
SET character_set_connection = utf8;
SET character_set_results = utf8;
SET collation_connection = utf8_general_ci;

INSERT INTO user (is_active, created_date, fullname) VALUES (1, '2023-02-27', 'João Fulano');
