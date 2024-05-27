CREATE DATABASE IF NOT EXISTS wordpress;

USE wordpress;

CREATE TABLE IF NOT EXISTS Useless (
	id INT AUTO_INCREMENT PRIMARY KEY,
	n VARCHAR(50),
	d TEXT,
	ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO inutile (n, d) VALUES
	('Useless', 'UselessUselessUselessUselessUselessUseless');
