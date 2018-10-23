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
$firstname = $_REQUEST['first_name'];
$lastname = $_REQUEST['last_name'];
$activityname = $_REQUEST['activity_name'];
$length = $_REQUEST['length'];
$sets = $_REQUEST['sets'];
$reps = $_REQUEST['reps'];


// Inserting tuples into database
$sql = "UPDATE Does
		    SET Eats.DateTime = '$datetime',
            personFirstName = '$firstname',
            personLastName = '$lastname',
            activityName = '$activityname',
            LengthMinutes = '$length',
            Sets = '$sets',
            Reps = '$reps',
        WHERE Email = '$email'";

if (mysqli_query($dbcon, $sql)) {

	// Query for table Song
    $query = "SELECT *
	          FROM Does
			  WHERE Email = '$email'";

	$result = mysqli_query($dbcon, $query)
  			  or die('Query failed: <br>' . mysqli_error());

	// Printing table names in HTML
	if ($result->num_rows > 0) {
		print "<p style = 'font-size:150%;'><b>
                $email has been updated.
                </b></p>";
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
    echo "<br><p style = 'font-size:150%;'><b>EMAIL WAS NOT UPDATED<br><br>
    $email DOES NOT EXIST IN THE DATABASE</b></p>
    <hr>
    	  <b>Query Failed: " . $sql . "<br><p style = 'color:Red;'>MySQL Error: " . mysqli_error($dbcon) . "</p></b><br>" ;
};



}
else {
    echo "<br><p style = 'font-size:150%;'><b>EMAIL WAS NOT UPDATED<br><br>
    $email DOES NOT EXIST IN THE DATABASE</b></p>
    <hr>
  	  <b>Query Failed: " . $sql . "<br><p style = 'color:Red;'>MySQL Error: " . mysqli_error($dbcon) . "</p></b><br>" ;
}


// Closing connection
mysqli_close($dbcon);

?>
