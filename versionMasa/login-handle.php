<?php
	if (isset($_POST['submit'])) {
	$username = $_POST['uid'];	
	$pass = $_POST['pwd']	;
	if (($username == 'customer')&&($pass == '0121')) {
			include_once 'customer.php';
		} else if (($username == 'business')&&($pass == 'profit')) {
			include_once 'business.php';
		} else if (($username == 'sales')&&($pass == 'money')) {
			include_once 'IT.php';
		} else {
			header('Location: index.php');
			exit();
		} 
	} else {
		header('Location: index.php');
		exit();
	}