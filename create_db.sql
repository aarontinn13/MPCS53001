/*
CREATE TABLE `ConsistsOf` (
  `mealName` varchar(45) NOT NULL,
  `ingredientsName` varchar(45) NOT NULL,
  `ingredientsAmount` int(11) DEFAULT NULL,
  `ingredientsUnit` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mealName`,`ingredientsName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `Does` (
  `Email` varchar(45) NOT NULL,
  `DateTime` varchar(45) NOT NULL,
  `personFirstName` varchar(45) NOT NULL,
  `personLastName` varchar(45) NOT NULL,
  `activityName` varchar(100) NOT NULL,
  `Length` varchar(45) DEFAULT NULL,
  `Sets` varchar(45) DEFAULT NULL,
  `Reps` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Email`,`DateTime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `Eats` (
  `Email` varchar(45) NOT NULL,
  `Datetime` varchar(50) NOT NULL,
  `personFirstName` varchar(45) NOT NULL,
  `personLastName` varchar(45) NOT NULL,
  `mealName` varchar(200) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Unit` varchar(45) NOT NULL,
  PRIMARY KEY (`Email`,`Datetime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Exercise` (
  `activityName` varchar(100) NOT NULL,
  `activityObjective` varchar(45) NOT NULL,
  `activityEquipment` varchar(45) NOT NULL,
  PRIMARY KEY (`activityName`,`activityEquipment`,`activityObjective`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `Has` (
  `ingredientName` varchar(45) NOT NULL,
  `nutritionName` varchar(45) NOT NULL,
  `nutritionAmount` varchar(45) NOT NULL,
  `nutritionUnit` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ingredientName`,`nutritionName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `Includes` (
  `planID` int(11) NOT NULL,
  `scheduleDay` varchar(45) NOT NULL,
  `scheduleTime` varchar(45) NOT NULL,
  `scheduleActivity` varchar(256) NOT NULL,
  PRIMARY KEY (`planID`,`scheduleDay`,`scheduleTime`,`scheduleActivity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `Ingredients` (
  `ingredientsName` varchar(45) NOT NULL,
  PRIMARY KEY (`ingredientsName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `Meal` (
  `mealName` varchar(200) NOT NULL,
  PRIMARY KEY (`mealName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `NutritionFacts` (
  `nutritionName` varchar(45) NOT NULL,
  PRIMARY KEY (`nutritionName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `Person` (
  `Email` varchar(45) NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Age` int(3) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Weight` varchar(45) NOT NULL,
  `WeightUnit` varchar(45) NOT NULL,
  `PlanID` int(100) DEFAULT NULL,
  PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `Plan` (
  `planID` int(11) NOT NULL,
  `planName` varchar(45) NOT NULL,
  `planObjective` varchar(256) NOT NULL,
  `planCategory` varchar(45) NOT NULL,
  PRIMARY KEY (`planID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `Schedule` (
  `scheduleDay` VARCHAR(45) NOT NULL,
  `scheduleTime` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`scheduleDay`, `scheduleTime`));

ALTER TABLE `Includes` 
ADD COLUMN `scheduleIntensity` INT(4) NOT NULL AFTER `scheduleActivity`,
ADD COLUMN `scheduleMinutes` INT(4) NOT NULL AFTER `scheduleIntensity`;

ALTER TABLE `Includes` 
ADD COLUMN `scheduleSets` INT(4) NOT NULL AFTER `scheduleMinutes`,
ADD COLUMN `scheduleReps` INT(4) NOT NULL AFTER `scheduleSets`;  

ALTER TABLE `Includes` 
CHANGE COLUMN `scheduleSets` `scheduleSets` INT(4) NULL ,
CHANGE COLUMN `scheduleReps` `scheduleReps` INT(4) NULL ;


ALTER TABLE `Does` 
CHANGE COLUMN `Length` `LengthMinutes` INT(4) NULL DEFAULT NULL ;

ALTER TABLE `Exercise` 
CHANGE COLUMN `activityObjective` `activityMuscle` VARCHAR(45) NOT NULL ,
ADD COLUMN `activityType` VARCHAR(45) NULL AFTER `activityEquipment`,
ADD COLUMN `activityRating` DECIMAL(4,1) NULL AFTER `activityType`,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`activityName`, `activityMuscle`, `activityEquipment`);


ALTER TABLE `Has` 
CHANGE COLUMN `ingredientName` `mealName` VARCHAR(200) NOT NULL ,
CHANGE COLUMN `nutritionName` `nutritionGroup` VARCHAR(100) NOT NULL ,
CHANGE COLUMN `nutritionAmount` `Protein (g)` DECIMAL(2) NULL ,
CHANGE COLUMN `nutritionUnit` `Fat (g)` DECIMAL(2) NULL DEFAULT NULL ,
ADD COLUMN `Carbohydrates (g)` DECIMAL(2) NULL AFTER `Fat (g)`,
ADD COLUMN `Ash (g)` DECIMAL(2) NULL AFTER `Carbohydrates (g)`,
ADD COLUMN `Calories` DECIMAL(2) NULL AFTER `Ash (g)`,
ADD COLUMN `Starch (g)` DECIMAL(2) NULL AFTER `Calories`,
ADD COLUMN `Sucrose (g)` DECIMAL(2) NULL AFTER `Starch (g)`,
ADD COLUMN `Glucose (g)` DECIMAL(2) NULL AFTER `Sucrose (g)`,
ADD COLUMN `Fructose (g)` DECIMAL(2) NULL AFTER `Glucose (g)`,
ADD COLUMN `Lactose (g)` DECIMAL(2) NULL AFTER `Fructose (g)`,
ADD COLUMN `Maltose (g)` DECIMAL(2) NULL AFTER `Lactose (g)`,
ADD COLUMN `Alcohol (g)` DECIMAL(2) NULL AFTER `Maltose (g)`,
ADD COLUMN `Water` DECIMAL(2) NULL AFTER `Alcohol (g)`,
ADD COLUMN `Caffeine (mg)` DECIMAL(2) NULL AFTER `Water`,
ADD COLUMN `Theobromine (mg)` DECIMAL(2) NULL AFTER `Caffeine (mg)`,
ADD COLUMN `Sugar (g)` DECIMAL(2) NULL AFTER `Theobromine (mg)`,
ADD COLUMN `Galactose (g)` DECIMAL(2) NULL AFTER `Sugar (g)`,
ADD COLUMN `Fiber (g)` DECIMAL(2) NULL AFTER `Galactose (g)`,
ADD COLUMN `Calcium (mg)` DECIMAL(2) NULL AFTER `Fiber (g)`,
ADD COLUMN `Iron (mg)` DECIMAL(2) NULL AFTER `Calcium (mg)`,
ADD COLUMN `Magnesium (mg)` DECIMAL(2) NULL AFTER `Iron (mg)`,
ADD COLUMN `Phosphorus (mg)` DECIMAL(2) NULL AFTER `Magnesium (mg)`,
ADD COLUMN `Potasssium (mg)` DECIMAL(2) NULL AFTER `Phosphorus (mg)`,
ADD COLUMN `Sodium (mg)` DECIMAL(2) NULL AFTER `Potasssium (mg)`,
ADD COLUMN `Zinc (mg)` DECIMAL(2) NULL AFTER `Sodium (mg)`,
ADD COLUMN `Copper (mg)` DECIMAL(2) NULL AFTER `Zinc (mg)`,
ADD COLUMN `Fluoride (mcg)` DECIMAL(2) NULL AFTER `Copper (mg)`,
ADD COLUMN `Manganese (mg)` DECIMAL(2) NULL AFTER `Fluoride (mcg)`,
ADD COLUMN `Selenium (mcg)` DECIMAL(2) NULL AFTER `Manganese (mg)`,
ADD COLUMN `Vitamin A (IU)` DECIMAL(2) NULL AFTER `Selenium (mcg)`,
ADD COLUMN `Retinol (mcg)` DECIMAL(2) NULL AFTER `Vitamin A (IU)`,
ADD COLUMN `Retinol Equivalents (mcg)` DECIMAL(2) NULL AFTER `Retinol (mcg)`,
ADD COLUMN `Beta Carotene (mcg)` DECIMAL(2) NULL AFTER `Retinol Equivalents (mcg)`,
ADD COLUMN `Alpha Carotene (mcg)` DECIMAL(2) NULL AFTER `Beta Carotene (mcg)`,
ADD COLUMN `Vitamin E (mg)` DECIMAL(2) NULL AFTER `Alpha Carotene (mcg)`,
ADD COLUMN `Vitamin D (mcg)` DECIMAL(2) NULL AFTER `Vitamin E (mg)`,
ADD COLUMN `Vitamin D2 (Ergocalciferol) (mcg)` DECIMAL(2) NULL AFTER `Vitamin D (mcg)`,
ADD COLUMN `Vitamin D3 (Cholecalciferol) (mcg)` DECIMAL(2) NULL AFTER `Vitamin D2 (Ergocalciferol) (mcg)`,
ADD COLUMN `Beta Cryptoxanthin (mcg)` DECIMAL(2) NULL AFTER `Vitamin D3 (Cholecalciferol) (mcg)`,
ADD COLUMN `Lycopene (mcg)` DECIMAL(2) NULL AFTER `Beta Cryptoxanthin (mcg)`,
ADD COLUMN `Lutein and Zeaxanthin (mcg)` DECIMAL(2) NULL AFTER `Lycopene (mcg)`,
ADD COLUMN `Vitamin C (mg)` DECIMAL(2) NULL AFTER `Lutein and Zeaxanthin (mcg)`,
ADD COLUMN `Thiamin (B1) (mg)` DECIMAL(2) NULL AFTER `Vitamin C (mg)`,
ADD COLUMN `Riboflavin (B2) (mg)` DECIMAL(2) NULL AFTER `Thiamin (B1) (mg)`,
ADD COLUMN `Niacin (B3) (mg)` DECIMAL(2) NULL AFTER `Riboflavin (B2) (mg)`,
ADD COLUMN `Vitamin B5 (mg)` DECIMAL(2) NULL AFTER `Niacin (B3) (mg)`,
ADD COLUMN `Vitamin B6 (mg)` DECIMAL(2) NULL AFTER `Vitamin B5 (mg)`,
ADD COLUMN `Folate (B9) (mg)` DECIMAL(2) NULL AFTER `Vitamin B6 (mg)`,
ADD COLUMN `Vitamin B12` DECIMAL(2) NULL AFTER `Folate (B9) (mg)`,
ADD COLUMN `Choline (mg)` DECIMAL(2) NULL AFTER `Vitamin B12`,
ADD COLUMN `Cholesterol (mg)` DECIMAL(2) NULL AFTER `Choline (mg)`,
ADD COLUMN `Saturated Fat (g)` DECIMAL(2) NULL AFTER `Cholesterol (mg)`,
ADD COLUMN `Net Carbs` DECIMAL(2) NULL AFTER `Saturated Fat (g)`;



ALTER TABLE `Has` 
CHANGE COLUMN `Protein(g)` `Protein(g)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Fat(g)` `Fat(g)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Carbohydrates(g)` `Carbohydrates(g)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Ash(g)` `Ash(g)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Calories` `Calories` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Starch(g)` `Starch(g)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Sucrose(g)` `Sucrose(g)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Glucose(g)` `Glucose(g)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Fructose(g)` `Fructose(g)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Lactose(g)` `Lactose(g)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Maltose(g)` `Maltose(g)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Alcohol(g)` `Alcohol(g)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Water` `Water` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Caffeine(mg)` `Caffeine(mg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Theobromine(mg)` `Theobromine(mg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Sugar(g)` `Sugar(g)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Galactose(g)` `Galactose(g)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Fiber(g)` `Fiber(g)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Calcium(mg)` `Calcium(mg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Iron(mg)` `Iron(mg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Magnesium(mg)` `Magnesium(mg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Phosphorus(mg)` `Phosphorus(mg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Potasssium(mg)` `Potasssium(mg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Sodium(mg)` `Sodium(mg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Zinc(mg)` `Zinc(mg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Copper(mg)` `Copper(mg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Fluoride(mcg)` `Fluoride(mcg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Manganese(mg)` `Manganese(mg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Selenium(mcg)` `Selenium(mcg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `VitaminA(IU)` `VitaminA(IU)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Retinol(mcg)` `Retinol(mcg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `RetinolEquivalents(mcg)` `RetinolEquivalents(mcg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `BetaCarotene(mcg)` `BetaCarotene(mcg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `AlphaCarotene(mcg)` `AlphaCarotene(mcg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `VitaminE(mg)` `VitaminE(mg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `VitaminD(mcg)` `VitaminD(mcg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `VitaminD2(Ergocalciferol) (mcg)` `VitaminD2(Ergocalciferol) (mcg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `VitaminD3(Cholecalciferol) (mcg)` `VitaminD3(Cholecalciferol) (mcg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `BetaCryptoxanthin (mcg)` `BetaCryptoxanthin (mcg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Lycopene(mcg)` `Lycopene(mcg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `LuteinandZeaxanthin(mcg)` `LuteinandZeaxanthin(mcg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `VitaminC(mg)` `VitaminC(mg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Thiamin(B1)(mg)` `Thiamin(B1)(mg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Riboflavin(B2)(mg)` `Riboflavin(B2)(mg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Niacin(B3)(mg)` `Niacin(B3)(mg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `VitaminB5(mg)` `VitaminB5(mg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `VitaminB6(mg)` `VitaminB6(mg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Folate(B9)(mg)` `Folate(B9)(mg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `VitaminB12` `VitaminB12` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Choline(mg)` `Choline(mg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Cholesterol(mg)` `Cholesterol(mg)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `SaturatedFat(g)` `SaturatedFat(g)` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `NetCarbs` `NetCarbs` DECIMAL(6,2) NULL DEFAULT NULL ;


ALTER TABLE `atinnDB`.`Has` 
CHANGE COLUMN `Protein(g)` `Protein` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Fat(g)` `Fat` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Carbohydrates(g)` `Carbohydrates` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Ash(g)` `Ash` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Starch(g)` `Starch` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Sucrose(g)` `Sucrose` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Glucose(g)` `Glucose` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Fructose(g)` `Fructose` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Lactose(g)` `Lactose` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Maltose(g)` `Maltose` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Alcohol(g)` `Alcohol` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Caffeine(mg)` `Caffeine` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Theobromine(mg)` `Theobromine` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Sugar(g)` `Sugar` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Galactose(g)` `Galactose` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Fiber(g)` `Fiber` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Calcium(mg)` `Calcium` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Iron(mg)` `Iron` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Magnesium(mg)` `Magnesium` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Phosphorus(mg)` `Phosphorus` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Potasssium(mg)` `Potasssium` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Sodium(mg)` `Sodium` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Zinc(mg)` `Zinc` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Copper(mg)` `Copper` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Fluoride(mcg)` `Fluoride` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Manganese(mg)` `Manganese` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Selenium(mcg)` `Selenium` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `VitaminA(IU)` `VitaminA` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Retinol(mcg)` `Retinol` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `RetinolEquivalents(mcg)` `RetinolEquivalents` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `BetaCarotene(mcg)` `BetaCarotene` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `AlphaCarotene(mcg)` `AlphaCarotene` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `VitaminE(mg)` `VitaminE` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `VitaminD(mcg)` `VitaminD` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `VitaminD2(Ergocalciferol) (mcg)` `VitaminD2` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `VitaminD3(Cholecalciferol) (mcg)` `VitaminD3` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `BetaCryptoxanthin (mcg)` `BetaCryptoxanthin` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Lycopene(mcg)` `Lycopene` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `LuteinandZeaxanthin(mcg)` `LuteinandZeaxanthin` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `VitaminC(mg)` `VitaminC` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Thiamin(B1)(mg)` `Thiamin` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Riboflavin(B2)(mg)` `Riboflavin` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Niacin(B3)(mg)` `Niacin` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `VitaminB5(mg)` `VitaminB5` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `VitaminB6(mg)` `VitaminB6` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Folate(B9)(mg)` `Folate` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Choline(mg)` `Choline` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `Cholesterol(mg)` `Cholesterol` DECIMAL(6,2) NULL DEFAULT NULL ,
CHANGE COLUMN `SaturatedFat(g)` `SaturatedFat` DECIMAL(6,2) NULL DEFAULT NULL ;


DROP TABLE `Ingredients`;

DROP TABLE `ConsistsOf`;

ALTER TABLE `NutritionFacts` 
CHANGE COLUMN `nutritionName` `groupName` VARCHAR(45) NOT NULL , RENAME TO  `atinnDB`.`NutritionGroup` ;


*/



