INSERT INTO `NutritionGroup` 
VALUES 
('Baby Foods'),
('Baked Products'),
('Beef Products'),
('Beverages'),
('Breakfast Cereals'),
('Cereal Grains and Pasta'),
('Dairy and Egg Products'),
('Fats and Oils'),
('Finfish and Shellfish Products'),
('Fruits and Fruit Juices'),
('Lamb, Veal, and Game Products'),
('Legumes and Legume Products'),
('Nut and Seed Products'),
('Pork Products'),
('Poultry Products'),
('Sausages and Luncheon Meats'),
('Snacks'),
('Soups, Sauces, and Gravies'),
('Spices and Herbs'),
('Sweets'),
('Vegetables and Vegetable Products');

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


LOAD DATA LOCAL INFILE '/home/infinity/Documents/Meal.csv' INTO TABLE Meal;


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

LOAD DATA LOCAL INFILE '/home/infinity/Documents/Person.csv' INTO TABLE Person
FIELDS TERMINATED BY ',';

LOAD DATA LOCAL INFILE '/home/infinity/Documents/Has.csv' INTO TABLE Has
FIELDS TERMINATED BY ':';

LOAD DATA LOCAL INFILE '/home/infinity/Documents/Exercise.csv' INTO TABLE Exercise
FIELDS TERMINATED BY ',';

LOAD DATA LOCAL INFILE '/home/infinity/Documents/Eats.csv' INTO TABLE Eats
FIELDS TERMINATED BY '|';

LOAD DATA LOCAL INFILE '/home/infinity/Documents/Does.csv' INTO TABLE Does
FIELDS TERMINATED BY ',';
