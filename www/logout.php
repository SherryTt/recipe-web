<?php
require('vendor/autoload.php');

use textreview\Session;

Session::unset('');


//Back to home page
header('location: home.php');
?>