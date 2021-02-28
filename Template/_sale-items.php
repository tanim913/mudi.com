<?php
    shuffle($product_shuffle);
    $product_shuffle =  $product->getData();

?>
<!-- Sale items -->
<section id="sale-items">
    <div class="container py-5">
        <h4 class="font-rubik font-size-20">Sale Items</h4>
        <hr>
        <!-- owl carousel -->
        <div class="owl-carousel owl-theme">
            <?php foreach ($product_shuffle as $item) { ?>
                <div class="item py-2">
                    <div class="product font-rale">
                        <a href="<?php printf('%s?item_id=%s', 'product.php',  $item['product_id']); ?>"><img src="<?php echo $item['product_image'] ?? "./assets/products/1.png"; ?>" alt="product1" class="img-fluid"></a>
                        <div class="text-center">
                            <h6><?php echo  $item['product_name'] ?? "Unknown";  ?></h6>

                            <div class="price py-2">
                                <span>৳<?php echo $item['product_price'] ?? '0' ; ?></span>
                            </div>
                            <form method="post">
                                <input type="hidden" name="item_id" value="<?php echo $item['product_id'] ?? '1'; ?>">
                                <input type="hidden" name="user_id" value="<?php echo 1; ?>">
                                <?php
                                //                                if (in_array($item['product_id'], $Cart->getCartId($product->getData('cart')) ?? [])){
                                //                                    echo '<button type="submit" disabled class="btn btn-success font-size-12">In the Cart</button>';
                                //                                }else{
                                echo '<button type="submit" name="top_sale_submit" class="btn btn-warning font-size-12">Add to Cart</button>';
                                //                                }
                                ?>

                            </form>
                        </div>
                    </div>
                </div>
            <?php } // closing foreach function ?>
        </div>
        <!-- !owl carousel -->
    </div>
</section>
<!--!Sale items -->