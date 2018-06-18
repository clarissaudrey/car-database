	<?php
/*	
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
	*/

/*	include_once 'connectDB.php';

	if(isset($_POST['submit'])) {
	$field = $_POST['field'];
	$sql = "SELECT  
	employee.EmployeeID,
    employee.Name
FROM 
	employee
WHERE employee.EmployeeID NOT IN (
	SELECT DISTINCT
   		employee.EmployeeID
	FROM
    	employee_evaluation
	WHERE
    	employee.EmployeeID = employee_evaluation.EmployeeID AND employee_evaluation.Rating < $field);";

	$result = mysqli_query($dbcon, $sql);
	$resultCheck = mysqli_num_rows($result);
	if ($resultCheck > 0) {
 		while ($row = mysqli_fetch_assoc($result)) {

 			echo "ID: " . $row["EmployeeID"]. " Name: " . $row["Name"]. "<br>";
 		}
 	} else {
 		echo 'No Mathcing Data';
 	}
	//header("Location: ../db(insert).php?signup=success");
	}
*/
echo "<pre>\n";
require_once "pdo.php";
$field = $_POST['field'];
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
	echo("</td><td>");
for ($x = 0; ($x < $field) && ($x <= sizeof($rows))	; $x++) {
    echo "<tr><td>";
    echo($rows[$x]['EmployeeID']);
    echo("</td><td>");
    echo($rows[$x]['Name']);
    echo("</td><td>");
    echo($rows[$x]['avg']);
    echo("</td></tr>\n");
}