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
$date1 = $_REQUEST['date1'];
$date2 = $_REQUEST['date2'];


// Listing tables in your database
$query = "SELECT personFirstName, personLastName, mealName, Datetime, Amount, Unit
FROM Eats
WHERE Datetime BETWEEN '$date1' AND '$date2'
ORDER BY Datetime DESC";


$result = mysqli_query($dbcon, $query)
  or die('Query failed: ' . mysqli_error());

// Printing table names in HTML

if ($result->num_rows == 0) {
	$tuple = mysqli_fetch_array($result)
  or die("Eating activity between $date1 and $date2 is not found in $database database!");
  }


if ($result->num_rows > 0) {
print "The Eating activity in between $date1 and $date2 in $database database are:<br>";

    echo "<table>
    	<tr>
    	<th>First Name</th> <th>Last Name</th>
		<th>Meal</th> <th>Datetime</th>
		<th>Amount</th> <th>Unit</th>
    	</tr>";
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>"
         . $row["personFirstName"]. "</td><td>" . $row["personLastName"]. "</td><td>"
         . $row["mealName"]. "</td><td>" . $row["Datetime"]. "</td><td>"
         . $row["Amount"]. "</td><td>" . $row["Unit"]. "</td><td>" ;
    }
    echo "</table>";
} else {
    echo "0 results";
}

// Closing connection
mysqli_close($dbcon);



?>
