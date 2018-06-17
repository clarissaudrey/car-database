
<!-- <?php
//	include_once 'connectDB.php';
?> -->
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<h1> Time to judge your co-workers!! </h1>
	
	<hr>

<b> Find a customer </b>
<p> please format your phone number as example 	(e.g) (111) 111-1111 </p>
<form action="phone(query1).php" name='add' method="POST">
Options: <select name='option'>
     <option value='Phone' >Phone</option>
     <option value='Address'>Address</option>
     <option value='CustomerID'>CustomerID</option>
     </select>
     <input type="text" name="field" placeholder="">
<input type='submit' name='submit'/>
</form>

<br>	</br>

<b> Find empmloyees performing better than (Rating) </b>
<form action="rating(query2).php" method="POST">
	<input type="number" name="field" placeholder="Rating">
	<br>
	<button type="submit" name="submit"> Submit </button>
</form>

<br> </br>

<b> Find top (input) employee with worst average rating </b>
<form action="worst.php" method="POST">
	<input type="number" name="field" placeholder="input">
	<br>
	<button type="submit" name="submit"> Submit </button>
</form>

<br>	</br>

<b> Find occupation with most purchase </b>
<form action="getJobWithMostPurchase.php" method="GET">
	<button type="submit" name="submit"> Enter </button>
</form>

<br> </br>
	<b>Get all employee's ratings</b>
	<form action="GetAllEmployeesRating.php" method="GET">
		<label for=eid>Employee id</label>
        <input type="number" name="eid" id="eid"><br/>
		<input type="submit" value="Submit">
	</form>
<br> </br>
     <b>Get average employee's rating</b>
	<form action="GetAverageRating.php" method="GET">
	<label for=eid>Employee id</label>
        <input type="number" name="eid" id="eid"><br/>
		<input type="submit" value ="Submit">
	</form>	


</body>
</html>

