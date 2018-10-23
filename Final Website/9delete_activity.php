<?php

// Connection parameters
$host = 'mpcs53001.cs.uchicago.edu';
$username = 'atinn';
$password = 'Eadgbe123456';
$database = $username.'DB';

// Attempting to connect
$dbcon = mysqli_connect($host, $username, $password, $database)
   or die('Could not connect: <br>' . mysqli_connect_error());
print 'Connected successfully!<br>';

// Selecting a database
//   Unnecessary in this case because we have already selected
//   the right database with the connect statement.
mysqli_select_db($dbcon, $database)
   or die('Could not select database<br>');
print 'Selected database successfully!<br>';


// Getting the input parameters :
$email = $_REQUEST['email'];
$datetime = $_REQUEST['datetime'];



// Inserting tuples into database
$sql = "DELETE FROM Does
        WHERE Email = '$email' AND Does.DateTime = '$datetime'";



if (mysqli_query($dbcon, $sql)) {

    echo '<p style = "color:Red; font-size:150%;"><b>Please check the Does Table to confirm deletion of information from the table.</b><p><hr>';


	// Query for Does tables
	$query = "SELECT *
			  FROM Does
			  WHERE Email = '$email'";

	$result = mysqli_query($dbcon, $query)
  			  or die('Query failed: <br>' . mysqli_error());

	// Printing table names in HTML
	if ($result->num_rows > 0) {
		print "<p style = 'font-size:150%;'><b>Information is found in table 'Does':</b></p>";
	    echo "<table>
    		<tr>
        <th>Email   .</th> <th>Date Time    .</th>
			<th>First Name    .</th> <th>Last Name    .</th>
			<th>Activity Name    .</th> <th>Length (Minutes)    .</th>
			<th>Sets   .</th> <th>Reps   .</th>
    		</tr>";
    // output data of each row
    	while($row = $result->fetch_assoc()) {
        	echo "<tr><td>"
          . $row["Email"]. "</td><td>" . $row["DateTime"]. "</td><td>"
         	. $row["personFirstName"]. "</td><td>" . $row["personLastName"]. "</td><td>"
         	. $row["activityName"]. "</td><td>" . $row["LengthMinutes"]. "</td><td>"
         	. $row["Sets"]. "</td><td>" . $row["Reps"]. "</td><td>" ;
    		}
    	echo "</table><hr>";
	}
	else {
    echo "<b>Info is not found in $database database!! </b>";
	};


}
else {
    echo "<br><p style = 'font-size:150%;'><b>DATA WAS NOT DELETED FROM THE DATABASE</b></p><hr>
    	  <b>Query Failed: " . $sql . "<br><p style = 'color:Red;'>MySQL Error: " . mysqli_error($dbcon) . "</p></b><br>" ;
}


// Closing connection
mysqli_close($dbcon);

?>
