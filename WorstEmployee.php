	<?php
	include_once 'connectDB.php';

	if(isset($_POST['submit'])) {
	$field = $_POST['field'];
	$sql = "SELECT 
				employee.EmployeeID, 
				employee.Name, 
				AVG(employee_evaluation.Rating)
			FROM 
				employee, 
				employee_evaluation 
			WHERE 
				employee.EmployeeID = employee_evaluation.EmployeeID 
			GROUP BY employee.EmployeeID
			ORDER BY employee_evaluation.Rating ";

	$result = mysqli_query($dbcon, $sql);
	$resultCheck = mysqli_num_rows($result);

	if ($resultCheck > 0) {
		echo "EmployeeID". str_repeat('&nbsp;', 2). " Name " . str_repeat('&nbsp;', 16). "Rating <br>";
		for ($x = 0; $x < $field; $x++) {
 			$row = mysqli_fetch_row($result); 
 			printf (str_repeat('&nbsp;', 5). "%s" . str_repeat('&nbsp;', 10).  " %s " . str_repeat('&nbsp;', 20).  "%s <br>", $row[0], $row[1], $row[2]);
		}
 	} else 
 		echo 'No Matching Data';
	}
	?>