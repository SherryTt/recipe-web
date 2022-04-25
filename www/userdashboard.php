<?php
session_start();
require("vendor/autoload.php");

use textreview\Session;
use textreview\Recipe;

$user_ID = $_GET['user_ID'];

$recipe = new recipe();
$userResult = $recipe -> getUser();


$loader = new \Twig\Loader\FilesystemLoader("templates");
$twig = new Twig\Environment( $loader,["cache" => false] );

$site_name  = "TextReview";

echo $twig -> render(
  "userdashboard.twig",
  [
    "page_title" => "Mypage", 
    "site_name" => $site_name,
    "userResult" => $userResult,

]);
?>