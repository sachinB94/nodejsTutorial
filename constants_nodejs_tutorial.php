<?php

define("HOSTNAME", "localhost");
define("USERNAME", "root");
define("PASSWORD", "");

define("DATABASE", "tute");

define("TABLE_NODEJS", "table_nodejs");
define("TABLE_USER_TUTE", "table_user_tute");
define("TABLE_IMPROVE_TUTE", "table_improve_tute");

$connection = mysqli_connect(HOSTNAME,USERNAME,PASSWORD,DATABASE);

if(mysqli_connect_errno($connection)) {
	echo "Failed to connect to MySQL : " . mysqli_connect_error();
}

?>