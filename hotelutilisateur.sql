-- Exericice 1

CREATE USER 'util1'@'%';

CREATE USER 'util2'@'%';

CREATE USER 'util3'@'%';

-- Exercice 2

GRANT ALL PRIVILEGES ON hotel.* TO 'util1'@'%';

GRANT SELECT ON hotel.* TO 'util2'@'%';

GRANT SELECT ON hotel.station TO 'util3'@'%';

-- Exercice 3

SHOW GRANTS FOR 'util1'@'%';

SHOW GRANTS FOR 'util2'@'%';

SHOW GRANTS FOR 'util3'@'%';

