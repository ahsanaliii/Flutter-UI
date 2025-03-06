import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:getxshoppingcart/controller/cart_controller.dart';
import 'package:getxshoppingcart/controller/shopping_controller.dart';

class ShoppingPage extends StatelessWidget {
  // ShoppingPage({super.key});

  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SafeArea(
          child: Container(
            height: mediaQuery.height,
            width: mediaQuery.width,
            decoration: BoxDecoration(color: Colors.teal),
            child: Column(
              children: [
                Expanded(
                  child: GetX<ShoppingController>(
                    builder: (controller) {
                      return ListView.builder(
                        itemCount: controller.products.length,
                        itemBuilder: (context, index) {
                          return Card(
                            margin: const EdgeInsets.all(12),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${controller.products[index].productName}',
                                            style: TextStyle(fontSize: 24),
                                          ),
                                          Text(
                                            '${controller.products[index].productDescription}',
                                          ),
                                        ],
                                      ),
                                      Text(
                                        '\$${controller.products[index].price}',
                                        style: TextStyle(fontSize: 24),
                                      ),
                                    ],
                                  ),
                                  OutlinedButton(
                                    onPressed: () {
                                      cartController.addToCart(
                                        controller.products[index],
                                      );
                                    },
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.teal,
                                    ),
                                    // style: ButtonStyle(),
                                    child: Text(
                                      "Add to Cart",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  // ElevatedButton(
                                  //   // onPressed: () {
                                  //   //   cartController
                                  //   //       .addToCart(controller.products[index]);
                                  //   // },
                                  //   color: Colors.blue,
                                  //   textColor: Colors.white,
                                  //   child: Text('Add to Cart'),
                                  // )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                GetX<CartController>(
                  builder: (controller) {
                    return Text(
                      "Total Amount: \$  ${controller.totalPrice} ",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    );
                  },
                ),
                SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.add_shopping_cart_rounded, color: Colors.black),
        label: GetX<CartController>(
          builder: (controller) {
            return Text(
              controller.count.toString(),
              style: TextStyle(fontSize: 24, color: Colors.black),
            );
          },
        ),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
