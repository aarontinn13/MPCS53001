-- creates a view of the people age 26 or older, and above 171 pounds.
CREATE VIEW Weight_age_above AS
	SELECT *
    FROM Person
    WHERE Weight > 170 and Age > 25;

-- creates a view of the average intensity of each plan on a scale from 1 - 10
CREATE VIEW average_intensity AS
	SELECT planID, avg(scheduleIntensity) as averageintensity
	FROM Includes
	group by planID;
  
-- creates a view of all of the back and chest exercises
CREATE VIEW back_and_chest_exercises AS 
	SELECT activityName
	FROM Exercise
	WHERE activityObjective = 'Back' OR activityObjective = 'Chest';

    
-- creates a view of converted stats for steak consumption
CREATE VIEW steakconsumption AS 
SELECT personFirstName, personLastName,Eats.mealName, nutritionName,  round(nutritionAmount*((Amount*28.34952)/ingredientsAmount),0) as convertedamount, nutritionUnit
FROM Eats INNER JOIN (SELECT *
FROM ConsistsOf Inner JOIN Has
ON ConsistsOf.ingredientsName = Has.ingredientName
WHERE ingredientName = 'Steak') as steaknutrition
ON Eats.mealName = steaknutrition.mealName;



