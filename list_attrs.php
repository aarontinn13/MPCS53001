<?php

// Connection parameters
$host = 'cspp53001.cs.uchicago.edu';
$username = 'your_username';
$password = 'secret';
$database = $username.'DB';

// Attempting to connect
$dbcon = mysqli_connect($host, $username, $password, $database)
   or die('Could not connect: ' . mysqli_connect_error());
print 'Connected successfully!<br>';

// Getting the input parameter (user):
$user = $_REQUEST['user'];

// Get the attributes of the user with the given username
$query = "SELECT email, full_name, gender, age FROM Users WHERE username = '$user'";
$result = mysqli_query($dbcon, $query)
  or die('Query failed: ' . mysqli_error($dbcon));

// Can also check that there is only one tuple in the result
$tuple = mysqli_fetch_array($result, MYSQL_ASSOC)
  or die("User $user not found!");

print "User <b>$user</b> has the following attributes:";

// Printing user attributes in HTML
print '<ul>';
print '<li> Email: '.$tuple['email'];
print '<li> Full name: '.$tuple['full_name'];
print '<li> Gender: '.$tuple['gender'];
print '<li> Age: '.$tuple['age'];
print '</ul>';

// Free result
mysqli_free_result($result);

// Closing connection
mysqli_close($dbcon);
?>
