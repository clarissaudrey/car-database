<?php

	DEFINE ('username', 'root');
	DEFINE('password', 'root');
	DEFINE('host', 'localhost');
	DEFINE('name', 'testb');

	$dbcon = mysqli_connect(host, username, password, name);

	if (!$dbcon) {
		die('error connecting to database');
		}
	echo 'you have connected successfully' . "<br>";

