<?php
$item_id = $_GET['item_id'] ?? 1;
foreach ($product->getData() as $item) :
if ($item['product_id'] == $item_id) :
?>

<section id="product" class="py-3">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <img src="<?php echo $item['product_image'] ?? "./assets/products/1.png" ?>" alt="product" class="img-fluid">
            </div>
            <div class="col-sm-6 py-5">
                <h5 class="font-baloo font-size-20"><?php echo $item['product_name'] ?? "Unknown"; ?></h5>
                <small><?php echo $item['product_unit'] ?? "Unknown"; ?></small>
                <hr class="m-0">

                <!---    product price       -->
                <table class="my-3">
                    <tr class="font-baloo font-size-14">
                        <td> Price:</td>
                        <td class="font-size-20 text-danger"> ৳ <span><?php echo $item['product_price'] ?? 0; ?></span><small class="text-dark font-size-12">&nbsp;&nbsp;Per unit Price</small></td>
                    </tr>
                </table>
                <!---    !product price       -->

                <!--    #policy -->
                <div id="policy">
                    <div class="d-flex">
                        <div class="return text-center mr-5">
                            <div class="font-size-20 my-2 color-second">
                                <span class="fa fa-credit-card border p-3 rounded-pill"></span>

                            </div>
                            <p class="font-rale font-size-12">Cash On <br>Delivery</p>
                        </div>
                        <div class="return text-center mr-5">
                            <div class="font-size-20 my-2 color-second">
                                <span class="fa fa-truck  border p-3 rounded-pill"></span>
                            </div>
                            <p class="font-rale font-size-12">Same Day <br>Delivery</p>
                        </div>

                    </div>
                </div>
                <!--    !policy -->
                <hr>


                <div class="row">
                    <div class="col-12">
                        <!-- product qty section -->
                        <div class="qty d-flex">
                            <h6 class="font-baloo mt-1">Quantity</h6>
                            <div class="px-4 d-flex font-rale">
                                <button class="qty-up border bg-light" data-id="pro1"><i class="fa fa-plus-square"></i></button>
                                <input type="text" data-id="pro1" class="qty_input border px-2 w-50 bg-light" disabled value="1" placeholder="1">
                                <button data-id="pro1" class="qty-down border bg-light"><i class="fa fa-minus-square"></i></button>
                            </div>
                        </div>
                        <!-- !product qty section -->
                    </div>
                    <div class="col-sm-9">
                        <div class="form-row mt-3 pt-4 font-size-16 font-baloo">
                            <div class="col">
                                <button type="submit" class="btn btn-info form-control">Save for later</button>
                            </div>
                            <div class="col">
                                <button type="submit" class="btn btn-warning form-control">Add to Cart</button>
                            </div>
                        </div>
                    </div>


                </div>
            </div>

            <div class="col-12 pt-3">
                <h6 class="font-rubik">Product Description</h6>
                <hr>
                <p class="font-rale font-size-14"><p><?php echo $item['product_description'] ?? ''; ?></p>
            </div>

</section>

    <!--   !product  -->
<?php
endif;
endforeach;
?>