<!-- If you are using this
change dbname to your database name, 'root' 1 to user, 'root' 2 to password
-->
<?php 
$pdo = new PDO('mysql:host=localhost;port=3306;dbname=testpascal'
,'root','root');
//See all the errors folder for details
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
?>
