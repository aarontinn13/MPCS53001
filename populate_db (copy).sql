INSERT INTO Person
VALUES
('LandonM@uchicago.edu','Landon','Mitchell',32,'152 Pounds', NULL),
('MichaelSuna@uchicago.edu','Michael', 'Suna',30,'220 Pounds', NULL),
('WinshenLiu@uchicago.edu','Winshen','Liu',26,'123 Pounds',2),
('NickFlees@uchicago.edu','Nicholas','Flees',45,'196 Pounds',1),
('Jason Osbourne@uchicago.edu','Jason','Osbourne',54,'172 Pounds',1),
('MahjeedMarrow@uchicago.edu','Mahjeed','Marrow',83,'124 Pounds', NULL),
('TerryTao@uchicago.edu','Terrence','Tao',29,'158 Pounds',1),
('AmeerHassouna@uchicago.edu','Ameer','Hassouna',20,'170 Pounds',1),
('Bill_Johnson@uchicago.edu','Billy','Johnson',26,'175 Pounds',1),
('Jackruby234@uchicago.edu','Jack','Ruby',26,'167 Pounds',1);


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
(1,'Monday','9AM','Run on treadmill for 30 minutes.'),
(1,'Tuesday','12PM','Bench Press 4 Sets, 10 reps.'),
(1,'Wednesday','10AM','Dumbbell curls 4 sets, 10 reps.'),
(1,'Thursday','3PM','Swim for 30 minutes, with 2 minute breaks in between laps.'),
(1,'Friday','3PM', 'Floor crunches for 30 minutes, taking breaks whenever necessary.'),
(1,'Saturday','11AM', 'Run on treadmill for 30 minutes.'),
(1,'Sunday','12PM', '50 Pull ups, rest when necessary.'),
(1,'Monday','9AM', 'Standing squats for 100 reps, rest when necessary.'),
(1,'Tuesday','12PM','Mountain climbers for 300 reps, rest when necessary.'),
(1,'Wednesday','10AM','Run of treadmill for 30 minutes.');





INSERT INTO Does
VALUES
('MichaelSuna@uchicago.edu','2018-04-17 03:32:53','Michael','Suna','Bench Press','10 Minutes',4,10),
('MichaelSuna@uchicago.edu','2018-04-17 04:42:24','Michael','Suna','Dumbbell Bench Press','10 Minutes',2,10),
('MichaelSuna@uchicago.edu','2018-04-17 03:52:23','Michael','Suna','Incline Press','10 Minutes',3,10),
('MichaelSuna@uchicago.edu','2018-04-17 04:02:13','Michael','Suna','Decline Press','10 Minutes',4,10),
('MichaelSuna@uchicago.edu','2018-04-17 04:13:41','Michael','Suna','Cable Flyes','10 Minutes',4,10),
('TerryTao@uchicago.edu','2018-04-18 10:15:33','Terrence','Tao','Jog','30 Minutes',NULL, NULL),
('TerryTao@uchicago.edu','2018-04-18 10:47:53','Terrence','Tao','Pull Ups','10 Minutes',3,10),
('TerryTao@uchicago.edu','2018-04-18 11:00:35','Terrence','Tao','Shoulder Press','12 Minutes',4,10),
('TerryTao@uchicago.edu','2018-04-18 11:20:26','Terrence','Tao','Lateral Pull Down','13 Minutes',2,10),
('TerryTao@uchicago.edu','2018-04-18 11:40:14','Terrence','Tao','1 Arm Lateral Raise','10 Minutes',4,10);




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
('JillR@gmail.com','Jill','Russo',33,'124 Pounds',8),
('Sarahhhh@hotmail.com','Sarah','Staff',29,'122 Pounds',7),
('SS56@gmail.com','Sean','Stratmoen',32,'178 Pounds',4),
('Chaus@yahoo.com','Corbin','Hauserman',45,'204 Pounds',7),
('Cberb@gmail.com','Chad','Berberick',25,'198 Pounds',5),
('CJ123@gmail.com','Chris','Jones',37,'153 Pounds',4);


INSERT INTO Ingredients
VALUES
('Hamburger Bun'),
('Bread');





