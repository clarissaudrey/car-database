	<?php
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
