<?php

	echo "<pre>\n";
	require_once "pdo.php";
	$field = htmlentities($_GET['field']);
	$sql = "SELECT 
					employee.EmployeeID, 
					employee.Name, 
					AVG(employee_evaluation.Rating) as avg
				FROM 
					employee, 
					employee_evaluation 
				WHERE 
					employee.EmployeeID = employee_evaluation.EmployeeID 
				GROUP BY employee.EmployeeID
				ORDER BY avg asc";

	$stmt = $pdo->query($sql);
	$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
	echo '<table border="1">'."\n";
		echo "<tr><td>";
		echo 'EmployeeID';
		echo("</td><td>");
		echo 'Name';
		echo("</td><td>");
		echo 'Average';
		echo("</td></tr>");
	for ($x = 0; ($x < $field) && ($x <= sizeof($rows))	; $x++) {
		echo "<tr><td>";
		echo($rows[$x]['EmployeeID']);
		echo("</td><td>");
		echo($rows[$x]['Name']);
		echo("</td><td>");
		echo($rows[$x]['avg']);
		echo("</td></tr>\n");
	}

?>