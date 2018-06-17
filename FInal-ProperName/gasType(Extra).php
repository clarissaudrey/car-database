	<?php
	/*
	include_once 'connectDB.php';

	if(isset($_POST['submit'])) {
	$field = $_POST['field'];
	$sql = "SELECT *
			FROM vehicle 
			WHERE GasType='$field'
			ORDER BY NumberAvailable DESC;";

	$result = mysqli_query($dbcon, $sql);
	$resultCheck = mysqli_num_rows($result);
	if ($resultCheck > 0) {
 		while ($row = mysqli_fetch_assoc($result)) {
 			echo "ID: " . $row["VehicleID"]. "Model: " . $row["Model"]. "WheelDrive: " . $row["WheelDrive"]. "Brakes" . $row["Brakes"]. "Transmission: ". $row["Transmission"]. "Number: ". $row["NumberAvailable"]. "GasType: ". $row["GasType"]. "<br>";
 		}
 	} else {
 		echo 'No Mathcing Data';
 	}
	}
	*/

echo "<pre>\n";
require_once "pdo.php";
$field = $_POST['field'];
		$sql = "SELECT *
			FROM vehicle 
			WHERE GasType='$field'
			ORDER BY NumberAvailable DESC;";

$stmt = $pdo->query($sql);
$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
echo '<table border="1">'."\n";
	echo "<tr><td>";
	echo 'VehicleID';
	echo("</td><td>");
	echo 'Model';
	echo("</td><td>");
	echo 'WheelDrive';
	echo("</td><td>");
	echo 'Brakes';
	echo("</td><td>");
	echo 'Transmission';
	echo("</td><td>");
	echo 'NumberAvailable';
	echo("</td><td>");
	echo 'GasType';
	echo("</td><td>");
foreach ( $rows as $row ) {
    echo "<tr><td>";
    echo($row['VehicleID']);
    echo("</td><td>");
    echo($row['Model']);
    echo("</td><td>");
    echo($row['WheelDrive']);
    echo("</td><td>");
    echo($row['Brakes']);
    echo("</td><td>");
    echo($row['Transmission']);
    echo("</td><td>");
    echo($row['NumberAvailable']);
    echo("</td><td>");
    echo($row['GasType']);
    echo("</td></tr>\n");
}