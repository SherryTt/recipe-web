<?php
require('vendor/autoload.php');

use textreview\Navigation;
use textreview\Account;


if( $_SERVER['REQUEST_METHOD'] == 'POST' ) {
  $name = $_POST['name'];
  $email = $_POST['email'];
  $password = $_POST['password'];
  $confirm_pass = $_POST['conrim_pass'];

  $acc = new Account();
  $register = $acc -> register($name,$email,$password,$confirm_pass);
  // if register is successful
  if ( $register['success'] ) {
    // redirect to home
    header('location: index.php');
  }
}
else{
  $register = '';
  $name = '';
  $email = '';
}

$navigation = Navigation::getNavigation();

//Twig
$loader = new Twig_Loader_Filesystem('templates');
$twig = new Twig_Environment( $loader );
//load the template
$template = $twig -> load( 'register.twig' );
//output the template to page
echo $template -> render([
  'navigation' => $navigation,
  'register' => $register,
  'name' => $name,
  'email' => $email,
  'title' => 'Register for a free account'
]);


?>