<?php
echo "<pre>\n";
require_once "pdo.php";


$ev_id = $_POST['ev_id'];
echo "Deleting the following employee evaluation:\n";
$sql_find = "SELECT * FROM employee_evaluation
    WHERE EvaluationID ='$ev_id'";

$stmt = $pdo->query($sql_find);
$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
echo '<table border="1">'."\n";
foreach ( $rows as $row ) {
    echo "<tr><td>";
    echo($row['EvaluationID']);
    echo("</td><td>");
    echo($row['EmployeeID']);
    echo("</td><td>");
    echo($row['Rating']);
    echo("</td><td>");
    echo($row['Comment']);
    echo("</td><td>");
    echo($row['DateEvaluated']);
    echo("</td></tr>\n");
}
echo "</table>\n";

$sql_delete = "DELETE FROM employee_evaluation
WHERE EvaluationID =:ev_id ";

$stmt = $pdo->prepare($sql_delete);
$stmt->execute(array(':ev_id' => $_POST['ev_id']));

echo "Evaluation deleted";
echo "</pre>";
?>