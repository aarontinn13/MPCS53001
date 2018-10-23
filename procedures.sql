DELIMITER $$
/* PROCEDURE 1 */
-- procedure to find someone by their email address.
CREATE PROCEDURE Findperson(IN emailaddress text)
  SELECT Email, CONCAT(First_Name, ' ', Last_Name) AS 'Full Name'
  FROM Person
  WHERE Email = emailaddress;
$$

/* PROCEDURE 2 */
-- Get all the foods with calories greater than 300.
CREATE PROCEDURE Calsgreaterthan300()
BEGIN
	SELECT * 
	FROM Has
    HAVING Calories > 300;
END
$$

/* PROCEDURE 3 */
-- Easy way to create a function to start populating the Exercise table.
CREATE PROCEDURE EasyExercisePopulate(IN activityName VARCHAR(100),IN activityMuscle VARCHAR(45),IN activityEquipment VARCHAR(45),
							 IN activityType VARCHAR(45),IN activityRating DECIMAL(4,1))
BEGIN
    INSERT INTO Exercise 
    VALUES(activityName, activityMuscle, activityEquipment, activityType, activityRating);
END
$$

/* PROCEDURE 4 */
-- procedure to quickly change the weight of someone by their email address.
CREATE PROCEDURE Personupdater(IN emailaddress VARCHAR(45),IN weightof INT)
BEGIN
	UPDATE Person 
	SET Person.Weight = weightof
	WHERE Person.Email = emailaddress;
END
$$


/* PROCEDURE 5 */
/* Procedure to see how many people are on a certain planID, The below if statements determine high, medium or low amounts. You can change the
amounts anytime.*/
CREATE PROCEDURE workoutplancount(IN planID INT(5),OUT howmany VARCHAR(45))
BEGIN
	DECLARE countof INT;
    
	SELECT 
		count(*) into countof
	FROM 
		Person
	WHERE 
		Person.PlanId = planID;
        
	IF countof > 100 THEN
		SET howmany = 'High';
    ELSEIF (countof <= 100 AND countof >= 50) THEN
		SET howmany = 'Medium';
    ELSEIF (countof < 50) THEN
		SET howmany = 'Low';
	END IF;
    
END $$







