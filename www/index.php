<?php
require('vendor/autoload.php');

use textreview\Recipe;

$recipe = new recipe();



$items = $recipe -> getItems();


$userResult = $recipe -> getUser();
$sliderResult = $recipe ->getSlider();


$loader = new \Twig\Loader\FilesystemLoader("templates");

$twig = new Twig\Environment($loader,["cache" => false]);

echo $twig -> render(
  "home.twig",
  ["page_title" => "MyRecipe",
  "recipe" => $items,
  "userResult" => $userResult,
  "sliderResult" => $sliderResult
])

?>
