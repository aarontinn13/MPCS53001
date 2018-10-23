-- Count of people who are older than 30 years old
SELECT Count(Person.Email)
FROM Person
WHERE Age > 30;

-- Count of people on the strength plan
SELECT Count(Person.Email)
FROM Person
JOIN Plan
ON Person.PlanID = Plan.planID
WHERE Plan.planCategory = 'Strength';


-- Average age of people who are on a strength plan and weigh less than 200 pounds.
SELECT avg(age)
FROM Person
JOIN Plan
ON Person.PlanID = Plan.planID
WHERE Plan.planCategory = 'Strength' and Person.Weight < 200;


-- Max nutrition amount for each nutrient recorded.
SELECT nutritionName, max(nutritionAmount)
FROM Has
Group by nutritionName;



-- count of the exercises in the database that hit certain bodyparts.
SELECT activityObjective, count(activityName)
FROM Exercise
Group by activityObjective;

-- Count of how many times Terry ate on friday 13th.
SELECT personFirstName, count(personFirstName)
FROM Eats
Where personFirstName = 'Terrance' and Datetime LIKE '2018-04-13%'
Group by Email
	