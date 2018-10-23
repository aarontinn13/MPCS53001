<?php

// Connection parameters
$host = 'mpcs53001.cs.uchicago.edu';
$username = 'atinn';
$password = 'Eadgbe123456';
$database = $username.'DB';

// Attempting to connect
$dbcon = mysqli_connect($host, $username, $password, $database)
   or die('Could not conn ect: ' . mysqli_connect_error());
print 'Connected successfully!<br>';

// Selecting a database
//   Unnecessary in this case because we have already selected
//   the right database with the connect statement.
mysqli_select_db($dbcon, $database)
   or die('Could not select database');
print 'Selected database successfully!<br>';


// Getting the input parameter (dates):
$calories = $_REQUEST['Calories'];
$protein = $_REQUEST['Protein'];
$fat = $_REQUEST['Fat'];
$carbohydrates = $_REQUEST['Carbohydrates'];


// Listing tables in your database
$query = "SELECT mealName, Protein, Fat, Carbohydrates
FROM Has
WHERE Calories = '$calories' OR Protein = '$protein'
OR Fat = '$fat' OR Carbohydrates = '$carbohydrates'";


$result = mysqli_query($dbcon, $query)
  or die('Query failed: ' . mysqli_error());

// Printing table names in HTML

if ($result->num_rows == 0) {
	$tuple = mysqli_fetch_array($result)
  or die("Eating activity with given parameters is not found in $database database!");
  }


if ($result->num_rows > 0) {
print "The Eating activity with given parameters in $database database are:<br>";

    echo "<table>
    	<tr>
    	<th>Meal Name</th> <th>Protein</th>
		<th>Fat</th> <th>Carbohydrates</th>
    	</tr>";
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>"
         . $row["mealName"]. "</td><td>" . $row["Protein"]. "</td><td>"
         . $row["Fat"]. "</td><td>" . $row["Carbohydrates"]. "</td><td>" ;
    }
    echo "</table>";
} else {
    echo "0 results";
}

// Closing connection
mysqli_close($dbcon);


?>
