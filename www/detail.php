<?php
require('vendor/autoload.php');

use textreview\Recipe;

$recipe_ID = $_GET['id'];


$recipe = new recipe();
$detail = $recipe -> getDetail($recipe_ID);
$recipe_Name = $detail['recipe_Name'];
$reviewResult = $recipe -> getReview($recipe_ID);

$loader = new \Twig\Loader\FilesystemLoader("templates");
$twig = new Twig\Environment($loader, ["cache" => false]);


echo $twig -> render(
  "detail.twig",[
  "page_title" => "MyRecipeDetail",
  "recipe_Name" => "TextReview $recipe_Name",
  "recipe" => $detail,
  "reviewResult" => $reviewResult
])


?>
