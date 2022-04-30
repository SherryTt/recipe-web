<?php
require('vendor/autoload.php');

use textreview\Review;

$review = new review;

$rate = $_GET['rate'];
$content = $_GET['content'];
$recipeid = $_GET['id'];

// $content,$rate,$recipeid
$review->getNewReview( $content,$rate,$recipeid );



$loader = new \Twig\Loader\FilesystemLoader("templates");
$twig = new Twig\Environment($loader,["cache" => false]);


?>