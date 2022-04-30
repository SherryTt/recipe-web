<?php
session_start();
require("vendor/autoload.php");

use textreview\Session;
use textreview\Account;

$user_ID = Session::get("account_id");
$name = Session::get("name");
$email = Session::get("email");
$user_follower = Session::get("user_follower");
$user_image = Session::get("user_image");
$user_detail = Session::get("user_detail");


$account =  new Account();
$user = $account -> getUser($user_ID);



$loader = new \Twig\Loader\FilesystemLoader("templates");
$twig = new Twig\Environment( $loader,["cache" => false] );

$site_name  = "TextReview";

echo $twig -> render(
  "userdashboard.twig",
  [
    "page_title" => "Mypage", 
    "site_name" => $site_name,
    "id" => $user_ID,
    "name" => $name,
    "email" => $email,
    "user_image" => $user_image,
    "user_follower" => $user_follower,
    "user_detail" => $user_detail,
    "user" => $user

]);
?>