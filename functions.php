<?php
// require functions.php file
require ('database/DBController.php');

// require Product Class
require ('database/Product.php');

//DBController object
$db = new DBController();

// Product object
$product = new Product($db);
$product_shuffle = $product->getData();


//print_r($product->getData());

