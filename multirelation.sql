-- Return a list of people who used Dumbbells
SELECT Does.personFirstName, Does.personLastName, activityEquipment
FROM Does
    JOIN Exercise
    ON Does.activityName = Exercise.activityName
    WHERE activityEquipment = 'Dumbbells';
    
-- Return a list of people on a certain plan    
SELECT  First_Name, Last_Name, Person.PlanID, planName
FROM Person
	INNER JOIN Plan
	ON Person.PlanID = Plan.planID;
    
-- Return a list of plans used by people above the age of 40
SELECT planName, planObjective
FROM Plan
WHERE Plan.PlanID IN (SELECT Person.PlanID 
	FROM Person 
	WHERE Age > 40);  
    
-- Return a list of what people ate and the ingredients inside of it.
SELECT personFirstName, personLastName, ConsistsOf.mealName, ConsistsOf.ingredientsName, ingredientsAmount, ingredientsUnit 
FROM Eats, ConsistsOf
WHERE Eats.mealName = ConsistsOf.mealName;


-- Return a list of plans used by people less than 200 pounds.
SELECT planName, planObjective, planCategory
FROM Plan
WHERE Plan.PlanID IN (SELECT Person.PlanID 
	FROM Person 
	WHERE Weight < 200); 
    
    
-- Return a list of people on the strength plan  
SELECT  First_Name, Last_Name, Person.PlanID, planName
FROM Person
	INNER JOIN Plan
	ON Person.PlanID = Plan.planID
    WHERE planCategory = 'Strength'
    
