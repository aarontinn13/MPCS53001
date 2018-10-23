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
$email = $_REQUEST['Email'];



// Listing tables in your database
$query = "SELECT Person.First_Name, Person.Last_Name, Age, Weight, DateTime, activityName
                 LengthMinutes, Sets, Reps
FROM Person NATURAL JOIN Does
WHERE Email = '$email'";


$result = mysqli_query($dbcon, $query)
  or die('Query failed: ' . mysqli_error());


// Printing table names in HTML

if ($result->num_rows == 0) {
	$tuple = mysqli_fetch_array($result)
  or die("Activity by $email is not found in $database database!");
  }


if ($result->num_rows > 0) {
print "The Activity by $email in $database database are:<br>";


    echo "<table>
    	<tr>
    	<th>First Name</th> <th>Last Name</th>
		<th>Age</th> <th>Weight (Default is pounds)</th>
		<th>Datetime</th> <th>Activity</th>
    <th>Length (in minutes)</th> <th>Sets</th>
    <th>Reps</th>

    	</tr>";
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>"
         . $row["Person.First_Name"]. "</td><td>" . $row["Person.Last_Name"]. "</td><td>"
         . $row["Age"]. "</td><td>" . $row["Weight"]. "</td><td>"
         . $row["DateTime"]. "</td><td>" . $row["activityName"]. "</td><td>"
          . $row["LengthMinutes"]. "</td><td>" . $row["Sets"]. "</td><td>"
          . $row["Reps"]. "</td><td>";
    }
    echo "</table>";
} else {
    echo "0 results";
}


// Closing connection
mysqli_close($dbcon);



?>
