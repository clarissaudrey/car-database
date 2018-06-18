<?php
echo "<pre>\n";
require_once "pdo.php";
$eid = $_POST['eid'];
$phone = $_POST['phone'];
$addr = $_POST['addr'];
$role = $_POST['role'];
$age = $_POST['age'];
$sex = $_POST['sex'];
$yrs = $_POST['yrs'];
$name = $_POST['name'];
$email = $_POST['email'];
echo "Insert the following employee:\n";

try {
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql_insert = "INSERT INTO employee (EmployeeID, Phone, Address, Role, Age, Sex, YearsWorking, Name, Email)
             VALUES ($eid, '$phone', '$addr', '$role', $age, '$sex', $yrs, '$name', '$email');";
    $pdo->exec($sql_insert);
    echo '<table border="1">'."\n";

    echo "<tr><td>";
    echo($eid);
    echo("</td><td>");
    echo($phone);
    echo("</td><td>");
    echo($addr);
    echo("</td><td>");
    echo($role);
    echo("</td><td>");
    echo($age);
    echo("</td><td>");
    echo($age);
    echo("</td><td>");
    echo($sex);
    echo("</td><td>");
    echo($name);
    echo("</td><td>");
    echo($email);
    echo("</td></tr>\n");

    echo "</table>\n";
    echo("Employee Insertion Success\n");
    }
catch(PDOException $e)
    {
    echo $sql_insert . "<br>" . $e->getMessage();
    }


echo "</pre>";
?>