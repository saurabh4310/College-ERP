DROP TABLE IF EXISTS `DriverRatingTable`;

CREATE TABLE `DriverRatingTable` 
(
    `DriverRating_ID` INT,
    `Driver_ID` INT,
    `Rating` INT DEFAULT NULL,
    PRIMARY KEY (`DriverRating_ID`),
    FOREIGN KEY (`Driver_ID`) REFERENCES driver(`Driver_ID`)
) AUTO_INCREMENT = 1;