<?php
session_start();
require("vendor/autoload.php");

use textreview\Session;



$loader = new \Twig\Loader\FilesystemLoader("templates");
$twig = new Twig\Environment( $loader,["cache" => false] );

$site_name  = "TextReview";

echo $twig -> render(
  "userdashboard.twig",
  [
    "page_title" => "Mypage", 
    "site_name" => $site_name,


]);
?>