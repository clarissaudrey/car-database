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
$option = $_POST['option'];
if ($option == 'MAX') {
	$sql = "SELECT TEMP.Model, MAX(TEMP.avg) as max
			FROM (SELECT Model, AVG(NumberAvailable) as avg
		    	  FROM vehicle 
			      GROUP BY Model 
                  ORDER BY avg DESC) AS TEMP";
 } 
 else if ($option == 'MIN') {
 	$sql = "SELECT TEMP.Model, MIN(TEMP.avg) as max
 			FROM (SELECT Model, AVG(NumberAvailable) as avg
 		    	  FROM vehicle 
 			      GROUP BY Model 
                   ORDER BY avg ASC) AS TEMP";
 } else {
 	echo 'wrong option';
 }
// 	$sql = "SELECT TEMP.Model, MIN(TEMP.avg) as max
// 			FROM (SELECT Model, AVG(NumberAvailable) as avg
// 		    	  FROM vehicle 
// 			      GROUP BY Model 
//                   ORDER BY avg ASC) AS TEMP";
// } else {
// 	echo: 'choose the right option';
// }

$stmt = $pdo->query($sql);
$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
echo '<table border="1">'."\n";
	echo "<tr><td>";
	echo 'Model';
	echo("</td><td>");
	echo 'Average of Stock';
	echo("</td><td>");
foreach ( $rows as $row ) {
    echo "<tr><td>";
    echo($row['Model']);
    echo("</td><td>");
    echo($row['max']);
    echo("</td></tr>\n");
}