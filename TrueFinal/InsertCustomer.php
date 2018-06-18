<?php
echo "<pre>\n";
require_once "pdo.php";
$cid = $_POST['cid'];
$name = $_POST['name'];
$addr = $_POST['addr'];
$occ = $_POST['occ'];
$sex = $_POST['sex'];
$phone = $_POST['phone'];
$age = $_POST['age'];
echo "Insert the following new customer:\n";

try {
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql_insert = "INSERT INTO customer (CustomerID, Name, Address, Occupation, Sex, Phone, Age)
             VALUES ($cid, '$name', '$addr', '$occ', '$sex', '$phone', $age);";
    $pdo->exec($sql_insert);
    echo '<table border="1">'."\n";

    echo "<tr><td>";
    echo($cid);
    echo("</td><td>");
    echo($name);
    echo("</td><td>");
    echo($addr);
    echo("</td><td>");
    echo($occ);
    echo("</td><td>");
    echo($sex);
    echo("</td><td>");
    echo($phone);
    echo("</td><td>");
    echo($age);
    echo("</td></tr>\n");

    echo "</table>\n";
    echo("New customer added!\n");
    }
catch(PDOException $e)
    {
    echo $sql_insert . "<br>" . $e->getMessage();
    }


echo "</pre>";
?>