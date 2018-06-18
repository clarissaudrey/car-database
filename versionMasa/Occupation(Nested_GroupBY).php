
<?php
	echo "<pre>\n";
	require_once "pdo.php";
	$sql = "SELECT TEMP.Occupation, MAX(TEMP.count) as max
				FROM (SELECT Occupation, COUNT(*) as count
					FROM customer 
					GROUP BY Occupation 
					ORDER BY count DESC) AS TEMP";
	$stmt = $pdo->query($sql);
	$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
	echo '<table border="1">'."\n";
		echo "<tr><td>";
		echo 'Occupation';
		echo("</td><td>");
		echo 'Number of Purchase';
		echo("</td></tr>");
	foreach ( $rows as $row ) {
		echo "<tr><td>";
		echo($row['Occupation']);
		echo("</td><td>");
		echo($row['max']);
		echo("</td></tr>\n");
}
?>