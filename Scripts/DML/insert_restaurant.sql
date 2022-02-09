/* Good data: Clear what all the attributes are. */
INSERT INTO restaurant (restaurant_id, location, restaurant_name, schedule, website)
VALUES ('102' , "123 main st,VA 20171-2011",'FlavorOnMain','8AM - 12PM', 'https://flavoronmain.com');

/* Bad data: Not clear on schedule. Is this 4-5 PM? 4 AM to 5 PM? */
INSERT INTO restaurant (restaurant_id, location, restaurant_name, schedule, website)
VALUES ('102' , "123 main st,VA 20171-2011",'FlavorOnMain','4-5', 'https://flavoronmain.com');

/* Bad data: Syntax error */
INSERT INTO restaurant (restaurant_id, location, restaurant_name, schedule, website)
VALUES ('102' , "123 main st,VA 20171-2011", FlavorOnMain,'4-5', 'https://flavoronmain.com');