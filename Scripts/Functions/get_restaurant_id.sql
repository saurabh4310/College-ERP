/* 
    Function that returns the Restaurant_ID given the Restaurant_Name
*/

USE `Campus_Eats_Fall2020`;
DROP FUNCTION IF EXISTS `get_restaurant_id`;

/* Create the Function */
DELIMITER $$

CREATE FUNCTION get_restaurant_id 
(
    restaurant_name_var VARCHAR(100)
)
RETURNS INT

BEGIN
    DECLARE restaurant_id_var INT;
    

    SELECT restaurant_ID INTO restaurant_id_var 
    FROM restaurant
    WHERE Restaurant_name = restaurant_name_var;
    RETURN(restaurant_id_var);
END $$

/* Test the Function */
SELECT * 
FROM restaurant
WHERE restaurant_ID = get_restaurant_id('Kerluke-Herman');
