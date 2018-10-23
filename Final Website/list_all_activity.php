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

// Listing tables in your database
$query = 'SELECT * FROM Does';
$result = mysqli_query($dbcon, $query)
  or die('Query failed: ' . mysqli_error());

print "The People in the database are:<br>";


// Printing table names in HTML

if ($result->num_rows > 0) {
    echo "<table>
    	<tr>
    	<th>Email</th> <th>DateTime</th> <th>personFirstName</th>
      <th>personLastName</th> <th>activityName</th> <th>LengthMinutes</th>
      <th>Sets</th> <th>Reps</th>
    	</tr>";
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>"
        . $row["Email"]. "</td><td>" . $row["DateTime"]. "</td><td>"
        . $row["personFirstName"]. "</td><td>" . $row["personLastName"]. "</td><td>"
        . $row["activityName"]. "</td><td>" . $row["LengthMinutes"]. "</td><td>"
        . $row["Sets"]. "</td><td>" . $row["Reps"]. "</td><td>";
    }
    echo "</table>";
} else {
    echo "0 results";
}


// Closing connection
mysqli_close($dbcon);
?>
