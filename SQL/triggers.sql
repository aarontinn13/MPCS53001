/* TRIGGER 1 */
-- validate emails in the Person table, if it does not adhere to the format, then you cannot enter the user.
DELIMITER $$
CREATE TRIGGER `person_validate_insert`
	BEFORE INSERT
	ON `Person`
	FOR EACH ROW
BEGIN
	IF NEW.`Email` NOT LIKE '%_@%_.__%' THEN
		SIGNAL SQLSTATE VALUE '45000'
			SET MESSAGE_TEXT = '[table:person] - `email` column is not valid' ;
	END IF;
END;
$$

/* TRIGGER 2 */
-- Whenever there is a new meal added to Meals, it will also add to the NewMeals table to keep track of new meals with a timestamp.
CREATE TRIGGER NewMeals
	AFTER INSERT
	ON `Meal`
	FOR EACH ROW
BEGIN
	INSERT INTO NewMeals
    VALUES(NEW.mealName, NOW());
END;
$$

/* TRIGGER 3 */
-- Whenever there is a change to someone's weight, we will record when it happened and the difference in a new table.
CREATE TRIGGER weight_change
BEFORE UPDATE ON Person
FOR EACH ROW
BEGIN
	DECLARE difference int;
	set difference := NEW.weight  - OLD.weight;
    IF NEW.weight <> OLD.weight THEN
    INSERT INTO Person_weight_change
        VALUES(OLD.Email, OLD.First_Name, OLD.Last_Name, OLD.Age, OLD.weight, NEW.weight, difference, NOW());
    END IF;
END;
$$

/* TRIGGER 4 */
-- whenever I delete a person from the database, my trigger will delete that same person from throughout the Eats table.
CREATE TRIGGER delete_email
    BEFORE DELETE ON Person FOR EACH ROW
    BEGIN
        DELETE FROM Eats WHERE OLD.Email = Email;
        DELETE FROM Does WHERE OLD.Email = Email;
    END
$$


