-- count of people who were older than the total average age that worked out on May 10th
SELECT Person.First_Name, Person.Last_Name, age
FROM Person INNER JOIN 
(SELECT *
FROM Does NATURAL JOIN Exercise
WHERE DateTime LIKE '2018-05-10%') as may10
ON Person.Email = may10.Email
WHERE age > (SELECT avg(age)
FROM Person);


-- people who ate the most protein filled meal

/*This was a large database in the Has table due to the amount of columns in there.
I could have created an index on carbohydrates column which would've sped up the search
and omitted every other nutritional data column in the Has Table like...
CREATE INDEX Protein
  ON Has (Protein);*/
SELECT personFirstName, personLastName
FROM Eats INNER JOIN Has
ON Eats.mealName = Has.mealName
Where Protein = 
(SELECT max(protein)
FROM Eats INNER JOIN Has
ON Eats.mealName = Has.mealName);


-- People who ate more than the average carbohydrates of "sweets".

/*
This was a large database in the Has table due to the amount of columns in there.
I could have created an index on carbohydrates column which would've sped up the search
and omitted every other nutritional data column in the Has Table like...
CREATE INDEX carbohydrates
  ON Has (Carbohydrates);*/

SELECT Person.First_Name, personLastName, Carbohydrates
FROM Person INNER JOIN
(SELECT *
FROM Eats NATURAL JOIN Has
WHERE nutritionGroup = 'Sweets') as allsweets
ON Person.Email = allsweets.Email
WHERE Carbohydrates > (SELECT avg(Carbohydrates)
FROM Eats NATURAL JOIN Has
WHERE nutritionGroup = 'Sweets');


-- people who are on a plan with an average activity rating above 7
SELECT  Person.First_Name, Person.Last_Name, Person.PlanID,  averageactivityrating
FROM Person NATURAL JOIN
(SELECT planID, avg(activityRating) as averageactivityrating
FROM Includes INNER JOIN Exercise
ON scheduleActivity = activityName
GROUP BY planID) as planidaverage
HAVING planidaverage.averageactivityrating > 7;


-- average age of everyone who did abs on may 14th 2018.
SELECT avg(age)
FROM Person INNER JOIN 
(SELECT *
FROM Does NATURAL JOIN Exercise
WHERE DateTime LIKE '2018-05-14%' and activityMuscle = 'Abdominals') as absonmayfourteen
ON Person.Email = absonmayfourteen.Email;



-- names and weight of all the people who trained quadriceps and are above 40 years old.
SELECT Person.First_Name, Person.Last_Name, Weight
FROM Person NATURAL JOIN
(SELECT *
FROM Exercise NATURAL JOIN Does) as activity
WHERE activityMuscle = 'Quadriceps' and Age > 40
