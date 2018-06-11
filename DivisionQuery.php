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
			HAVING AVG(employee_evaluation.Rating) >=  $field;";

	$result = mysqli_query($dbcon, $sql);
	//printf(" This is Results : %s\n", $field);
	$resultCheck = mysqli_num_rows($result);
	if ($resultCheck > 0) {
		echo "ID". str_repeat('&nbsp;', 2). " Name " . str_repeat('&nbsp;', 16). "Rating <br>";
 		while ($row = mysqli_fetch_row($result)) {
 			printf ("%s" . str_repeat('&nbsp;', 5).  " %s " . str_repeat('&nbsp;', 4).  "%s <br>", $row[0], $row[1], $row[2]);
 		}
 	} else 
 		echo 'No Matching Data';
	}
	?>