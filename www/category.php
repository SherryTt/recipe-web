<?php
require('vendor/autoload.php');

use textreview\Category;


$category = new Category();

$cid = $_GET['cid'];
$cname=$_GET['cname'];

$categoryResult = $category  -> getAllCategory($cid,$cname);


$loader = new \Twig\Loader\FilesystemLoader("templates");

$twig = new Twig\Environment($loader,["cache" => false]);


$total = count($categoryResult);

echo $twig->render(
    'category.twig',['total'=>$total, "categoryResult"=>$categoryResult,"cname"=>$cname]);


?>