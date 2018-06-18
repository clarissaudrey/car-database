<?php
    echo "<pre>\n";
    require_once "pdo.php";

    echo "Getting all ratigns for:";
    $sql_find_employee = "SELECT * FROM employee 
        WHERE EmployeeID = :eid ";
    $stmt = $pdo->prepare($sql_find_employee);
    $stmt->execute(array(':eid' => $_GET['eid']));
    $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
   
    echo '<table border="1">'."\n";
    echo "<tr><td>";
    echo("EmployeeID");
    echo("</td><td>");
    echo("Phone");
    echo("</td><td>");
    echo("Address");
    echo("</td><td>");
    echo("Role");
    echo("</td><td>");
    echo("Age");
    echo("</td><td>");
    echo("Sex");
    echo("</td><td>");
    echo("YearsWorking");
    echo("</td><td>");
    echo("Name");
    echo("</td><td>");
    echo("Email");
    echo("</td></tr>\n");
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
    $sql_find_ratings= "SELECT * FROM employee_evaluation
        WHERE EmployeeID = :eid ";
    echo "Evaluations:";
    $stmt = $pdo->prepare($sql_find_ratings);
    $stmt->execute(array(':eid' => $_GET['eid']));
    $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);


    echo '<table border="1">'."\n";
    echo "<tr><td>";
    echo("EvaluationID");
    echo("</td><td>");
    echo("EmployeeID");
    echo("</td><td>");
    echo("Rating");
    echo("</td><td>");
    echo("Comment");
    echo("</td><td>");
    echo("DateEvaluated");
    echo("</td></tr>\n");
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
?>