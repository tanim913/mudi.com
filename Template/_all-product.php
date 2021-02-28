<!-- Special Price -->
<?php
$type = array_map(function ($pro){ return $pro['product_type']; }, $product_shuffle);
$unique = array_unique($type);
sort($unique);
shuffle($product_shuffle);

// request method post
//if($_SERVER['REQUEST_METHOD'] == "POST"){
//    if (isset($_POST['special_price_submit'])){
//        // call method addToCart
//        $Cart->addToCart($_POST['user_id'], $_POST['item_id']);
//    }
//}

//$in_cart = $Cart->getCartId($product->getData('cart'));

?>
<section id="catagorised-product">
    <hr class="mt-5">
    <div class="container">
        <h4 class="font-rubik font-size-20">Products</h4>
        <div id="filters" class="button-group text-right font-baloo font-size-16">
            <button class="btn is-checked" data-filter="*">All Products</button>
            <button class="btn" data-filter=".Food">Food</button>
            <button class="btn" data-filter=".Home">Home and cleaning </button>
            <button class="btn" data-filter=".Beauty">Beauty and health  </button>
        </div>

        <div class="grid">
		
            <?php array_map(function ($item) use($in_cart){ ?>
                <div class="grid-item border <?php echo $item['product_type'] ?? "Type" ; ?>">
                    <div class="item py-2" style="width: 200px;">
                        <div class="product font-rale">
                            <a href="<?php printf('%s?item_id=%s', 'product.php',  $item['product_id']); ?>"><img src="<?php echo $item['product_image'] ?? "./assets/products/1.png"; ?>" alt="product1" class="img-fluid"></a>
                            <div class="text-center">
                                <h6><?php echo $item['product_name'] ?? "Unknown"; ?></h6>

                                <div class="price py-2">
                                    <span>৳<?php echo $item['product_price'] ?? 0 ?></span>
                                </div>
                                <form method="post">
                                    <input type="hidden" name="prodcut_id" value="<?php echo $item['product_id'] ?? '1'; ?>">
                                    <input type="hidden" name="user_id" value="<?php echo 1; ?>">
                                    <?php
                                    if (in_array($item['product_id'], $in_cart ?? [])){
                                        echo '<button type="submit" disabled class="btn btn-success font-size-12">In the Cart</button>';
                                    }else{
                                        echo '<button type="submit" name="top_sale_submit" class="btn btn-warning font-size-12">Add to Cart</button>';
                                    }
                                    ?>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            <?php }, $product_shuffle) ?>

        </div>
    </div>
    <hr class="mb-5">
</section>
<!-- !Special Price -->
