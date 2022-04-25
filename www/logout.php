<?php
require('vendor/autoload.php');

use textreview\Session;

Session::unset("email");
Session::unset("account_id");


//Back to home page
header('location: index.php');
?>