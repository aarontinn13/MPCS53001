CREATE TABLE `Plan` (
  `planID` int(11) NOT NULL,
  `planName` varchar(45) NOT NULL,
  `planObjective` varchar(256) NOT NULL,
  `planCategory` varchar(45) NOT NULL,
  PRIMARY KEY (`planID`));

CREATE TABLE `Schedule` (
  `scheduleDay` varchar(45) NOT NULL,
  `scheduleTime` varchar(45) NOT NULL,
  PRIMARY KEY (`scheduleDay`,`scheduleTime`));
  
CREATE TABLE `NutritionGroup` (
  `groupName` varchar(45) NOT NULL,
  PRIMARY KEY (`groupName`));
  
CREATE TABLE `Meal` (
  `mealName` varchar(200) NOT NULL,
  PRIMARY KEY (`mealName`));

CREATE TABLE `Includes` (
  `planID` int(11) NOT NULL,
  `scheduleDay` varchar(45) NOT NULL,
  `scheduleTime` varchar(45) NOT NULL,
  `scheduleActivity` varchar(256) NOT NULL,
  `scheduleIntensity` int(4) NOT NULL,
  `scheduleMinutes` int(4) NOT NULL,
  `scheduleSets` int(4) DEFAULT NULL,
  `scheduleReps` int(4) DEFAULT NULL,
  PRIMARY KEY (`planID`,`scheduleDay`,`scheduleTime`,`scheduleActivity`),
  KEY `scheduleDay` (`scheduleDay`),
  CONSTRAINT `Includes_ibfk_1` FOREIGN KEY (`scheduleDay`) REFERENCES `Schedule` (`scheduleDay`));


CREATE TABLE `Person` (
  `Email` varchar(45) NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Age` int(3) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Weight` int(10) NOT NULL,
  `WeightUnit` varchar(45) NOT NULL,
  `PlanID` int(100) DEFAULT NULL,
  PRIMARY KEY (`Email`),
  KEY `PlanID` (`PlanID`),
  CONSTRAINT `Person_ibfk_1` FOREIGN KEY (`PlanID`) REFERENCES `Plan` (`planID`));

