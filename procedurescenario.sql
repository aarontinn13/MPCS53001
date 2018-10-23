/* PROCEDURE 1 */
-- Procedure one call
CALL Findperson('Lisa_Lambert@mail2truck.com');


/* PROCEDURE 2 */
-- Procedure two call
CALL Calsgreaterthan300();


/* PROCEDURE 3 */
-- to find before update
SELECT *
FROM Exercise
WHERE activityName = 'zztest1';

-- Procedure three call (modification)
CALL EasyExercisePopulate('zztest1','zztest2','zztest3','zztest4', 7.8);

-- to find after update
SELECT *
FROM Exercise
WHERE activityName = 'zztest1';


/* PROCEDURE 4 */
-- Before the update
SELECT Weight
FROM Person
WHERE Email = 'Abigail_Avery@mail2donald.com';

-- Procedure four call (modification)
CALL Personupdater('Abigail_Avery@mail2donald.com', 300);

-- After the update
SELECT Weight
FROM Person
WHERE Email = 'Abigail_Avery@mail2donald.com';


/* PROCEDURE 5 */
-- Procedure five call
CALL workoutplancount(8, @thecount);
SELECT @thecount;