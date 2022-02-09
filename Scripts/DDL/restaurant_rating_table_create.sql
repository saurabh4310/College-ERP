DROP TABLE IF EXISTS `RestaurantRatingTable`;

CREATE TABLE `RestaurantRatingTable` 
(
    `RestaurantRating_ID` INT,
    `Restaurant_ID` INT,
    `Rating` INT DEFAULT NULL,
    PRIMARY KEY (`RestaurantRating_ID`),
    FOREIGN KEY (`Restaurant_ID`) REFERENCES restaurant(`Restaurant_ID`)
) AUTO_INCREMENT = 1;