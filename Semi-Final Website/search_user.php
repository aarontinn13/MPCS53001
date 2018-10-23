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

// Getting the input parameter (email):
$email = $_REQUEST['Email'];

// Get the attributes of the user with the given username
$query = "SELECT * FROM Person WHERE Email = '$email'";
$result = mysqli_query($dbcon, $query)
  or die('Query failed: ' . mysqli_error($dbcon));

// Can also check that there is only one tuple in the result
$tuple = mysqli_fetch_array($result)
  or die("$email is not found in $database database!");

print "Person <b>$email</b> has the following data:";

// Printing user attributes in HTML
print '<ul>';
print '<li> Email: '.$tuple['Email'];
print '<li> First Name: '.$tuple['First_Name'];
print '<li> Last Name: '.$tuple['Last_Name'];
print '<li> Age: '.$tuple['Age'];
print '<li> Address: '.$tuple['Address'];
print '<li> Weight: '.$tuple['Weight'];
print '<li> Unit: '.$tuple['WeightUnit'];
print '<li> Plan ID: '.$tuple['PlanID'];
print '</ul>';

// Free result
mysqli_free_result($result);

// Closing connection
mysqli_close($dbcon);
?>
