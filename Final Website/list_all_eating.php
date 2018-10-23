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
$query = 'SELECT * FROM Eats';
$result = mysqli_query($dbcon, $query)
  or die('Query failed: ' . mysqli_error());

print "The People in the database are:<br>";


// Printing table names in HTML

if ($result->num_rows > 0) {
    echo "<table>
    	<tr>
    	<th>Email</th> <th>Date time</th> <th>Meal Name1</th>
      <th>First Name</th> <th>Last Name</th> <th>Amount</th>
      <th>Unit</th>
    	</tr>";
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>"
         . $row["Email"]. "</td><td>" . $row["Datetime"]. "</td><td>"
         . $row["mealName"]. "</td><td>" . $row["personFirstName"]. "</td><td>"
         . $row["personLastName"]. "</td><td>" . $row["personLastName"]. "</td><td>"
         . $row["Amount"]. "</td><td>" . $row["Unit"]. "</td><td>";
    }
    echo "</table>";
} else {
    echo "0 results";
}


// Closing connection
mysqli_close($dbcon);
?>
