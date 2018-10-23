-- Return a list of people who used Dumbbells										
SELECT Exercise.activityEquipment, Count(Exercise.activityEquipment)
FROM Does INNER JOIN Exercise
ON Does.activityName = Exercise.activityName
GROUP BY Exercise.activityEquipment;
    
    
-- Return a list of the average age of people on the Arm Blaster plan				 
SELECT planName, avg(age)
FROM Person INNER JOIN Plan
ON Person.PlanID = Plan.planID
WHERE planName = 'Arm Blaster';
    
    
-- Return a list of people on a certain plan    									
SELECT  First_Name, Last_Name, Person.PlanID, planName
FROM Person INNER JOIN Plan
ON Person.PlanID = Plan.planID;


 
-- Comprehensive list of all users with no plan objective. 							
SELECT First_Name, Last_Name, planObjective
FROM Person LEFT OUTER JOIN Plan
ON Person.PlanID = Plan.planID
WHERE Plan.planObjective is null;


-- Person who ate the most total fat from steak consumption
SELECT personFirstName, personLastName
FROM steakconsumption
WHERE convertedamount = 
(SELECT max(convertedamount)
FROM steakconsumption
WHERE nutritionname = 'Total Fat'
GROUP BY 'Total Fat');


-- People on a plan with an average intensity of less than 3. 		 				
SELECT First_Name, Last_Name, averageintensity
FROM Person NATURAL JOIN average_intensity
WHERE averageintensity < 3;


-- sum of total minutes each person spent doing back or chest exercises				
SELECT personFirstName, personLastName, sum(LengthMinutes) AS totaltime			
FROM Does NATURAL JOIN back_and_chest_exercises
GROUP BY personFirstName, personLastName;


-- Count of people on plans with a weight above 170 and an age above 25				
SELECT planCategory, count(planCategory)
FROM Plan INNER JOIN Weight_age_above
ON Plan.planID = Weight_age_above.PlanID
GROUP BY planCategory
HAVING count(planCategory) > 2;

-- creating temporary table for the bottom two queries to find steak nutrition and consumption.
CREATE TEMPORARY TABLE Steak_eating_fact
SELECT personFirstName, personLastName,Eats.mealName, nutritionName,  round(nutritionAmount*((Amount*28.34952)/ingredientsAmount),0) as convertedamount, nutritionUnit
FROM Eats INNER JOIN (SELECT *
FROM ConsistsOf Inner JOIN Has
ON ConsistsOf.ingredientsName = Has.ingredientName
WHERE ingredientName = 'Steak') as steaknutrition
ON Eats.mealName = steaknutrition.mealName;

-- list of people who ate steak and the calories they consumed
SELECT personfirstname, personlastname, max(convertedamount) as total_calories
FROM Steak_eating_fact
WHERE nutritionname = 'Calories'
GROUP BY personFirstName, personLastName
HAVING max(convertedamount);


-- list of people who ate steak and the protein they consumed
SELECT personfirstname, personlastname, max(convertedamount) as total_protein
FROM Steak_eating_fact
WHERE nutritionname = 'Protein'
GROUP BY personFirstName, personLastName
HAVING max(convertedamount);















   
