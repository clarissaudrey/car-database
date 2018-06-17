
<!-- <?php
//	include_once 'connectDB.php';
?> -->
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<h1> Welcome to Team 42! </h1>
	
	<hr>

<br> 	</br>
<b> Find top (Input) driven vechicles</b>
<form action="topDriven.php" method="POST">
	<input type="number" name="field" placeholder="Input">
	<br>
	<button type="submit" name="submit"> Submit </button>
</form>

<br> 	</br>
<b> Search vehicle with gas type</b>
<form action="gasType.php" method="POST">
	<input type="text" name="field" placeholder="Gas Type">
	<br>
	<button type="submit" name="submit"> Submit </button>
</form>

</body>
</html>

