	<?php
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
    	employee.EmployeeID = employee_evaluation.EmployeeID AND employee_evaluation.Rating < :field)";

$stmt = $pdo->prepare($sql);
$stmt->execute(array(':field' => $_GET['field']));
$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
echo '<table border="1">'."\n";
	echo "<tr><td>";
	echo 'EmployeeID';
	echo("</td><td>");
	echo 'Name';
	echo("</td></tr>");
foreach ( $rows as $row ) {
    echo "<tr><td>";
    echo($row['EmployeeID']);
    echo("</td><td>");
    echo($row['Name']);
    echo("</td></tr>\n");
}