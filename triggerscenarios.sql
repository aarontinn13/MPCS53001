/* TRIGGER 1 */
-- Inserting a new person with a valid Email into Person
INSERT INTO Person
VALUES
('valid@uchicago.edu','zzzzzvalidzzzzzz','zzzzzzzzzzzz',32,'1234 South Bend Ave.',152, 'Pounds', NULL);

-- Query to see where this person is.
SELECT *
FROM Person
WHERE Email = 'valid@uchicago.edu';

-- Inserting a new person with an invalid Email into Person. This will pull up an error and not populate!
INSERT INTO Person
VALUES
('invalid@uchicagoedu','zzzzzinvalidzzzzzz','zzzzefefefzzzzzzzzz',32,'1234 South Bend Ave.',152, 'Pounds', NULL);

-- This will fail to find a person with email 'invalid@uchicagoedu' because it never was entered in.
SELECT *
FROM Person
WHERE Email = 'invalid@uchicagoedu';


/* TRIGGER 2 */

-- Insert a new dummy meal into Meal. This will also create an entry in NewMeals with a timestamp to track any new entries into the Meal Database.
INSERT INTO Meal
VALUES
('zzzzzz');

-- to select the newmealname and the date it was entered into the Database.
SELECT newmealname, date
FROM NewMeals
WHERE newmealName = 'zzzzzz';

-- There is no scenario where this wouldn't work unless we didn't add new data to Meal, which we will not do.


/* TRIGGER 3 */
-- When we make a change to a person's weight, we create a tuple in Person_weight_change to track that person's weight change with a timestamp.
UPDATE Person 
SET Weight='330' 
WHERE Email='Abigail_Avery@mail2donald.com';

-- Since Abigail Armstrong had a change to her weight, we can go ahead and find her information in the other table.
SELECT *
FROM Person_weight_change
WHERE Email='Abigail_Avery@mail2donald.com';

-- We cannot create a tuple in Person_weight_change if there was no change in the weight. We will set the person Abigail Arnold's weight to 169, 
-- the same as she had before.
UPDATE Person 
SET Weight='169' 
WHERE Email='Abigail_Arnold@kuwait-mail.com';

-- As you can see, a tuple was not created in Person_weight_change because Abigail_Arnold did not have a change to her previous weight!
SELECT *
FROM Person_weight_change
WHERE Email='Abigail_Arnold@kuwait-mail.com';



/* TRIGGER 4 */
-- Abigail Armstrong is in our Person database so far
SELECT *
FROM Person
WHERE Email= 'Abigail_Armstrong@socamail.com';

-- She is also currently in the Eats table.
SELECT*
FROM Eats
WHERE Email= 'Abigail_Armstrong@socamail.com';

-- Going to delete Abigail Armstrong from the Person Database
DELETE FROM Person WHERE Email= 'Abigail_Armstrong@socamail.com';

-- Abigail Armstrong is not in the Person table anymore!
SELECT *
FROM Person
WHERE Email= 'Abigail_Armstrong@socamail.com';

-- She is also not in the Eats table either!
SELECT*
FROM Eats
WHERE Email= 'Abigail_Armstrong@socamail.com'


