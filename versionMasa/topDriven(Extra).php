	<?php
	/*
	include_once 'connectDB.php';
	
	if(isset($_POST['submit'])) {
	$field = $_POST['field'];
	$sql = "SELECT 
				testdrive.VehicleID,
	 			vehicle.Model, 
	 			COUNT(testdrive.VehicleID) 
	 		FROM 
	 			testdrive, 
	 			vehicle 
	 		WHERE 
	 			vehicle.VehicleID = testdrive.VehicleID 
	 		GROUP BY 
	 			testdrive.VehicleID
	 		ORDER BY
				COUNT(testdrive.VehicleID) DESC";
	$result = mysqli_query($dbcon, $sql);
	$resultCheck = mysqli_num_rows($result);
	if ($resultCheck > 0) {
		echo "Car ID". str_repeat('&nbsp;', 2). " Model " . str_repeat('&nbsp;', 16). "Times Test Driven <br>";
		for ($x = 0; $x < $field; $x++) {
 			$row = mysqli_fetch_row($result); 
 			printf (str_repeat('&nbsp;', 5). "%s" . str_repeat('&nbsp;', 10).  " %s " . str_repeat('&nbsp;', 20).  "%s <br>", $row[0], $row[1], $row[2]);
		}
 	} else 
 		echo 'No Matching Data';
	}
	?>
	*/
echo "<pre>\n";
require_once "pdo.php";
$field = htmlentities($_GET['field']);
$sql = "SELECT 
			testdrive.VehicleID,
	 		vehicle.Model, 
	 		COUNT(testdrive.VehicleID) as count
		FROM 
	 		testdrive, 
	 		vehicle 
	 	WHERE 
			vehicle.VehicleID = testdrive.VehicleID 
	 	GROUP BY 
	 		testdrive.VehicleID
	 	ORDER BY
			COUNT(testdrive.VehicleID) DESC";

$stmt = $pdo->query($sql);
$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
echo '<table border="1">'."\n";
		echo "<tr><td>";
	echo 'VehicleID';
	echo("</td><td>");
	echo 'Model';
	echo("</td><td>");
	echo 'Number of Test Driven';
	echo("</td></tr>");
for ($x = 0; ($x < $field) && ($x <= sizeof($rows))	; $x++) {
    echo "<tr><td>";
    echo($rows[$x]['VehicleID']);
    echo("</td><td>");
    echo($rows[$x]['Model']);
    echo("</td><td>");
    echo($rows[$x]['count']);
    echo("</td></tr>\n");
}