CREATE TABLE `Has` (
  `mealName` varchar(200) NOT NULL,
  `nutritionGroup` varchar(100) NOT NULL,
  `Protein` decimal(6,2) DEFAULT NULL,
  `Fat` decimal(6,2) DEFAULT NULL,
  `Carbohydrates` decimal(6,2) DEFAULT NULL,
  `Ash` decimal(6,2) DEFAULT NULL,
  `Calories` decimal(6,2) DEFAULT NULL,
  `Starch` decimal(6,2) DEFAULT NULL,
  `Sucrose` decimal(6,2) DEFAULT NULL,
  `Glucose` decimal(6,2) DEFAULT NULL,
  `Fructose` decimal(6,2) DEFAULT NULL,
  `Lactose` decimal(6,2) DEFAULT NULL,
  `Maltose` decimal(6,2) DEFAULT NULL,
  `Alcohol` decimal(6,2) DEFAULT NULL,
  `Water` decimal(6,2) DEFAULT NULL,
  `Caffeine` decimal(6,2) DEFAULT NULL,
  `Theobromine` decimal(6,2) DEFAULT NULL,
  `Sugar` decimal(6,2) DEFAULT NULL,
  `Galactose` decimal(6,2) DEFAULT NULL,
  `Fiber` decimal(6,2) DEFAULT NULL,
  `Calcium` decimal(6,2) DEFAULT NULL,
  `Iron` decimal(6,2) DEFAULT NULL,
  `Magnesium` decimal(6,2) DEFAULT NULL,
  `Phosphorus` decimal(6,2) DEFAULT NULL,
  `Potasssium` decimal(6,2) DEFAULT NULL,
  `Sodium` decimal(6,2) DEFAULT NULL,
  `Zinc` decimal(6,2) DEFAULT NULL,
  `Copper` decimal(6,2) DEFAULT NULL,
  `Fluoride` decimal(6,2) DEFAULT NULL,
  `Manganese` decimal(6,2) DEFAULT NULL,
  `Selenium` decimal(6,2) DEFAULT NULL,
  `VitaminA` decimal(6,2) DEFAULT NULL,
  `Retinol` decimal(6,2) DEFAULT NULL,
  `RetinolEquivalents` decimal(6,2) DEFAULT NULL,
  `BetaCarotene` decimal(6,2) DEFAULT NULL,
  `AlphaCarotene` decimal(6,2) DEFAULT NULL,
  `VitaminE` decimal(6,2) DEFAULT NULL,
  `VitaminD` decimal(6,2) DEFAULT NULL,
  `VitaminD2` decimal(6,2) DEFAULT NULL,
  `VitaminD3` decimal(6,2) DEFAULT NULL,
  `BetaCryptoxanthin` decimal(6,2) DEFAULT NULL,
  `Lycopene` decimal(6,2) DEFAULT NULL,
  `LuteinandZeaxanthin` decimal(6,2) DEFAULT NULL,
  `VitaminC` decimal(6,2) DEFAULT NULL,
  `Thiamin` decimal(6,2) DEFAULT NULL,
  `Riboflavin` decimal(6,2) DEFAULT NULL,
  `Niacin` decimal(6,2) DEFAULT NULL,
  `VitaminB5` decimal(6,2) DEFAULT NULL,
  `VitaminB6` decimal(6,2) DEFAULT NULL,
  `Folate` decimal(6,2) DEFAULT NULL,
  `VitaminB12` decimal(6,2) DEFAULT NULL,
  `Choline` decimal(6,2) DEFAULT NULL,
  `Cholesterol` decimal(6,2) DEFAULT NULL,
  `SaturatedFat` decimal(6,2) DEFAULT NULL,
  `NetCarbs` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`mealName`,`nutritionGroup`),
  KEY `nutritionGroup` (`nutritionGroup`),
  CONSTRAINT `Has_ibfk_1` FOREIGN KEY (`mealName`) REFERENCES `Meal` (`mealName`),
  CONSTRAINT `Has_ibfk_2` FOREIGN KEY (`nutritionGroup`) REFERENCES `NutritionGroup` (`groupName`));
  
CREATE TABLE `Exercise` (
  `activityName` varchar(100) NOT NULL,
  `activityMuscle` varchar(45) NOT NULL,
  `activityEquipment` varchar(45) NOT NULL,
  `activityType` varchar(45) DEFAULT NULL,
  `activityRating` decimal(4,1) DEFAULT NULL,
  PRIMARY KEY (`activityName`,`activityMuscle`,`activityEquipment`));
  
CREATE TABLE `Eats` (
  `Email` varchar(45) NOT NULL,
  `Datetime` varchar(50) NOT NULL,
  `mealName` varchar(200) NOT NULL,
  `personFirstName` varchar(45) NOT NULL,
  `personLastName` varchar(45) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Unit` varchar(45) NOT NULL,
  PRIMARY KEY (`Email`,`Datetime`,`mealName`),
  CONSTRAINT `Eats_ibfk_1` FOREIGN KEY (`Email`) REFERENCES `Person` (`Email`));
  
  
CREATE TABLE `Does` (
  `Email` varchar(45) NOT NULL,
  `DateTime` varchar(45) NOT NULL,
  `personFirstName` varchar(45) NOT NULL,
  `personLastName` varchar(45) NOT NULL,
  `activityName` varchar(100) NOT NULL,
  `LengthMinutes` int(4) DEFAULT NULL,
  `Sets` int(11) DEFAULT NULL,
  `Reps` int(11) DEFAULT NULL,
  PRIMARY KEY (`Email`,`DateTime`),
  KEY `activityName` (`activityName`),
  CONSTRAINT `Does_ibfk_1` FOREIGN KEY (`Email`) REFERENCES `Person` (`Email`),
  CONSTRAINT `Does_ibfk_2` FOREIGN KEY (`activityName`) REFERENCES `Exercise` (`activityName`));