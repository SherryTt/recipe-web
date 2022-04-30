<?php
session_start();
require("vendor/autoload.php");

use textreview\Session;

$name = Session::get("name");
$user_image = Session::get("user_image");



$loader = new \Twig\Loader\FilesystemLoader("templates");
$twig = new Twig\Environment( $loader,["cache" => false] );

$site_name  = "TextReview";

echo $twig -> render(
  "navigation2.twig",
  [
    "page_title" => "Mypage", 
    "site_name" => $site_name,
    "name" => $name,
    "user_image" => $user_image

]);
?>