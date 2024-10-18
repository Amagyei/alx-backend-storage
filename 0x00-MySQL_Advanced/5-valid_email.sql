-- SQL script that resets the valid_email attribute wheen the email has been changed
-- of an email when it has been changed 
DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (
    id int NOT NULL AUTO_INCREMENT,
    email varchar(255) NOT NULL,
    name varchar(255),
    valid_email boolean NOT NULL DEFAULT 0,
    PRIMARY KEY (id)
);

DROP TRIGGER IF EXISTS validate_email;
DELIMITER $$;
CREATE TRIGGER validate_email
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
IF OLD.email != NEW.email THEN
SET NEW.valid_email = 0;
ELSE
        SET NEW.valid_email = NEW.valid_email;
END IF;
END$$
DELIMITER;

