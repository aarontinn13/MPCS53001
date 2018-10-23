/*
INSERT INTO Person
VALUES
('LandonM@uchicago.edu','Landon','Mitchell',32,'1234 South Bend Ave.',152, 'Pounds', NULL),
('MichaelSuna@uchicago.edu','Michael', 'Suna',30,'9832 Algo Court',220, 'Pounds', NULL),
('WinshenLiu@uchicago.edu','Winshen','Liu',26,'3546 Great Lakes Dr.',123, 'Pounds',2),
('NickFlees@uchicago.edu','Nicholas','Flees',45,'3953 Industrial Way',196, 'Pounds',1),
('Jason Osbourne@uchicago.edu','Jason','Osbourne',54,'6666 Evil Street',172, 'Pounds',1),
('MahjeedMarrow@uchicago.edu','Mahjeed','Marrow',83,'8754 Green Island Street',124, 'Pounds', NULL),
('TerryTao@uchicago.edu','Terrence','Tao',29,'12387 Northcliff Court',158, 'Pounds',1),
('AmeerHassouna@uchicago.edu','Ameer','Hassouna',20,'16 Woodlawn Ave.',170, 'Pounds',1),
('Bill_Johnson@uchicago.edu','Billy','Johnson',26,'1765 Jimmy Street',175, 'Pounds',1),
('Jackruby234@uchicago.edu','Jack','Ruby',26,'167 Downtown Street',167, 'Pounds',1);


-- End of Person 



INSERT INTO Meal
VALUES
('Steak'),
('Banana'),
('Eggs'),
('Oatmeal'),
('Apple'), 
('White Rice'),
('Canned Tuna'),
('Brown Rice'), 
('Peanut Butter'),
('Chicken Breast'),
('MeatLoaf');


-- end of meal


INSERT INTO Ingredients
VALUES
('Steak'),
('Banana'),
('Eggs'),
('Oatmeal'),
('Apple'),
('White Rice'),
('Canned Tuna'),
('Brown Rice'),
('Chicken Breast'),
('Peanut Butter'),
('Salt'),
('Pepper'),
('Butter'),
('Bread Crumbs'),
('Sugar'),
('Milk'),
('Mustard'),
('Lettuce'),
('Cabbage'),
('Tomato'),
('Onion'),
('Ketchup'),
('Hamburger Bun'),
('Ground Beef'),
('Cheese');



-- Average amount of ingredients in the meal for average serving.
INSERT INTO ConsistsOf
VALUES
('Steak','Steak',251,'grams'),
('Banana','Banana',118,'grams'),
('Eggs','Eggs',50,'grams'),
('Oatmeal','Oatmeal',234,'grams'),
('Apple','Apple',182,'grams'),
('White Rice','White Rice',132,'grams'),
('Canned Tuna','Canned Tuna',100,'grams'),
('Brown Rice','Brown Rice',195,'grams'),
('Peanut Butter','Peanut Butter',32,'grams'),
('Chicken Breast','Chicken Breast',140,'grams'),
('Meatloaf','Ground Beef',1.5,'pounds'),
('Meatloaf','Eggs',100,'grams'),
('Meatloaf','Onion',110,'grams'),
('Meatloaf','Milk',1,'cup'),
('Meatloaf','Bread Crumbs',1,'cup'),
('Meatloaf','Sugar',2,'tablespoons'),
('Meatloaf','Mustard',2,'tablespoons'),
('Meatloaf','Ketchup',1,'cup');
 

 
-- Name of Nutrition Facts
INSERT INTO NutritionFacts
VALUES
('Calories'),
('Total Fat'),
('Saturated Fat'),
('Cholesterol'),
('Soldium'),
('Carbohydrates'),
('Dietary Fiber'),
('Sugars'),
('Protein'),
('Vitamin A'),
('Vitamin C'),
('Calcium'),
('Iron');


-- Ingredients with their nutrition information for the average ingredient serving.
INSERT INTO Has
VALUES
('Steak','Calories',679, NULL),
('Steak','Total Fat',48,'grams'),
('Steak','Saturated Fat', 21, 'grams'),
('Steak','Cholesterol', 196, 'milligrams'),
('Steak','Soldium', 146, 'milligrams'),
('Steak','Carbohydrates', 0, 'grams'),
('Steak','Dietary Fiber', 0, 'grams'),
('Steak','Sugars', 0, 'grams'),
('Steak','Protein', 62, 'grams'),
('Steak','Vitamin A', 1, '%'),
('Steak','Vitamin C', 0, '%'),
('Steak','Calcium', 3, '%'),
('Steak','Iron', 33, '%');


INSERT INTO Eats
VALUES
('NickFlees@uchicago.edu','2018-04-04 05:23:15','Nicholas Flees', 'Steak', 16, 'ounces'),
('LandonM@uchicago.edu','2018-04-14 12:34:31', 'Landon Mitchell', 'Banana', 14, 'ounces'),
('TerryTao@uchicago.edu','2018-04-15 16:13:16', 'Terrance Tao', 'Steak', 16, 'ounces'),
('LandonM@uchicago.edu','2018-04-16 08:43:34', 'Landon Mitchell', 'Meat Loaf', 16, 'ounces'),
('TerryTao@uchicago.edu','2018-04-17 03:32:26', 'Terrance Tao', 'Eggs', 21, 'ounces'),
('LandonM@uchicago.edu','2018-04-19 15:43:33', 'Landon Mitchell', 'Steak', 16, 'ounces'),
('NickFlees@uchicago.edu','2018-04-13 23:42:56', 'Nicholas Flees', 'Peanut Butter', 55, 'grams'),
('LandonM@uchicago.edu','2018-04-15 09:26:32', 'Landon Mitchell', 'White Rice', 56, 'Personounces'),
('NickFlees@uchicago.edu','2018-04-13 12:23:56', 'Nicholas Flees', 'Peanut Butter', 34, 'grams'),
('TerryTao@uchicago.edu','2018-04-13 23:42:56', 'Terrance Tao', 'Canned Tuna', 76, 'grams'),
('LandonM@uchicago.edu','2018-04-13 23:42:56', 'Landon Mitchell', 'Peanut Butter', 13, 'grams'),
('TerryTao@uchicago.edu','2018-04-13 23:42:56', 'Terrance Tao', 'Peanut Butter', 34, 'grams');


-- Plans with the objectives.
INSERT INTO Plan
VALUES
(1,'Beginner','Offers introductory exercises and routines to beginners.', 'General'),
(2,'Intermediate', 'Offers intermediate exercises and diet structures for mediocre fitness junkies.','General'),
(3,'Advanced', 'Offers intricate and precise meal timings and workout routines for the seasoned veteran.','General'),
(4,'Arm Blaster', 'A routine focused on getting those huge pythons!','Strength'),
(5,'Weight loss', 'A heavy diet focused plan to drop calories and lose weight.', 'Weight loss'),
(6,'Home Body', 'For the busy person who would rather work out at home, minimal equipment needed!','General'),
(7,'Bench 300', 'Focused for getting a massive chest like the guys from 300 the movie.','Strength'),
(8,'#freakmode', 'If you want to be an absolute beast in the gym.', 'Strength'),
(9,'Triathlete','Enduranced focused plan to become the best triathlete you can be.','Endurance'),
(10,'Size gainer','Meal heavy and lift heavy focus to gain lbs and size.','Mass');



-- The schedule for the planID
INSERT INTO Includes

VALUES
(1,'Monday','9AM','Bench Press'),
(1,'Tuesday','12PM','Bent over Row'),
(1,'Wednesday','10AM','Squats'),
(1,'Thursday','3PM','Jog'),
(1,'Friday','3PM', 'Weighted Pull Ups'),
(1,'Saturday','11AM', 'Squats'),
(1,'Sunday','12PM', 'Cleans'),
(1,'Monday','9AM', 'Deadlift'),
(1,'Tuesday','12PM','1 Arm Lateral Raise'),
(1,'Wednesday','10AM','Jog');





INSERT INTO Does
VALUES
('MichaelSuna@uchicago.edu','2018-04-17 03:32:53','Michael','Suna','Bench Press',10,4,10),
('MichaelSuna@uchicago.edu','2018-04-17 04:42:24','Michael','Suna','Dumbbell Bench Press',10,2,10),
('MichaelSuna@uchicago.edu','2018-04-17 03:52:23','Michael','Suna','Incline Press',10,3,10),
('MichaelSuna@uchicago.edu','2018-04-17 04:02:13','Michael','Suna','Decline Press',10,4,10),
('MichaelSuna@uchicago.edu','2018-04-17 04:13:41','Michael','Suna','Cable Flyes',10,4,10),
('TerryTao@uchicago.edu','2018-04-18 10:15:33','Terrence','Tao','Jog',30,NULL, NULL),
('TerryTao@uchicago.edu','2018-04-18 10:47:53','Terrence','Tao','Pull Ups',10,3,10),
('TerryTao@uchicago.edu','2018-04-18 11:00:35','Terrence','Tao','Shoulder Press',12,4,10),
('TerryTao@uchicago.edu','2018-04-18 11:20:26','Terrence','Tao','Lateral Pull Down',13,2,10),
('TerryTao@uchicago.edu','2018-04-18 11:40:14','Terrence','Tao','1 Arm Lateral Raise',10,4,10);




INSERT INTO Exercise
VALUES
('Bench Press','Chest','Bench'),
('Dumbbell Bench Press', 'Chest', 'Dumbbells'),
('Dumbbell Flyes', 'Chest', 'Dumbbells'),
('Pull Ups', 'Back', 'Pull Up Bar' ),
('Weighted Pull Ups', 'Back', 'Pull Up Bar'),
('Jog', 'Cardio', 'Treadmill'),
('Bent over Row', 'Back', 'Bar Bell'),
('Cable Flyes', 'Chest', 'Cable Machine'),
('Incline Press', 'Chest', 'Incline Bench'),
('Decline Press', 'Chest', 'Decline Bench'),
('1 Arm Lateral Raise', 'Shoulders', 'Dumbbells'),
('Dumbbell Curl', 'Arms', 'Dumbbells'),
('Lateral Pull Down', 'Back', 'Pull Down Machine'),
('Squats','Legs', 'Barbell'),
('Deadlifts','Back', 'Barbell'),
('Cleans', 'Shoulders', 'Barbell');



INSERT INTO Schedule
VALUES
('Sunday', '12AM'),
('Sunday', '1AM'),
('Sunday', '2AM'),
('Sunday', '3AM'),
('Sunday', '4AM'),
('Sunday', '5AM'),
('Sunday', '6AM'),
('Sunday', '7AM'),
('Sunday', '8AM'),
('Sunday', '9AM'),
('Sunday', '10AM'),
('Sunday', '11AM'),
('Sunday', '12PM'),
('Sunday', '1PM'),
('Sunday', '2PM'),
('Sunday', '3PM'),
('Sunday', '4PM'),
('Sunday', '5PM'),
('Sunday', '6PM'),
('Sunday', '7PM'),
('Sunday', '8PM'),
('Sunday', '9PM'),
('Sunday', '10PM'),
('Sunday', '11PM'),
('Monday', '12AM'),
('Monday', '1AM'),
('Monday', '2AM'),
('Monday', '3AM'),
('Monday', '4AM'),
('Monday', '5AM'),
('Monday', '6AM'),
('Monday', '7AM'),
('Monday', '8AM'),
('Monday', '9AM'),
('Monday', '10AM'),
('Monday', '11AM'),
('Monday', '12PM'),
('Monday', '1PM'),
('Monday', '2PM'),
('Monday', '3PM'),
('Monday', '4PM'),
('Monday', '5PM'),
('Monday', '6PM'),
('Monday', '7PM'),
('Monday', '8PM'),
('Monday', '9PM'),
('Monday', '10PM'),
('Monday', '11PM'),
('Tuesday', '12AM'),
('Tuesday', '1AM'),
('Tuesday', '2AM'),
('Tuesday', '3AM'),
('Tuesday', '4AM'),
('Tuesday', '5AM'),
('Tuesday', '6AM'),
('Tuesday', '7AM'),
('Tuesday', '8AM'),
('Tuesday', '9AM'),
('Tuesday', '10AM'),
('Tuesday', '11AM'),
('Tuesday', '12PM'),
('Tuesday', '1PM'),
('Tuesday', '2PM'),
('Tuesday', '3PM'),
('Tuesday', '4PM'),
('Tuesday', '5PM'),
('Tuesday', '6PM'),
('Tuesday', '7PM'),
('Tuesday', '8PM'),
('Tuesday', '9PM'),
('Tuesday', '10PM'),
('Tuesday', '11PM'),
('Wednesday', '12AM'),
('Wednesday', '1AM'),
('Wednesday', '2AM'),
('Wednesday', '3AM'),
('Wednesday', '4AM'),
('Wednesday', '5AM'),
('Wednesday', '6AM'),
('Wednesday', '7AM'),
('Wednesday', '8AM'),
('Wednesday', '9AM'),
('Wednesday', '10AM'),
('Wednesday', '11AM'),
('Wednesday', '12PM'),
('Wednesday', '1PM'),
('Wednesday', '2PM'),
('Wednesday', '3PM'),
('Wednesday', '4PM'),
('Wednesday', '5PM'),
('Wednesday', '6PM'),
('Wednesday', '7PM'),
('Wednesday', '8PM'),
('Wednesday', '9PM'),
('Wednesday', '10PM'),
('Wednesday', '11PM'),
('Thursday', '12AM'),
('Thursday', '1AM'),
('Thursday', '2AM'),
('Thursday', '3AM'),
('Thursday', '4AM'),
('Thursday', '5AM'),
('Thursday', '6AM'),
('Thursday', '7AM'),
('Thursday', '8AM'),
('Thursday', '9AM'),
('Thursday', '10AM'),
('Thursday', '11AM'),
('Thursday', '12PM'),
('Thursday', '1PM'),
('Thursday', '2PM'),
('Thursday', '3PM'),
('Thursday', '4PM'),
('Thursday', '5PM'),
('Thursday', '6PM'),
('Thursday', '7PM'),
('Thursday', '8PM'),
('Thursday', '9PM'),
('Thursday', '10PM'),
('Thursday', '11PM'),
('Friday', '12AM'),
('Friday', '1AM'),
('Friday', '2AM'),
('Friday', '3AM'),
('Friday', '4AM'),
('Friday', '5AM'),
('Friday', '6AM'),
('Friday', '7AM'),
('Friday', '8AM'),
('Friday', '9AM'),
('Friday', '10AM'),
('Friday', '11AM'),
('Friday', '12PM'),
('Friday', '1PM'),
('Friday', '2PM'),
('Friday', '3PM'),
('Friday', '4PM'),
('Friday', '5PM'),
('Friday', '6PM'),
('Friday', '7PM'),
('Friday', '8PM'),
('Friday', '9PM'),
('Friday', '10PM'),
('Friday', '11PM'),
('Saturday', '12AM'),
('Saturday', '1AM'),
('Saturday', '2AM'),
('Saturday', '3AM'),
('Saturday', '4AM'),
('Saturday', '5AM'),
('Saturday', '6AM'),
('Saturday', '7AM'),
('Saturday', '8AM'),
('Saturday', '9AM'),
('Saturday', '10AM'),
('Saturday', '11AM'),
('Saturday', '12PM'),
('Saturday', '1PM'),
('Saturday', '2PM'),
('Saturday', '3PM'),
('Saturday', '4PM'),
('Saturday', '5PM'),
('Saturday', '6PM'),
('Saturday', '7PM'),
('Saturday', '8PM'),
('Saturday', '9PM'),
('Saturday', '10PM'),
('Saturday', '11PM');


INSERT INTO Has
VALUES
('Eggs','Calories',78, null),
('Eggs','Calcium',2, '%'),
('Eggs','Carbohydrates',.6, 'grams'),
('Eggs','Cholesterol',187, 'milligrams'),
('Eggs','Dietary Fiber',0, 'grams'),
('Eggs','Iron',3, '%'),
('Eggs','Protein',6, 'grams'),
('Eggs','Saturated Fat',1.6, 'grams'),
('Eggs','Sodium',62, 'milligrams'),
('Eggs','Sugars',.6, 'grams'),
('Eggs','Total Fat',5, 'grams'),
('Eggs','Vitamin A',5, '%'),
('Eggs','Vitamin C',0, '%');


INSERT INTO Meal
VALUES
('Bacon'),
('Chocolate Cake'),
('Grilled Cheese'),
('Cheeseburger'),
('Burrito'),
('Carbonara'),
('Ham Sandwich');


INSERT INTO Person
VALUES
('JillR@gmail.com','Jill','Russo',33,'9878 Daulton Blvd.',124, 'Pounds',8),
('Sarahhhh@hotmail.com','Sarah','Staff',29,'1234 Twin Cities Dr.',122, 'Pounds',7),
('SS56@gmail.com','Sean','Stratmoen',32,'765 Coffman Street',178, 'Pounds',4),
('Chaus@yahoo.com','Corbin','Hauserman',45,'1988 Jerome Court',204, 'Pounds',7),
('Cberb@gmail.com','Chad','Berberick',25,'4567 Crispin Way Street.',198, 'Pounds',5),
('CJ123@gmail.com','Chris','Jones',37,'8833 Young Forest Street.',153, 'Pounds',4);

INSERT INTO Ingredients
VALUES
('Bread');


INSERT INTO Does
VALUES
('AmeerHassouna@uchicago.edu','2018-04-22 12:32:22','Ameer','Hassouna','Cleans',10,2,4),
('Cberb@gmail.com','2018-04-22 11:52:31','Chad','Berberick','Jog',30,2,4),
('AmeerHassouna@uchicago.edu','2018-04-21 06:33:53','Ameer','Hassouna','Weighted Pull Ups',15,2,11),
('Chaus@yahoo.com','2018-04-22 10:17:43','Corbin','Hauserman','Cleans',25,3,13),
('AmeerHassouna@uchicago.edu','2018-04-20 17:12:14','Ameer','Hassouna','Squats',30,3,12),
('AmeerHassouna@uchicago.edu','2018-04-19 15:43:13','Ameer','Hassouna','Cable Flyes',30,4,10);


INSERT INTO ConsistsOf
VALUES ((SELECT mealName FROM Meal WHERE mealName = 'Cheeseburger'),'Hamburger Bun', 20, 'grams'),
((SELECT mealName FROM Meal WHERE mealName = 'Cheeseburger'),'Ground Beef', 90, 'grams'),
((SELECT mealName FROM Meal WHERE mealName = 'Cheeseburger'),'Cheese', 45, 'grams');


INSERT INTO ConsistsOf
VALUES ((SELECT mealName FROM Meal WHERE mealName = 'Grilled Cheese'),'Bread', 20, 'grams'),
((SELECT mealName FROM Meal WHERE mealName = 'Grilled Cheese'),'Cheese', 90, 'grams');


DELETE FROM `Meal`
WHERE mealName = 'Bacon';


DELETE FROM `Meal`
WHERE mealName = 'Burrito';


UPDATE `Person` 
SET `Weight`='121' 
WHERE `Email`='Sarahhhh@hotmail.com';

UPDATE `Person` 
SET `Age`='21' 
WHERE `Email`='AmeerHassouna@uchicago.edu';

INSERT INTO Includes
VALUES
(2, 'Monday', '9AM', 'Squats' ),
(2, 'Monday', '10AM', 'Jog' ),
(2, 'Tuesday', '11AM', 'Dumbbell Bench Press' ),
(2, 'Tuesday', '12PM', 'Dumbbell Curl' ),
(2, 'Wednesday', '9AM', 'Dumbbell Flyes' ),
(2, 'Wednesday', '10AM', 'Pull Ups' ),
(2, 'Thursday', '11AM', 'Squats' ),
(2, 'Thursday', '12PM', 'Cleans' ),
(2, 'Friday', '11AM', 'Deadlifts' ),
(2, 'Friday', '12PM', 'Squats' );


UPDATE `Includes` SET `scheduleIntensity`='2', `scheduleMinutes`='15' WHERE `planID`='1' and`scheduleDay`='Friday' and`scheduleTime`='3PM' and`scheduleActivity`='Bench Press';
UPDATE `Includes` SET `scheduleIntensity`='4', `scheduleMinutes`='15' WHERE `planID`='1' and`scheduleDay`='Monday' and`scheduleTime`='9AM' and`scheduleActivity`='Bent over Row';
UPDATE `Includes` SET `scheduleIntensity`='3', `scheduleMinutes`='15' WHERE `planID`='1' and`scheduleDay`='Monday' and`scheduleTime`='9AM' and`scheduleActivity`='Squats';
UPDATE `Includes` SET `scheduleIntensity`='3', `scheduleMinutes`='30' WHERE `planID`='1' and`scheduleDay`='Saturday' and`scheduleTime`='11AM' and`scheduleActivity`='Jog';
UPDATE `Includes` SET `scheduleIntensity`='2', `scheduleMinutes`='30' WHERE `planID`='1' and`scheduleDay`='Sunday' and`scheduleTime`='12PM' and`scheduleActivity`='Weighted Pull Ups';
UPDATE `Includes` SET `scheduleIntensity`='4', `scheduleMinutes`='15' WHERE `planID`='1' and`scheduleDay`='Thursday' and`scheduleTime`='3PM' and`scheduleActivity`='Squats';
UPDATE `Includes` SET `scheduleIntensity`='3', `scheduleMinutes`='30' WHERE `planID`='1' and`scheduleDay`='Tuesday' and`scheduleTime`='12PM' and`scheduleActivity`='Cleans';
UPDATE `Includes` SET `scheduleIntensity`='1', `scheduleMinutes`='15' WHERE `planID`='1' and`scheduleDay`='Tuesday' and`scheduleTime`='12PM' and`scheduleActivity`='Deadlift';
UPDATE `Includes` SET `scheduleIntensity`='2', `scheduleMinutes`='30' WHERE `planID`='1' and`scheduleDay`='Wednesday' and`scheduleTime`='10AM' and`scheduleActivity`='1 Arm Lateral Raise';
UPDATE `Includes` SET `scheduleIntensity`='2', `scheduleMinutes`='30' WHERE `planID`='1' and`scheduleDay`='Wednesday' and`scheduleTime`='10AM' and`scheduleActivity`='Jog';
UPDATE `Includes` SET `scheduleIntensity`='4', `scheduleMinutes`='15' WHERE `planID`='2' and`scheduleDay`='Friday' and`scheduleTime`='11AM' and`scheduleActivity`='Deadlifts';
UPDATE `Includes` SET `scheduleIntensity`='5', `scheduleMinutes`='30' WHERE `planID`='2' and`scheduleDay`='Friday' and`scheduleTime`='12PM' and`scheduleActivity`='Squats';
UPDATE `Includes` SET `scheduleIntensity`='5', `scheduleMinutes`='30' WHERE `planID`='2' and`scheduleDay`='Monday' and`scheduleTime`='10AM' and`scheduleActivity`='Jog';
UPDATE `Includes` SET `scheduleIntensity`='4', `scheduleMinutes`='30' WHERE `planID`='2' and`scheduleDay`='Monday' and`scheduleTime`='9AM' and`scheduleActivity`='Squats';
UPDATE `Includes` SET `scheduleIntensity`='6', `scheduleMinutes`='30' WHERE `planID`='2' and`scheduleDay`='Thursday' and`scheduleTime`='11AM' and`scheduleActivity`='Squats';
UPDATE `Includes` SET `scheduleIntensity`='5', `scheduleMinutes`='30' WHERE `planID`='2' and`scheduleDay`='Thursday' and`scheduleTime`='12PM' and`scheduleActivity`='Cleans';
UPDATE `Includes` SET `scheduleIntensity`='5', `scheduleMinutes`='30' WHERE `planID`='2' and`scheduleDay`='Tuesday' and`scheduleTime`='11AM' and`scheduleActivity`='Dumbbell Bench Press';
UPDATE `Includes` SET `scheduleIntensity`='5', `scheduleMinutes`='30' WHERE `planID`='2' and`scheduleDay`='Tuesday' and`scheduleTime`='12AM' and`scheduleActivity`='Dumbbell Curl';
UPDATE `Includes` SET `scheduleIntensity`='5', `scheduleMinutes`='30' WHERE `planID`='2' and`scheduleDay`='Wednesday' and`scheduleTime`='10AM' and`scheduleActivity`='Pull Ups';
UPDATE `Includes` SET `scheduleIntensity`='6', `scheduleMinutes`='30' WHERE `planID`='2' and`scheduleDay`='Wednesday' and`scheduleTime`='9AM' and`scheduleActivity`='Dumbbell Flyes';

UPDATE `Includes` SET `scheduleSets`='3', `scheduleReps`='10' WHERE `planID`='1' and`scheduleDay`='Friday' and`scheduleTime`='3PM' and`scheduleActivity`='Bench Press';
UPDATE `Includes` SET `scheduleSets`='3', `scheduleReps`='10' WHERE `planID`='1' and`scheduleDay`='Monday' and`scheduleTime`='9AM' and`scheduleActivity`='Bent over Row';
UPDATE `Includes` SET `scheduleSets`='3', `scheduleReps`='10' WHERE `planID`='1' and`scheduleDay`='Monday' and`scheduleTime`='9AM' and`scheduleActivity`='Squats';
UPDATE `Includes` SET `scheduleSets`='3', `scheduleReps`='10' WHERE `planID`='1' and`scheduleDay`='Saturday' and`scheduleTime`='11AM' and`scheduleActivity`='Jog';
UPDATE `Includes` SET `scheduleSets`='3', `scheduleReps`='10' WHERE `planID`='1' and`scheduleDay`='Sunday' and`scheduleTime`='12PM' and`scheduleActivity`='Weighted Pull Ups';
UPDATE `Includes` SET `scheduleSets`='3', `scheduleReps`='10' WHERE `planID`='1' and`scheduleDay`='Thursday' and`scheduleTime`='3PM' and`scheduleActivity`='Squats';
UPDATE `Includes` SET `scheduleSets`='2', `scheduleReps`='10' WHERE `planID`='1' and`scheduleDay`='Tuesday' and`scheduleTime`='12PM' and`scheduleActivity`='Cleans';
UPDATE `Includes` SET `scheduleSets`='3', `scheduleReps`='10' WHERE `planID`='1' and`scheduleDay`='Tuesday' and`scheduleTime`='12PM' and`scheduleActivity`='Deadlift';
UPDATE `Includes` SET `scheduleSets`='3', `scheduleReps`='10' WHERE `planID`='1' and`scheduleDay`='Wednesday' and`scheduleTime`='10AM' and`scheduleActivity`='1 Arm Lateral Raise';
UPDATE `Includes` SET `scheduleSets`='3', `scheduleReps`='10' WHERE `planID`='1' and`scheduleDay`='Wednesday' and`scheduleTime`='10AM' and`scheduleActivity`='Jog';
UPDATE `Includes` SET `scheduleSets`='3', `scheduleReps`='10' WHERE `planID`='2' and`scheduleDay`='Friday' and`scheduleTime`='11AM' and`scheduleActivity`='Deadlifts';
UPDATE `Includes` SET `scheduleSets`='3', `scheduleReps`='10' WHERE `planID`='2' and`scheduleDay`='Friday' and`scheduleTime`='12PM' and`scheduleActivity`='Squats';
UPDATE `Includes` SET `scheduleSets`='3', `scheduleReps`='10' WHERE `planID`='2' and`scheduleDay`='Monday' and`scheduleTime`='10AM' and`scheduleActivity`='Jog';
UPDATE `Includes` SET `scheduleSets`='3', `scheduleReps`='10' WHERE `planID`='2' and`scheduleDay`='Monday' and`scheduleTime`='9AM' and`scheduleActivity`='Squats';
UPDATE `Includes` SET `scheduleSets`='3', `scheduleReps`='10' WHERE `planID`='2' and`scheduleDay`='Thursday' and`scheduleTime`='11AM' and`scheduleActivity`='Squats';
UPDATE `Includes` SET `scheduleSets`='3', `scheduleReps`='10' WHERE `planID`='2' and`scheduleDay`='Thursday' and`scheduleTime`='12PM' and`scheduleActivity`='Cleans';
UPDATE `Includes` SET `scheduleSets`='3', `scheduleReps`='10' WHERE `planID`='2' and`scheduleDay`='Tuesday' and`scheduleTime`='11AM' and`scheduleActivity`='Dumbbell Bench Press';
UPDATE `Includes` SET `scheduleSets`='3', `scheduleReps`='10' WHERE `planID`='2' and`scheduleDay`='Tuesday' and`scheduleTime`='12AM' and`scheduleActivity`='Dumbbell Curl';
UPDATE `Includes` SET `scheduleSets`='3', `scheduleReps`='10' WHERE `planID`='2' and`scheduleDay`='Wednesday' and`scheduleTime`='10AM' and`scheduleActivity`='Pull Ups';
UPDATE `Includes` SET `scheduleSets`='3', `scheduleReps`='10' WHERE `planID`='2' and`scheduleDay`='Wednesday' and`scheduleTime`='9AM' and`scheduleActivity`='Dumbbell Flyes';

INSERT INTO Includes
VALUES
(3, 'Monday', '9AM', 'Squats',8,30,3,10 ),
(3, 'Monday', '10AM', 'Incline Press',7,15,3, 10),
(3, 'Monday', '11AM', 'Bench Press',8,30,3,10 ),
(3, 'Tuesday', '11AM', 'Dumbbell Bench Press',7,30,3,10 ),
(3, 'Tuesday', '12PM', 'Dumbbell Curl',7,30,3,10 ),
(3, 'Tuesday', '1PM', 'Cleans',8,30,3,10 ),
(3, 'Wednesday', '9AM', 'Dumbbell Flyes',7,30,3, 10),
(3, 'Wednesday', '10AM', 'Lateral Pull Down',7,30,3,10 ),
(3, 'Wednesday', '11AM', 'Pull Ups',8,30,3, 10),
(3, 'Thursday', '11AM', 'Squats',7,30,3,10 ),
(3, 'Thursday', '12PM', 'Cleans',8,30,3,10 ),
(3, 'Thursday', '1PM', 'Incline Press',7,30,3,10 ),
(3, 'Friday', '11AM', 'Deadlifts',7,30,3, 10),
(3, 'Friday', '12PM', 'Bent over Row',8,30,3,10 ),
(3, 'Friday', '1PM', 'Squats',7,30,3,10 );

UPDATE `Includes` SET `scheduleSets`=NULL, `scheduleReps`=NULL WHERE `planID`='1' and`scheduleDay`='Saturday' and`scheduleTime`='11AM' and`scheduleActivity`='Jog';
UPDATE `Includes` SET `scheduleSets`=NULL, `scheduleReps`=NULL WHERE `planID`='1' and`scheduleDay`='Wednesday' and`scheduleTime`='10AM' and`scheduleActivity`='Jog';
UPDATE `Includes` SET `scheduleSets`=NULL, `scheduleReps`=NULL WHERE `planID`='2' and`scheduleDay`='Monday' and`scheduleTime`='10AM' and`scheduleActivity`='Jog';

UPDATE `atinnDB`.`Eats` SET `Amount`='23' WHERE `Email`='LandonM@uchicago.edu' and`Datetime`='2018-04-19 15:43:33' and`mealName`='Steak';
UPDATE `atinnDB`.`Eats` SET `Amount`='21' WHERE `Email`='NickFlees@uchicago.edu' and`Datetime`='2018-04-04 05:23:15' and`mealName`='Steak';
UPDATE `atinnDB`.`Eats` SET `Amount`='18' WHERE `Email`='TerryTao@uchicago.edu' and`Datetime`='2018-04-15 16:13:16' and`mealName`='Steak';



DELETE FROM `Exercise` WHERE `activityName`='1 Arm Lateral Raise' and`activityMuscle`='Shoulders' and`activityEquipment`='Dumbbells';
DELETE FROM `Exercise` WHERE `activityName`='Bent over Row' and`activityMuscle`='Back' and`activityEquipment`='Bar Bell';
DELETE FROM `Exercise` WHERE `activityName`='Bench Press' and`activityMuscle`='Chest' and`activityEquipment`='Bench';
DELETE FROM `Exercise` WHERE `activityName`='Cable Flyes' and`activityMuscle`='Chest' and`activityEquipment`='Cable Machine';
DELETE FROM `Exercise` WHERE `activityName`='Cleans' and`activityMuscle`='Shoulders' and`activityEquipment`='Barbell';
DELETE FROM `Exercise` WHERE `activityName`='Deadlifts' and`activityMuscle`='Back' and`activityEquipment`='Barbell';
DELETE FROM `Exercise` WHERE `activityName`='Decline Press' and`activityMuscle`='Chest' and`activityEquipment`='Decline Bench';
DELETE FROM `Exercise` WHERE `activityName`='Dumbbell Bench Press' and`activityMuscle`='Chest' and`activityEquipment`='Dumbbells';
DELETE FROM `Exercise` WHERE `activityName`='Dumbbell Curl' and`activityMuscle`='Arms' and`activityEquipment`='Dumbbells';
DELETE FROM `Exercise` WHERE `activityName`='Dumbbell Flyes' and`activityMuscle`='Chest' and`activityEquipment`='Dumbbells';
DELETE FROM `Exercise` WHERE `activityName`='Incline Press' and`activityMuscle`='Chest' and`activityEquipment`='Incline Bench';
DELETE FROM `Exercise` WHERE `activityName`='Jog' and`activityMuscle`='Cardio' and`activityEquipment`='Treadmill';
DELETE FROM `Exercise` WHERE `activityName`='Lateral Pull Down' and`activityMuscle`='Back' and`activityEquipment`='Pull Down Machine';
DELETE FROM `Exercise` WHERE `activityName`='Pull Ups' and`activityMuscle`='Back' and`activityEquipment`='Pull Up Bar';
DELETE FROM `Exercise` WHERE `activityName`='Squats' and`activityMuscle`='Legs' and`activityEquipment`='Barbell';
DELETE FROM `Exercise` WHERE `activityName`='Weighted Pull Ups' and`activityMuscle`='Back' and`activityEquipment`='Pull Up Bar';


DELETE FROM `Has` WHERE `ingredientName`='Eggs' and`nutritionName`='Calcium';
DELETE FROM `Has` WHERE `ingredientName`='Eggs' and`nutritionName`='Calories';
DELETE FROM `Has` WHERE `ingredientName`='Eggs' and`nutritionName`='Carbohydrates';
DELETE FROM `Has` WHERE `ingredientName`='Eggs' and`nutritionName`='Cholesterol';
DELETE FROM `Has` WHERE `ingredientName`='Eggs' and`nutritionName`='Dietary Fiber';
DELETE FROM `Has` WHERE `ingredientName`='Eggs' and`nutritionName`='Iron';
DELETE FROM `Has` WHERE `ingredientName`='Eggs' and`nutritionName`='Protein';
DELETE FROM `Has` WHERE `ingredientName`='Eggs' and`nutritionName`='Saturated Fat';
DELETE FROM `Has` WHERE `ingredientName`='Eggs' and`nutritionName`='Sodium';
DELETE FROM `Has` WHERE `ingredientName`='Eggs' and`nutritionName`='Sugars';
DELETE FROM `Has` WHERE `ingredientName`='Eggs' and`nutritionName`='Total Fat';
DELETE FROM `Has` WHERE `ingredientName`='Eggs' and`nutritionName`='Vitamin A';
DELETE FROM `Has` WHERE `ingredientName`='Eggs' and`nutritionName`='Vitamin C';
DELETE FROM `Has` WHERE `ingredientName`='Steak' and`nutritionName`='Calcium';
DELETE FROM `Has` WHERE `ingredientName`='Steak' and`nutritionName`='Calories';
DELETE FROM `Has` WHERE `ingredientName`='Steak' and`nutritionName`='Carbohydrates';
DELETE FROM `Has` WHERE `ingredientName`='Steak' and`nutritionName`='Cholesterol';
DELETE FROM `Has` WHERE `ingredientName`='Steak' and`nutritionName`='Dietary Fiber';
DELETE FROM `Has` WHERE `ingredientName`='Steak' and`nutritionName`='Iron';
DELETE FROM `Has` WHERE `ingredientName`='Steak' and`nutritionName`='Protein';
DELETE FROM `Has` WHERE `ingredientName`='Steak' and`nutritionName`='Saturated Fat';
DELETE FROM `Has` WHERE `ingredientName`='Steak' and`nutritionName`='Sodium';
DELETE FROM `Has` WHERE `ingredientName`='Steak' and`nutritionName`='Sugars';
DELETE FROM `Has` WHERE `ingredientName`='Steak' and`nutritionName`='Total Fat';
DELETE FROM `Has` WHERE `ingredientName`='Steak' and`nutritionName`='Vitamin A';
DELETE FROM `Has` WHERE `ingredientName`='Steak' and`nutritionName`='Vitamin C';


DELETE FROM `Does` WHERE `Email`='AmeerHassouna@uchicago.edu' and`DateTime`='2018-04-19 15:43:13';
DELETE FROM `Does` WHERE `Email`='AmeerHassouna@uchicago.edu' and`DateTime`='2018-04-20 17:12:14';
DELETE FROM `Does` WHERE `Email`='AmeerHassouna@uchicago.edu' and`DateTime`='2018-04-21 06:33:53';
DELETE FROM `Does` WHERE `Email`='AmeerHassouna@uchicago.edu' and`DateTime`='2018-04-22 12:32:22';
DELETE FROM `Does` WHERE `Email`='Cberb@gmail.com' and`DateTime`='2018-04-22 11:52:31';
DELETE FROM `Does` WHERE `Email`='Chaus@yahoo.com' and`DateTime`='2018-04-22 10:17:43';
DELETE FROM `Does` WHERE `Email`='MichaelSuna@uchicago.edu' and`DateTime`='2018-04-17 03:32:53';
DELETE FROM `Does` WHERE `Email`='MichaelSuna@uchicago.edu' and`DateTime`='2018-04-17 03:52:23';
DELETE FROM `Does` WHERE `Email`='MichaelSuna@uchicago.edu' and`DateTime`='2018-04-17 04:02:13';
DELETE FROM `Does` WHERE `Email`='MichaelSuna@uchicago.edu' and`DateTime`='2018-04-17 04:13:41';
DELETE FROM `Does` WHERE `Email`='MichaelSuna@uchicago.edu' and`DateTime`='2018-04-17 04:42:24';
DELETE FROM `Does` WHERE `Email`='TerryTao@uchicago.edu' and`DateTime`='2018-04-18 10:15:33';
DELETE FROM `Does` WHERE `Email`='TerryTao@uchicago.edu' and`DateTime`='2018-04-18 10:47:53';
DELETE FROM `Does` WHERE `Email`='TerryTao@uchicago.edu' and`DateTime`='2018-04-18 11:00:35';
DELETE FROM `Does` WHERE `Email`='TerryTao@uchicago.edu' and`DateTime`='2018-04-18 11:20:26';
DELETE FROM `Does` WHERE `Email`='TerryTao@uchicago.edu' and`DateTime`='2018-04-18 11:40:14';

DELETE FROM `Does` WHERE `Email`='AmeerHassouna@uchicago.edu' and`DateTime`='2018-04-19 15:43:13';
DELETE FROM `Does` WHERE `Email`='AmeerHassouna@uchicago.edu' and`DateTime`='2018-04-20 17:12:14';
DELETE FROM `Does` WHERE `Email`='AmeerHassouna@uchicago.edu' and`DateTime`='2018-04-21 06:33:53';
DELETE FROM `Does` WHERE `Email`='AmeerHassouna@uchicago.edu' and`DateTime`='2018-04-22 12:32:22';
DELETE FROM `Does` WHERE `Email`='Cberb@gmail.com' and`DateTime`='2018-04-22 11:52:31';
DELETE FROM `Does` WHERE `Email`='Chaus@yahoo.com' and`DateTime`='2018-04-22 10:17:43';
DELETE FROM `Does` WHERE `Email`='MichaelSuna@uchicago.edu' and`DateTime`='2018-04-17 03:32:53';
DELETE FROM `Does` WHERE `Email`='MichaelSuna@uchicago.edu' and`DateTime`='2018-04-17 03:52:23';
DELETE FROM `Does` WHERE `Email`='MichaelSuna@uchicago.edu' and`DateTime`='2018-04-17 04:02:13';
DELETE FROM `Does` WHERE `Email`='MichaelSuna@uchicago.edu' and`DateTime`='2018-04-17 04:13:41';
DELETE FROM `Does` WHERE `Email`='MichaelSuna@uchicago.edu' and`DateTime`='2018-04-17 04:42:24';
DELETE FROM `Does` WHERE `Email`='TerryTao@uchicago.edu' and`DateTime`='2018-04-18 10:15:33';
DELETE FROM `Does` WHERE `Email`='TerryTao@uchicago.edu' and`DateTime`='2018-04-18 10:47:53';
DELETE FROM `Does` WHERE `Email`='TerryTao@uchicago.edu' and`DateTime`='2018-04-18 11:00:35';
DELETE FROM `Does` WHERE `Email`='TerryTao@uchicago.edu' and`DateTime`='2018-04-18 11:20:26';
DELETE FROM `Does` WHERE `Email`='TerryTao@uchicago.edu' and`DateTime`='2018-04-18 11:40:14';


DELETE FROM `Eats` WHERE `Email`='LandonM@uchicago.edu' and`Datetime`='2018-04-13 07:13:56' and`mealName`='Peanut Butter';
DELETE FROM `Eats` WHERE `Email`='LandonM@uchicago.edu' and`Datetime`='2018-04-14 12:34:31' and`mealName`='Banana';
DELETE FROM `Eats` WHERE `Email`='LandonM@uchicago.edu' and`Datetime`='2018-04-15 09:26:32' and`mealName`='White Rice';
DELETE FROM `Eats` WHERE `Email`='LandonM@uchicago.edu' and`Datetime`='2018-04-16 08:43:34' and`mealName`='Meat Loaf';
DELETE FROM `Eats` WHERE `Email`='LandonM@uchicago.edu' and`Datetime`='2018-04-19 15:43:33' and`mealName`='Steak';
DELETE FROM `Eats` WHERE `Email`='NickFlees@uchicago.edu' and`Datetime`='2018-04-04 05:23:15' and`mealName`='Steak';
DELETE FROM `Eats` WHERE `Email`='NickFlees@uchicago.edu' and`Datetime`='2018-04-13 12:23:56' and`mealName`='Peanut Butter';
DELETE FROM `Eats` WHERE `Email`='NickFlees@uchicago.edu' and`Datetime`='2018-04-13 23:42:56' and`mealName`='Peanut Butter';
DELETE FROM `Eats` WHERE `Email`='TerryTao@uchicago.edu' and`Datetime`='2018-04-13 02:51:56' and`mealName`='Canned Tuna';
DELETE FROM `Eats` WHERE `Email`='TerryTao@uchicago.edu' and`Datetime`='2018-04-13 14:23:56' and`mealName`='Peanut Butter';
DELETE FROM `Eats` WHERE `Email`='TerryTao@uchicago.edu' and`Datetime`='2018-04-15 16:13:16' and`mealName`='Steak';
DELETE FROM `Eats` WHERE `Email`='TerryTao@uchicago.edu' and`Datetime`='2018-04-17 03:32:26' and`mealName`='Eggs';


UPDATE `Includes` SET `scheduleActivity`='Hip Extension with Bands' WHERE `planID`='1' and`scheduleDay`='Friday' and`scheduleTime`='3PM' and`scheduleActivity`='Bench Press';
UPDATE `Includes` SET `scheduleActivity`='Incline Push-Up Close-Grip' WHERE `planID`='1' and`scheduleDay`='Monday' and`scheduleTime`='9AM' and`scheduleActivity`='Bent over Row';
UPDATE `Includes` SET `scheduleActivity`='Lower Back-SMR' WHERE `planID`='1' and`scheduleDay`='Monday' and`scheduleTime`='9AM' and`scheduleActivity`='Squats';
UPDATE `Includes` SET `scheduleActivity`='Kettlebell Dead Clean' WHERE `planID`='1' and`scheduleDay`='Saturday' and`scheduleTime`='11AM' and`scheduleActivity`='Jog';
UPDATE `Includes` SET `scheduleActivity`='Hanging Bar Good Morning' WHERE `planID`='1' and`scheduleDay`='Sunday' and`scheduleTime`='12PM' and`scheduleActivity`='Weighted Pull Ups';
UPDATE `Includes` SET `scheduleActivity`='Reverse Band Power Squat' WHERE `planID`='1' and`scheduleDay`='Thursday' and`scheduleTime`='3PM' and`scheduleActivity`='Squats';
UPDATE `Includes` SET `scheduleActivity`='Janda Sit-Up' WHERE `planID`='1' and`scheduleDay`='Tuesday' and`scheduleTime`='12PM' and`scheduleActivity`='Cleans';
UPDATE `Includes` SET `scheduleActivity`='Decline Push-Up' WHERE `planID`='1' and`scheduleDay`='Tuesday' and`scheduleTime`='12PM' and`scheduleActivity`='Deadlift';
UPDATE `Includes` SET `scheduleActivity`='Burpee To Medicine Ball Press' WHERE `planID`='1' and`scheduleDay`='Wednesday' and`scheduleTime`='10AM' and`scheduleActivity`='1 Arm Lateral Raise';
UPDATE `Includes` SET `scheduleActivity`='Anti-Gravity Press' WHERE `planID`='1' and`scheduleDay`='Wednesday' and`scheduleTime`='10AM' and`scheduleActivity`='Jog';
UPDATE `Includes` SET `scheduleActivity`='Suitcase Crunch' WHERE `planID`='2' and`scheduleDay`='Friday' and`scheduleTime`='11AM' and`scheduleActivity`='Deadlifts';
UPDATE `Includes` SET `scheduleActivity`='Hip Circles (prone)' WHERE `planID`='2' and`scheduleDay`='Friday' and`scheduleTime`='12PM' and`scheduleActivity`='Squats';
UPDATE `Includes` SET `scheduleActivity`='Alternate Heel Touchers' WHERE `planID`='2' and`scheduleDay`='Monday' and`scheduleTime`='10AM' and`scheduleActivity`='Jog';
UPDATE `Includes` SET `scheduleActivity`='Open Palm Kettlebell Clean' WHERE `planID`='2' and`scheduleDay`='Monday' and`scheduleTime`='9AM' and`scheduleActivity`='Squats';
UPDATE `Includes` SET `scheduleActivity`='Seated Floor Hamstring Stretch' WHERE `planID`='2' and`scheduleDay`='Thursday' and`scheduleTime`='11AM' and`scheduleActivity`='Squats';
UPDATE `Includes` SET `scheduleActivity`='Dancer\'s Stretch' WHERE `planID`='2' and`scheduleDay`='Thursday' and`scheduleTime`='12PM' and`scheduleActivity`='Cleans';
UPDATE `Includes` SET `scheduleActivity`='Bent Over Two-Dumbbell Row' WHERE `planID`='2' and`scheduleDay`='Tuesday' and`scheduleTime`='11AM' and`scheduleActivity`='Dumbbell Bench Press';
UPDATE `Includes` SET `scheduleActivity`='Seated One-arm Cable Pulley Rows' WHERE `planID`='2' and`scheduleDay`='Tuesday' and`scheduleTime`='12PM' and`scheduleActivity`='Dumbbell Curl';
UPDATE `Includes` SET `scheduleActivity`='Two-Arm Kettlebell Row' WHERE `planID`='2' and`scheduleDay`='Wednesday' and`scheduleTime`='10AM' and`scheduleActivity`='Pull Ups';
UPDATE `Includes` SET `scheduleActivity`='Barbell Walking Lunge' WHERE `planID`='2' and`scheduleDay`='Wednesday' and`scheduleTime`='9AM' and`scheduleActivity`='Dumbbell Flyes';
UPDATE `Includes` SET `scheduleActivity`='Close-Stance Dumbbell Front Squat' WHERE `planID`='3' and`scheduleDay`='Friday' and`scheduleTime`='11AM' and`scheduleActivity`='Deadlifts';
UPDATE `Includes` SET `scheduleActivity`='Fast Skipping' WHERE `planID`='3' and`scheduleDay`='Friday' and`scheduleTime`='12PM' and`scheduleActivity`='Bent over Row';
UPDATE `Includes` SET `scheduleActivity`='Hang Clean - Below the Knees' WHERE `planID`='3' and`scheduleDay`='Friday' and`scheduleTime`='1PM' and`scheduleActivity`='Squats';
UPDATE `Includes` SET `scheduleActivity`='Jogging-Treadmill' WHERE `planID`='3' and`scheduleDay`='Monday' and`scheduleTime`='10AM' and`scheduleActivity`='Incline Press';
UPDATE `Includes` SET `scheduleActivity`='Jump Lunge To Feet Jack' WHERE `planID`='3' and`scheduleDay`='Monday' and`scheduleTime`='11AM' and`scheduleActivity`='Bench Press';
UPDATE `Includes` SET `scheduleActivity`='Lateral Speed Step' WHERE `planID`='3' and`scheduleDay`='Monday' and`scheduleTime`='9AM' and`scheduleActivity`='Squats';
UPDATE `Includes` SET `scheduleActivity`='On Your Side Quad Stretch' WHERE `planID`='3' and`scheduleDay`='Thursday' and`scheduleTime`='11AM' and`scheduleActivity`='Squats';
UPDATE `Includes` SET `scheduleActivity`='Rocket Jump' WHERE `planID`='3' and`scheduleDay`='Thursday' and`scheduleTime`='12PM' and`scheduleActivity`='Cleans';
UPDATE `Includes` SET `scheduleActivity`='Skating' WHERE `planID`='3' and`scheduleDay`='Thursday' and`scheduleTime`='1PM' and`scheduleActivity`='Incline Press';
UPDATE `Includes` SET `scheduleActivity`='Weighted Ball Hyperextension' WHERE `planID`='3' and`scheduleDay`='Wednesday' and`scheduleTime`='11AM' and`scheduleActivity`='Pull Ups';
UPDATE `Includes` SET `scheduleActivity`='Yoke Walk' WHERE `planID`='3' and`scheduleDay`='Tuesday' and`scheduleTime`='11AM' and`scheduleActivity`='Dumbbell Bench Press';
UPDATE `Includes` SET `scheduleActivity`='Single-Leg High Box Squat' WHERE `planID`='3' and`scheduleDay`='Tuesday' and`scheduleTime`='12PM' and`scheduleActivity`='Dumbbell Curl';
UPDATE `Includes` SET `scheduleActivity`='Iron Crosses (stretch)' WHERE `planID`='3' and`scheduleDay`='Tuesday' and`scheduleTime`='1PM' and`scheduleActivity`='Cleans';
UPDATE `Includes` SET `scheduleActivity`='Box Squat with Chains' WHERE `planID`='3' and`scheduleDay`='Wednesday' and`scheduleTime`='10AM' and`scheduleActivity`='Lateral Pull Down';
UPDATE `Includes` SET `scheduleActivity`='Wide-Grip Pull-Up' WHERE `planID`='3' and`scheduleDay`='Wednesday' and`scheduleTime`='9AM' and`scheduleActivity`='Dumbbell Flyes';


DELETE FROM `NutritionGroup` WHERE `groupName`='Calcium';
DELETE FROM `NutritionGroup` WHERE `groupName`='Calories';
DELETE FROM `NutritionGroup` WHERE `groupName`='Carbohydrates';
DELETE FROM `NutritionGroup` WHERE `groupName`='Cholesterol';
DELETE FROM `NutritionGroup` WHERE `groupName`='Dietary Fiber';
DELETE FROM `NutritionGroup` WHERE `groupName`='Iron';
DELETE FROM `NutritionGroup` WHERE `groupName`='Protein';
DELETE FROM `NutritionGroup` WHERE `groupName`='Saturated Fat';
DELETE FROM `NutritionGroup` WHERE `groupName`='Soldium';
DELETE FROM `NutritionGroup` WHERE `groupName`='Sugars';
DELETE FROM `NutritionGroup` WHERE `groupName`='Total Fat';
DELETE FROM `NutritionGroup` WHERE `groupName`='Vitamin A';
DELETE FROM `NutritionGroup` WHERE `groupName`='Vitamin C';
INSERT INTO `NutritionGroup` (`groupName`) VALUES ('Baby Foods');
INSERT INTO `NutritionGroup` (`groupName`) VALUES ('Baked Products');
INSERT INTO `NutritionGroup` (`groupName`) VALUES ('Beef Products');
INSERT INTO `NutritionGroup` (`groupName`) VALUES ('Beverages');
INSERT INTO `NutritionGroup` (`groupName`) VALUES ('Breakfast Cereals');
INSERT INTO `NutritionGroup` (`groupName`) VALUES ('Cereal Grains and Pasta');
INSERT INTO `NutritionGroup` (`groupName`) VALUES ('Dairy and Egg Products');
INSERT INTO `NutritionGroup` (`groupName`) VALUES ('Fats and Oils');
INSERT INTO `NutritionGroup` (`groupName`) VALUES ('Finfish and Shellfish Products');
INSERT INTO `NutritionGroup` (`groupName`) VALUES ('Fruits and Fruit Juices');
INSERT INTO `NutritionGroup` (`groupName`) VALUES ('Lamb, Veal, and Game Products');
INSERT INTO `NutritionGroup` (`groupName`) VALUES ('Legumes and Legume Products');
INSERT INTO `NutritionGroup` (`groupName`) VALUES ('Nut and Seed Products');
INSERT INTO `NutritionGroup` (`groupName`) VALUES ('Pork Products');
INSERT INTO `NutritionGroup` (`groupName`) VALUES ('Poultry Products');
INSERT INTO `NutritionGroup` (`groupName`) VALUES ('Sausages and Luncheon Meats');
INSERT INTO `NutritionGroup` (`groupName`) VALUES ('Snacks');
INSERT INTO `NutritionGroup` (`groupName`) VALUES ('Soups, Sauces, and Gravies');
INSERT INTO `NutritionGroup` (`groupName`) VALUES ('Spices and Herbs');
INSERT INTO `NutritionGroup` (`groupName`) VALUES ('Sweets');
INSERT INTO `NutritionGroup` (`groupName`) VALUES ('Vegetables and Vegetable Products');

*/



	



