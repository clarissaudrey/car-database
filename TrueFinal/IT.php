
<!-- <?php
//	include_once 'connectDB.php';
?> -->
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
    <h1> Time to analyze sales data </h1>
	<hr>

<br>    </br>
<b> Find occupation with most purchase </b>
<form action="Occupation(Nested_GroupBY).php" method="GET">
    <button type="submit" name="submit"> Enter </button>
</form>

<br> 		</br>

<b> Find a customer </b>
<p> please format your phone number as example  (e.g) (111) 111-1111 </p>
<form action="Customer(Projection).php" name='add' method="POST">
Options: <select name='option'>
     <option value='Phone' >Phone</option>
     <option value='Address'>Address</option>
     <option value='CustomerID'>CustomerID</option>
     </select>
     <input type="text" name="field" placeholder="">
<input type='submit' name='submit'/>
</form>

<br> </br>

<b> Find a model with highest stock on average </b>
<form action="Model(Nested_GroupBY).php" name='add' method="POST">
Options: <select name='option'>
     <option value='MAX' >MAX</option>
     <option value='MIN'>MIN</option>
     </select>
<input type='submit' name='submit'/>
</form>


</body>
</html>

