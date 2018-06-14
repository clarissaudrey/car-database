<?php
echo "<pre>\n";
require_once "pdo.php";

$stmt = $pdo->query("SELECT * FROM customer");
$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
echo '<table border="1">'."\n";
foreach ( $rows as $row ) {
    echo "<tr><td>";
    echo($row['Address']);
    echo("</td><td>");
    echo($row['Occupation']);
    echo("</td><td>");
    echo($row['Age']);
    echo("</td></tr>\n");
}
echo "</table>\n";
?>
