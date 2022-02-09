/*
    This query returns the driver id based on a given name by
    joining the student table that has a relationship with the
    person table.
*/

USE Campus_Eats_Fall2020;

DROP FUNCTION IF EXISTS get_driver_id;

DELIMITER $$

/* Create the Function */
CREATE FUNCTION get_driver_id
(
   driver_name VARCHAR(100)
)
RETURNS INT

DETERMINISTIC READS SQL DATA
BEGIN 
    DECLARE driver_id_new INT;

    SELECT driver_id INTO driver_id_new
    FROM driver d
    LEFT JOIN student s
		ON d.student_id = s.student_id
    LEFT JOIN person p
		ON s.person_id = p.person_id
    WHERE p.person_name = driver_name;

	RETURN(driver_id_new);
END$$

DELIMITER ;

/* Test the Function */
SELECT *
FROM driver
WHERE driver_id = get_driver_id('Ms. Sincere McDermott');