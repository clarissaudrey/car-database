	<?php
	include_once 'connectDB.php';

	if(isset($_POST['submit'])) {
	$field = $_POST['field'];
	$sql = "SELECT * FROM customer 
			WHERE phone=$field;";

	$result = mysqli_query($dbcon, $sql);
	$resultCheck = mysqli_num_rows($result);
	if ($resultCheck > 0) {
 		while ($row = mysqli_fetch_assoc($result)) {
 			echo "ID: " . $row["CustomerID"]. "ADDRESS: " . $row["address"]. "     OCUPATION: " . $row["ocupation"]. "     SEX " . $row["sex"]. "     PHONE: ". $row["phone"]. "     AGE: ". $row["age"]. "<br>";
 		}
 	} else {
 		echo 'No Mathcing Data';
 	}
	//header("Location: ../db(insert).php?signup=success");
	}