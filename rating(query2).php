	<?php
	include_once 'connectDB.php';

	if(isset($_POST['submit'])) {
	$field = $_POST['field'];
	$sql = "SELECT employee.EmployeeID, employee.Fullname 					FROM employee, employee_evaluation
			WHERE employee.EmployeeID=employee_evaluation.EmployeeID and employee_evaluation.Rating > $field;";

	$result = mysqli_query($dbcon, $sql);
	$resultCheck = mysqli_num_rows($result);
	if ($resultCheck > 0) {
 		while ($row = mysqli_fetch_assoc($result)) {

 			echo "ID: " . $row["EmployeeID"]. " Fullname: " . $row["Fullname"]. "<br>";
 		}
 	} else {
 		echo 'No Mathcing Data';
 	}
	//header("Location: ../db(insert).php?signup=success");
	}