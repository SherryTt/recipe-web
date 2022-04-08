<?php
require('vendor/autoload.php');

use textreview\Session;

Session::unset('auth');
Session::emptyAll();


//Back to home page
header('location: home.php');
?>