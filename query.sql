SELECT
     Email
FROM
     Person
WHERE
     Age > 30;
     
     
     
     
SELECT
     ingredientsName
FROM
     ConsistsOf
WHERE
     ingredientsUnit = 'cup';
	
    
    
    
SELECT
     Last_Name
FROM
     Person
WHERE
     planID = 1
AND
     age BETWEEN 25 AND 30
GROUP BY
     Last_Name;
     
     
     

SELECT
     First_Name, Last_Name
FROM
     Person    
ORDER BY
     age;
     
     
     
     
SELECT
     planID, planName, planObjective
FROM
     Plan 
WHERE
	 planCategory = 'Strength'
ORDER BY
     planName;
     

	

SELECT
     activityName, activityObjective, activityEquipment
FROM
	 Exercise
WHERE
	 activityObjective = 'Chest'
ORDER BY
     activityObjective



     