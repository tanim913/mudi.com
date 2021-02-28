<?php
$item_category = $_GET['item_category'] ;
$category_product= $product->getData();
?>

<section id="catagorised-product">

    <hr class="mt-5">
    <div class="container">
        <h4 class="font-rubik font-size-24 text-center pb-2"><?php echo $item_category ?></h4>


        <div class="grid">
            <?php
            foreach ($category_product as $item):
                if($item['product_category'] == $item_category) :
                    ?>

                    <div class="grid-item border">
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
                <?php
                endif;
            endforeach;
            ?>
        </div>
    </div>
    <hr class="mb-5">
</section>
<!-- !Special Price -->


