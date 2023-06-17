CREATE DATABASE IF NOT EXISTS movie;

USE movie;

CREATE TABLE IF NOT EXISTS movie_table (
    `MovieID` INT NOT NULL PRIMARY KEY,
    `Name` VARCHAR(25) NOT NULL,
    `Show_Slot` INT,
    `Timing` VARCHAR(15),
    `Seats_Avail` INT,
    `Location` VARCHAR(25),
    `price` DOUBLE
);

INSERT INTO movie_table VALUES (1,'Spider Man: No Way Home',2,'9:00-11:15',38,'Bangalore',13.5),
								(2,'Captain Phillips',3,'11:30-2:00',42,'Chennai',11),
                                (3,'Titanic',1,'4:00-6:30',50,'Kolkata',15),
                                (4,'Avatar',4,'7:00-9:30',55,'Mumbai',9.99),
                                (5,'Se7en',2,'9:00-11:15',38,'Bangalore',14.6),
                                (6,'Interstellar',3,'11:30-2:00',42,'Delhi',17.2),
                                (7,'Inception',4,'7:00-9:30',55,'Chennai',13.7);
