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


// Getting the input parameter (Genre Name):
$type = $_REQUEST['Type'];


// Listing tables in your database
$query = "SELECT mealName
FROM Has
WHERE nutritionGroup = '$type'";


$result = mysqli_query($dbcon, $query)
  or die('Query failed: ' . mysqli_error());



// Printing table names in HTML

if ($result->num_rows == 0) {
	$tuple = mysqli_fetch_array($result)
  or die("$type is not found in $database database!");
  }


if ($result->num_rows > 0) {
print "The meals of $type in $database database are:<br>";

    echo "<table>
    	<tr>
    	<th>Meal Name</th>
    	</tr>";
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>"
         . $row["mealName"]. "</td><td>" ;
    }
    echo "</table>";
} else {
    echo "0 results";
}


// Closing connection
mysqli_close($dbcon);



?>
