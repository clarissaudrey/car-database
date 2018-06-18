<?php

    echo "<pre>\n";
    require_once "pdo.php";
    $cid = htmlentities($_POST['cid']);
    $name = htmlentities($_POST['name']);
    $addr = htmlentities($_POST['addr']);
    $occ = htmlentities($_POST['occ']);
    $sex = htmlentities($_POST['sex']);
    $phone = htmlentities($_POST['phone']);
    $age = htmlentities($_POST['age']);
    echo "Insert the following new customer:\n";

try {
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql_insert = "INSERT INTO customer (CustomerID, Name, Address, Occupation, Sex, Phone, Age)
             VALUES ( :cid, :named , :addr, :occ , :sex , :phone , :age) ";
    $pdo->prepare($sql_insert);
    $ped->execute(array( ':cid' => $_POST['cid'], ':named' => $_POST['name'] ':addr' => $_POST['addr'], ':occ' => $_POST['occ'];
                    ':sex' => $_POST['sex'], ':phone' => $_POST['phone'], ':age' => $_POST['age']);
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