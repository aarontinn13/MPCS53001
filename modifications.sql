INSERT INTO Does
VALUES
('AmeerHassouna@uchicago.edu','2018-04-22 12:32:22','Ameer','Hassouna','Cleans','10 Minutes',2,4),
('Cberb@gmail.com','2018-04-22 11:52:31','Chad','Berberick','Jog','30 minutes',2,4),
('AmeerHassouna@uchicago.edu','2018-04-21 06:33:53','Ameer','Hassouna','Weighted Pull Ups','15 minutes',2,11),
('Chaus@yahoo.com','2018-04-22 10:17:43','Corbin','Hauserman','Cleans','25 minutes',3,13),
('AmeerHassouna@uchicago.edu','2018-04-20 17:12:14','Ameer','Hassouna','Squats','30 minutes',3,12),
('AmeerHassouna@uchicago.edu','2018-04-19 15:43:13','Ameer','Hassouna','Cable Flyes','30 minutes',4,10);


INSERT INTO ConsistsOf
VALUES ((SELECT mealName FROM Meal WHERE mealName = 'Cheeseburger'),'Hamburger Bun', 20, 'grams'),
((SELECT mealName FROM Meal WHERE mealName = 'Cheeseburger'),'Ground Beef', 90, 'grams'),
((SELECT mealName FROM Meal WHERE mealName = 'Cheeseburger'),'Cheese', 45, 'grams');


INSERT INTO ConsistsOf
VALUES ((SELECT mealName FROM Meal WHERE mealName = 'Grilled Cheese'),'Bread', 20, 'grams'),
((SELECT mealName FROM Meal WHERE mealName = 'Grilled Cheese'),'Cheese', 90, 'grams');


DELETE FROM `atinnDB`.`Meal`
WHERE mealName = 'Bacon';


DELETE FROM `atinnDB`.`Meal`
WHERE mealName = 'Burrito';


UPDATE `atinnDB`.`Person` 
SET `Weight`='121' 
WHERE `Email`='Sarahhhh@hotmail.com';

UPDATE `atinnDB`.`Person` 
SET `Age`='21' 
WHERE `Email`='AmeerHassouna@uchicago.edu';


