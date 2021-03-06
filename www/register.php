<?php
require("vendor/autoload.php");

use textreview\Account;
use textreview\Session;

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
  //check if user_email and user_password is not empty
   if( strlen($user_email) > 0 && strlen($user_password) > 0 && strlen($user_name) > 0 && strlen($confirm_pass) > 0){
    $result = $account -> create( $user_name, $user_email, $user_password,$confirm_pass);
    header("Location:login.php");

    if( $result["success"] == true){

      Session :: set("email",$result["email"]);
      Session :: set("account_id",$result["id"]);

    }
    }
  }

$loader = new \Twig\Loader\FilesystemLoader("templates");
$twig = new Twig\Environment( $loader,["cache" => false] );

$site_name  = "TextReview";

echo $twig -> render(
  "register.twig",
  [
    "page_title" => "Sign up", 
    "site_name" => $site_name,
    "result" => $result,
    "name" => $user_name,
    "email" => $user_email,
    "password" => $user_password,
    "confirm_pass" => $confirm_pass
]);




?>