<?php
echo "<pre>\n";
require_once "pdo.php";

$avg_rat = 0;
$eid = $_GET['eid'];
$sql_find_evaluations = "SELECT * FROM employee_evaluation 
    WHERE EmployeeID ='$eid'";
$stmt = $pdo->query($sql_find_evaluations);
$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);

$i = 0;
foreach ( $rows as $row ) {
    $avg_rat += $row['Rating'];
    $i++;
}
$avg_rat = ($avg_rat/$i);
if($avg_rat == 0){
    echo "No records for Employee $eid found";
}else{
    echo "Employee's $eid average rating is = $avg_rat over $i years ";
}
echo "</pre>"
?>