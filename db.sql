CREATE TABLE IF NOT EXISTS access_points (
	access_point_id INT AUTO_INCREMENT,
 	bssid VARCHAR(18) NOT NULL,
	first_time_seen DATETIME,
	last_time_seen DATETIME,
	privacy VARCHAR(8),
	cipher VARCHAR(8),
	authentication VARCHAR(8)
	essid TEXT,
	PRIMARY KEY (access_point_id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS stations (
	station_id INT AUTO_INCREMENT,
	station_mac VARCHAR(18),
	first_time_seen DATETIME,
	last_time_seen DATETIME,
 	bssid VARCHAR(18) NOT NULL,
	probed_essids TEXT
) ENGINE=INNODB;
