<?php
require("vendor/autoload.php");

use textreview\Account;

$account = new Account();

$result = null;
$user_name = null;
$user_email = null;
$user_password = null;
$confirm_pass = null;

if( $_SERVER["REQUEST_METHOD"] == "POST" ) {
  $user_name = $_POST["name"];
  $user_email = $_POST["email"];
  $user_password = $_POST["password"];
  $confirm_pass = $_POST["confirm_pass"];
  echo "email=$user_email,password = $user_password";
}
  /*
   // check if user_email and user_password is not empty
   if(( strlen($user_email) > 0 && strlen($user_password) > 0 ) && ( $user_password == $confirm_pass)){
    $result = $account -> create( $user_name,$user_email, $user_password,$confirm_pass);
    }
  }
*/
$loader = new \Twig\Loader\FilesystemLoader("templates");
$twig = new Twig\Environment( $loader,["cache" => false] );

$site_name  = "TextReview";

echo $twig -> render(
  "register.twig",
  [
    "page_title" => "Sign up to TextReview", 
    "site_name" => $site_name,
    "result" => $result,
    "name" => $user_name,
    "email" => $user_email,
    "password" => $user_password,
    "confirm_pass" => $confirm_pass
]);




?>