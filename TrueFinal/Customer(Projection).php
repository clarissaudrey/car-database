	<?php
/*	include_once 'connectDB.php';

	if(isset($_POST['submit'])) {
	$field = $_POST['field'];
	$sql = "SELECT * FROM customer 
			WHERE Phone='(145) 678-9233';";

	$result = mysqli_query($dbcon, $sql);
	$resultCheck = mysqli_num_rows($result);
	if ($resultCheck > 0) {
 		while ($row = mysqli_fetch_assoc($result)) {
 			echo "ID: " . $row["CustomerID"]. "ADDRESS: " . $row["Address"]. "     OCUPATION: " . $row["Occupation"]. "     SEX " . $row["Sex"]. "     PHONE: ". $row["Phone"]. "     AGE: ". $row["Age"]. "<br>";
 		}
 	} else {
 		echo 'No Mathcing Data';
 	}
	}
	*/

	/*
	include_once 'connectDB.php';

	if(isset($_POST['submit'])) {
	$field = $_POST['field'];
	$option = $_POST['option'];

	if ($option == 'Phone') {
	$sql = "SELECT * FROM customer 
			WHERE Phone='$field';";
	} else if ($option== 'Address') {
	$sql = "SELECT * FROM customer 
			WHERE Address='$field';";
	} else if ($option=='CustomerID') {
		$sql = "SELECT * FROM customer 
			WHERE CustomerID='$field';";
	}

	$result = mysqli_query($dbcon, $sql);
	$resultCheck = mysqli_num_rows($result);
	if ($resultCheck > 0) {
 		while ($row = mysqli_fetch_assoc($result)) {
 			echo "ID: " . $row["CustomerID"]. "ADDRESS: " . $row["Address"]. "     OCUPATION: " . $row["Occupation"]. "     SEX " . $row["Sex"]. "     PHONE: ". $row["Phone"]. "     AGE: ". $row["Age"]. "<br>";
 		}
 	} else {
 		echo 'No Mathcing Data';
 	}
	}

*/
echo "<pre>\n";
require_once "pdo.php";
$field = $_POST['field'];
$option = $_POST['option'];
	if ($option == 'Phone') {
	$sql = "SELECT * FROM customer 
			WHERE Phone='$field';";
	} else if ($option== 'Address') {
	$sql = "SELECT * FROM customer 
			WHERE Address='$field';";
	} else if ($option=='CustomerID') {
		$sql = "SELECT * FROM customer 
			WHERE CustomerID='$field';";
	}
$stmt = $pdo->query($sql);
$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
echo '<table border="1">'."\n";
	echo "<tr><td>";
	echo 'CustomerID';
	echo("</td><td>");
	echo 'Address';
	echo("</td><td>");
	echo 'Occupation';
	echo("</td><td>");
	echo 'Sex';
	echo("</td><td>");
	echo 'Phone';
	echo("</td><td>");
	echo 'Age';
	echo("</td><td>");
foreach ( $rows as $row ) {
    echo "<tr><td>";
    echo($row['CustomerID']);
    echo("</td><td>");
    echo($row['Address']);
    echo("</td><td>");
    echo($row['Occupation']);
    echo("</td><td>");
    echo($row['Sex']);
    echo("</td><td>");
    echo($row['Phone']);
    echo("</td><td>");
    echo($row['Age']);
    echo("</td></tr>\n");
}
