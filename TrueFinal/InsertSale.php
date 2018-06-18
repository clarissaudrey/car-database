<?php
echo "<pre>\n";
require_once "pdo.php";
$sid = $_POST['sid'];
$vid = $_POST['vid'];
$cid = $_POST['cid'];
$eid = $_POST['eid'];
$date = $_POST['date'];
$pr = $_POST['pr'];
echo "Insert the following sale:\n";

try {
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql_insert = "INSERT INTO sale (SaleID, VehicleID, CustomerID, EmployeeID, Date, PaymentReceived)
             VALUES ($sid, $vid, $cid, $eid, '$date', '$pr');";
    $sql_decrement = "UPDATE vehicle
                       SET NumberAvailable = NumberAvailable - 1
                       WHERE vehicle.VehicleID = $vid and NumberAvailable > 0";
    $pdo->exec($sql_insert);

    echo '<table border="1">'."\n";

    echo "<tr><td>";
    echo($sid);
    echo("</td><td>");
    echo($vid);
    echo("</td><td>");
    echo($cid);
    echo("</td><td>");
    echo($eid);
    echo("</td><td>");
    echo($date);
    echo("</td><td>");
    echo($pr);
    echo("</td></tr>\n");

    echo "</table>\n";
    echo("Sale Insertion Success\n");

    $pdo->exec($sql_decrement);
    echo("Updated vehicle database\n");    
    }
catch(PDOException $e)
    {
    echo $sql_insert . "<br>" . $e->getMessage();
    }


echo "</pre>";
?>