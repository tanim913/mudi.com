<section id="cart" class="py-3">
    <div class="container-fluid w-75">
        <h5 class="font-baloo font-size-20">Shopping Cart</h5>

        <!--  shopping cart items   -->
        <div class="row">
            <div class="col-sm-9">
                <!-- cart item -->
                <div class="row border-top py-3 mt-3">
                    <div class="col-sm-2">
                        <a href="#"><img src="./assets/products/beauty and health/food supliments/kitkat.jpg" alt="product48" class="img-fluid"></a>
                    </div>
                    <div class="col-sm-8">
                        <h5 class="font-baloo font-size-20">KitKat</h5>
                        <small>4 fingers</small>

                        <!-- product qty -->
                        <div class="qty d-flex pt-2">
                            <div class="d-flex font-rale w-25">
                                <button class="qty-up border bg-light" data-id="pro1"><i class="fa fa-plus-square"></i></button>
                                <input type="text" data-id="pro1" class="qty_input border px-2 w-100 bg-light" disabled value="1" placeholder="1">
                                <button data-id="pro1" class="qty-down border bg-light"><i class="fa fa-minus-square"></i></button>
                            </div>
                            <button type="submit" class="btn font-baloo text-danger px-3 border-right">Delete</button>
                            <button type="submit" class="btn font-baloo text-danger">Save for Later</button>
                        </div>
                        <!-- !product qty -->

                    </div>

                    <div class="col-sm-2 text-right">
                        <div class="font-size-20 text-danger font-baloo">
                            ৳ <span class="product_price">152</span>
                        </div>
                    </div>
                </div>
                <!-- !cart item -->
                <!-- cart item -->
                <div class="row border-top py-3 mt-3">
                    <div class="col-sm-2">
                        <a href="#"><img src="./assets/products/beauty and health/food supliments/dairymilk.jpg" alt="product46" class="img-fluid"></a>
                    </div>
                    <div class="col-sm-8">
                        <h5 class="font-baloo font-size-20">Dairy Milk</h5>
                        <small>200g</small>

                        <!-- product qty -->
                        <div class="qty d-flex pt-2">
                            <div class="d-flex font-rale w-25">
                                <button class="qty-up border bg-light" data-id="pro2"><i class="fa fa-plus-square"></i></button>
                                <input type="text" data-id="pro2" class="qty_input border px-2 w-100 bg-light" disabled value="1" placeholder="1">
                                <button data-id="pro2" class="qty-down border bg-light"><i class="fa fa-minus-square"></i></button>
                            </div>
                            <button type="submit" class="btn font-baloo text-danger px-3 border-right">Delete</button>
                            <button type="submit" class="btn font-baloo text-danger">Save for Later</button>
                        </div>
                        <!-- !product qty -->

                    </div>

                    <div class="col-sm-2 text-right">
                        <div class="font-size-20 text-danger font-baloo">
                            ৳ <span class="product_price">120</span>
                        </div>
                    </div>
                </div>
                <!-- !cart item -->
            </div>
            <!-- subtotal section-->
            <div class="col-sm-3">
                <div class="sub-total border text-center mt-2">
                    <h6 class="font-size-12 font-rale text-success py-3"><i class="fas fa-check"></i> Your order is eligible for FREE Delivery.</h6>
                    <div class="border-top py-4">
                        <h5 class="font-baloo font-size-20">Subtotal (2 item):&nbsp; <span class="text-danger">৳<span class="text-danger" id="deal-price">152.0</span> </span> </h5>
                        <a href="view-order-details.php">
                            <button type="submit" class="btn btn-warning mt-3">Proceed to Buy</button>
                        </a>

                    </div>
                </div>
            </div>
            <!-- !subtotal section-->
        </div>
        <!--  !shopping cart items   -->
    </div>
</section>