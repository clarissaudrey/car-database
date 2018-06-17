	<?php
/*
	include_once 'connectDB.php';

	if(isset($_GET['submit'])) {
	$sql = "SELECT TEMP.Occupation, MAX(TEMP.count)
			FROM (SELECT Occupation, COUNT(*) as count
				  FROM customer 
			      GROUP BY Occupation) AS TEMP;";

	$result = mysqli_query($dbcon, $sql);
	$resultCheck = mysqli_num_rows($result);
	echo 'hmmm debugging';
	if ($resultCheck > 0) {
 		while ($row = mysqli_fetch_assoc($result)) {
 			echo "Occupation: " . $row["Occupation"]. "NumberOfPurchase: " . $row["MAX(TEMP.count)"];
 		}
 	} else {
 		echo 'No Mathcing Data';
 	}
	} else {
		exit();
	}
	*/

echo "<pre>\n";
require_once "pdo.php";
$field = $_POST['field'];
$sql = "SELECT TEMP.Occupation, MAX(TEMP.count) as max
			FROM (SELECT Occupation, COUNT(*) as count
				  FROM customer 
			      GROUP BY Occupation) AS TEMP;";

$stmt = $pdo->query($sql);
$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
echo '<table border="1">'."\n";
	echo "<tr><td>";
	echo 'Occupation';
	echo("</td><td>");
	echo 'Number of Purchase';
	echo("</td><td>");
foreach ( $rows as $row ) {
    echo "<tr><td>";
    echo($row['Occupation']);
    echo("</td><td>");
    echo($row['max']);
    echo("</td></tr>\n");
}