
<!-- <?php
//	include_once 'connectDB.php';
?> -->
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<h1> Welcome Business Manager </h1>
	
	<hr>

<b> Find a customer </b>
<p> Note: Format phone number as follow 	(e.g) (111) 111-1111 </p>
<form action="Customer(Projection).php" name='add' method="POST">
Options: <select name='option'>
     <option value='Phone' >Phone</option>
     <option value='Address'>Address</option>
     <option value='CustomerID'>CustomerID</option>
     </select>
     <input type="text" name="field" placeholder="">
	<input type='submit' name='submit'/>
</form>

<br></br>

<b> Current target customer occupation </b>
<form action="Occupation(Nested_GroupBY).php" method="GET">
    <button type="submit" name="submit"> Enter </button>
</form>

<br></br>

<b> Car model inventory checker </b>
<form action="Model(Nested_GroupBY).php" method="POST">
	Options: <select name='option'>
		<option value='MIN'> MIN </option>
		<option value ='MAX'> MAX </option>
		</select>
    <button type="submit" name="submit"> Enter </button>
</form>

<br></br>

<b> Find employees performing better than (Rating) </b>
<form action="Rating(Division).php" method="GET">
	<input type="number" name="field" placeholder="Rating"><br>
	<input type='submit' name='submit'/>
</form>

<br></br>

<b> Find (input) number of employees with lowest rating </b>
<form action="Worst(Extra).php" method="GET">
	<input type="number" name="field" placeholder="input"><br>
	<input type="submit" value="Submit">
</form>

<br> </br>
	<b>Enter employee ID for performance overview</b>
	<form action="GetRatings(Joint).php" method="GET">
		<label for=eid>Employee id</label>
        <input type="number" name="eid" id="eid"><br/>
		<input type="submit" value="Submit">
	</form>
<br> </br>
     <b>Enter employee ID for average performance rating</b>
	<form action="GetAverageRating(Aggregation).php" method="GET">
	<label for=eid>Employee id</label>
        <input type="number" name="eid" id="eid"><br/>
		<input type="submit" value ="Submit">
	</form>	

	<br>	</br>


<b> FIRE EMPLOYEE. ATTENTION THIS WILL DELETE ALL RECORDS OF EMPLOYEE. </b>
	<form action="DeleteEmployee(Delete).php" method="POST">
		<label for=eid>Employee id</label>
        <input type="number" name="eid" id="eid"><br/>
		<input type="submit" value="Submit">
	</form>

	<br> 	</br>
<b> Hire Employee. Please enter all information</b>
	<form action="InsertEmployee.php" method="POST">
		<label for=eid>Employee id</label>
        <input type="number" name="eid" id="eid"><br/>
        <label for=phone>Phone Number</label>
        <input type="text" name="phone" id="phone"><br/>
        <label for=addr>Address</label>
        <input type="text" name="addr" id="addr"><br/>
        <label for=role>Role</label>
        <input type="text" name="role" id="role"><br/>
        <label for=age>Age</label>
        <input type="number" name="age" id="age"><br/>
        <label for=sex>Sex</label>
        <input type="text" name="sex" id="sex"><br/>
        <label for=yrs>Years Working</label>
        <input type="number" name="yrs" id="yrs"><br/>
        <label for=name>Name</label>
        <input type="text" name="name" id="name"><br/>
        <label for=email>Email</label>
        <input type="text" name="email" id="email"><br/>
		<input type="submit" value="Submit">
	</form>

	<br> 	</br>


<b>Employee Evaluation Deletion </b>
	<form action="DeleteEvaluationRecord.php" method="POST">
		<label for=ev_id>Evaluation ID</label>
		<input type="number" name="ev_id" id="ev_id"><br/>
		<input type="submit" value ="Submit">
	</form>
<br>	</br>
    <b>Update Employee Email<b>
    <form action="ChangeEmail(Update).php" method="POST">
        <label for=eid>Employee id</label>
        <input type="number" name="eid" id="eid"><br/>
        <label for="email">Email</label>
        <input type= "email" name="email" id="email"><br/>
        <input type="submit" value="Submit">
    </form>


</body>
</html>

