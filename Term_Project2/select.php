<!DOCTYPE html>
<html>
<head>
	<title>Connecting to a Database</title>
</head>
<body>
	<?php
		$con = mysql_connect('localhost','root','password');
		$db = mysql_select_db('STOCK');

		if ($con) {
			echo 'successfully connected to the database';
		} else{
			die('error.')
		}
	?>

</body>
</html>