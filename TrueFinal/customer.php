
<!-- <?php
//	include_once 'connectDB.php';
?> -->
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<h1> Welcome Customer! </h1>
	
	<hr>

<br> 	</br>
<b> Find top (Input) test driven vehicles</b>
<form action="topDriven(Extra).php" method="POST">
	<input type="number" name="field" placeholder="Input">
	<br>
	<button type="submit" name="submit"> Submit </button>
</form>

<br> 	</br>
<b> Search vehicle by gas type</b>
<form action="gasType(Extra).php" name='add' method="POST">
Options: <select name='field'>
     <option value='Gas' >Gas</option>
     <option value='Diesel'>Diesel</option>
     <option value='Electric'>Electric</option>
     </select>
<input type='submit' name='submit'/>
</form>

</body>
</html>

