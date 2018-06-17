<?php
echo "<pre>\n";
require_once "pdo.php";
$eid = $_POST['eid'];
echo "Updating the following employee's email:\n";
$sql_find = "SELECT * FROM employee 
    WHERE EmployeeID ='$eid'";
$stmt = $pdo->query($sql_find);
$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
echo '<table border="1">'."\n";
foreach ( $rows as $row ) {
    echo "<tr><td>";
    echo($row['EmployeeID']);
    echo("</td><td>");
    echo($row['Phone']);
    echo("</td><td>");
    echo($row['Address']);
    echo("</td><td>");
    echo($row['Role']);
    echo("</td><td>");
    echo($row['Age']);
    echo("</td><td>");
    echo($row['Sex']);
    echo("</td><td>");
    echo($row['YearsWorking']);
    echo("</td><td>");
    echo($row['Name']);
    echo("</td><td>");
    echo($row['Email']);
    echo("</td></tr>\n");
}
echo "</table>\n";
$sql_update = "UPDATE employee SET Email=:Email WHERE EmployeeID=:eid";
$stmt = $pdo->prepare($sql_update);
$stmt->execute(array(':eid' => $_POST['eid'], ':Email' => $_POST['email']));
echo "Employee's email got updated to:";
$stmt = $pdo->query($sql_find);
$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
echo '<table border="1">'."\n";
foreach ( $rows as $row ) {
    echo "<tr><td>";
    echo($row['EmployeeID']);
    echo("</td><td>");
    echo($row['Phone']);
    echo("</td><td>");
    echo($row['Address']);
    echo("</td><td>");
    echo($row['Role']);
    echo("</td><td>");
    echo($row['Age']);
    echo("</td><td>");
    echo($row['Sex']);
    echo("</td><td>");
    echo($row['YearsWorking']);
    echo("</td><td>");
    echo($row['Name']);
    echo("</td><td>");
    echo($row['Email']);
    echo("</td></tr>\n");
}
echo "</table>\n";
echo "</pre>";
?>