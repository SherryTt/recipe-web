<?php
session_start();
require("vendor/autoload.php");

use textreview\Session;


$user_name = $_SESSION["name"];


$loader = new \Twig\Loader\FilesystemLoader("templates");
$twig = new Twig\Environment( $loader,["cache" => false] );

$site_name  = "TextReview";

echo $twig -> render(
  "userdashboard.twig",
  [
    "page_title" => "Userdashboard to TextReview", 
    "site_name" => $site_name,
	"user_name" => $user_name

]);
?>