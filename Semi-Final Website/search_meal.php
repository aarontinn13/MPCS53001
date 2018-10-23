<?php

// Connection parameters
$host = 'mpcs53001.cs.uchicago.edu';
$username = 'atinn';
$password = 'Eadgbe123456';
$database = $username.'DB';

// Attempting to connect
$dbcon = mysqli_connect($host, $username, $password, $database)
   or die('Could not connect: ' . mysqli_connect_error());
print 'Connected successfully!<br>';

// Selecting a database
//   Unnecessary in this case because we have already selected
//   the right database with the connect statement.
mysqli_select_db($dbcon, $database)
   or die('Could not select database');
print 'Selected database successfully!<br>';


// Getting the input parameter (DJname):
$meal = $_REQUEST['Meal'];



// Listing tables in your database
$query = "SELECT *
FROM Has
WHERE mealName = '%%meal%%'";


$result = mysqli_query($dbcon, $query)
  or die('Query failed: ' . mysqli_error());



// Printing table names in HTML

if ($result->num_rows == 0) {
$tuple = mysqli_fetch_array($result)
  or die("The meals containing '$meal' is not found in $database database!!");
  }


if ($result->num_rows > 0) {
print "The meals containing $meal in $database database are:<br>";


    echo "<table>
    	<tr>
    	<th>Meal Name</th> <th>Nutrition Group</th> <th>Protein</th> <th>Fat</th>
		  <th>Carbohydrates</th> <th>Ash</th> <th>Calories</th> <th>Starch</th>
      <th>Sucrose</th> <th>Glucose</th> <th>Fructose</th> <th>Lactose</th>
      <th>Maltose</th> <th>Alcohol</th> <th>Water</th> <th>Caffeine</th>
      <th>Theobromine</th> <th>Sugar</th> <th>Galactose</th> <th>Fiber</th>
      <th>Calcium</th> <th>Iron</th> <th>Magnesium</th> <th>Phosphorus</th>
      <th>Potassium</th> <th>Sodium</th> <th>Zinc</th> <th>Copper</th>
      <th>Fluoride</th> <th>Manganese</th> <th>Selenium</th> <th>Vitamin A</th>
      <th>Retinol</th> <th>Retinol Equivalents</th> <th>Beta Carotine</th>
      <th>Alpha Carotene</th> <th>Vitamin E</th> <th>Vintamin D</th>
      <th>Vitamin D2</th> <th>Vitamin D3</th> <th>Beta Cryptoxanthin</th>
      <th>Lycopene</th> <th>Lutein Zeaxanthin</th> <th>Vitamin C</th> <th>Thiamin</th>
      <th>Riboflavin</th> <th>Niacin</th> <th>Vitamin B5</th> <th>Vitamin B6</th>
      <th>Folate</th> <th>Vitamin B12</th> <th>Choline</th> <th>Cholesterol</th>
      <th>Saturated Fat</th> <th>Net Carbs</th>
    	</tr>";
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>"
         . $row["mealName"]. "</td><td>" . $row["nutritionGroup"]. "</td><td>"
         . $row["Protein"]. "</td><td>" . $row["Fat"]. "</td><td>"
         . $row["Carbohydrates"]. "</td><td>" . $row["Ash"]. "</td><td>"
         . $row["Calories"]. "</td><td>" . $row["Starch"]. "</td><td>"
         . $row["Sucrose"]. "</td><td>" . $row["Glucose"]. "</td><td>"
         . $row["Fructose"]. "</td><td>" . $row["Lactose"]. "</td><td>"
         . $row["Maltose"]. "</td><td>" . $row["Alcohol"]. "</td><td>"
         . $row["Water"]. "</td><td>" . $row["Caffeine"]. "</td><td>"
         . $row["Theobromine"]. "</td><td>" . $row["Sugar"]. "</td><td>"
         . $row["Galactose"]. "</td><td>" . $row["Fiber"]. "</td><td>"
         . $row["Calcium"]. "</td><td>" . $row["Iron"]. "</td><td>"
         . $row["Magnesium"]. "</td><td>" . $row["Phosphorus"]. "</td><td>"
         . $row["Potassium"]. "</td><td>" . $row["Sodium"]. "</td><td>"
         . $row["Zinc"]. "</td><td>" . $row["Copper"]. "</td><td>"
         . $row["Fluoride"]. "</td><td>" . $row["Manganese"]. "</td><td>"
         . $row["Selenium"]. "</td><td>" . $row["VitaminA"]. "</td><td>"
         . $row["Retinol"]. "</td><td>" . $row["RetinolEquivalents"]. "</td><td>"
         . $row["BetaCarotene"]. "</td><td>" . $row["AlphaCarotene"]. "</td><td>"
         . $row["VitaminE"]. "</td><td>" . $row["VitaminD"]. "</td><td>"
         . $row["VitaminD2"]. "</td><td>" . $row["VitaminD3"]. "</td><td>"
         . $row["BetaCryptoxanthin"]. "</td><td>" . $row["Lycopene"]. "</td><td>"
         . $row["LuteinandZeaxanthin"]. "</td><td>" . $row["VitaminC"]. "</td><td>"
         . $row["Thiamin"]. "</td><td>" . $row["Riboflavin"]. "</td><td>"
         . $row["Niacin"]. "</td><td>" . $row["VitaminB5"]. "</td><td>"
         . $row["VitaminB6"]. "</td><td>" . $row["Folate"]. "</td><td>"
         . $row["VitaminB12"]. "</td><td>" . $row["Choline"]. "</td><td>"
         . $row["Cholesterol"]. "</td><td>" . $row["SaturatedFat"]. "</td><td>"
         . $row["NetCarbs"]. "</td><td>" ;
    }
    echo "</table>";
} else {
    echo "0 results";
}

// Closing connection
mysqli_close($dbcon);

?>
