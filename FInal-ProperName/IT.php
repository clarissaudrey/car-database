
<!-- <?php
//	include_once 'connectDB.php';
?> -->
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<h1> Time to add/delete some data? </h1>
	
	<hr>

<br> 		</br>
<b> choose an employee to delete </b>
	<form action="DeleteEmployee(Delete).php" method="POST">
		<label for=eid>Employee id</label>
        <input type="number" name="eid" id="eid"><br/>
		<input type="submit" value="Submit">
	</form>

<br>	</br>
    <b>Change employee email<b>
    <form action="ChangeEmail(Update).php" method="POST">
        <label for=eid>Employee id</label>
        <input type="number" name="eid" id="eid"><br/>
        <label for="email">Email</label>
        <input type= "email" name="email" id="email"><br/>
        <input type="submit" value="Submit">
    </form>



</body>
</html>

