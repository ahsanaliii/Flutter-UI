import 'package:get/get.dart';
import 'package:getxshoppingcart/models/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;
  // ShoppingController({this.products});
  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productResult = <Product>[
      Product(
        id: 1,
        price: 30,
        productDescription: 'some description about product',
        productImage: 'abd',
        productName: 'FirstProd',
      ),
      Product(
        id: 2,
        price: 40,
        productDescription: 'some description about product',
        productImage: 'abd',
        productName: 'SecProd',
      ),
      Product(
        id: 3,
        price: 49.5,
        productDescription: 'some description about product',
        productImage: 'abd',
        productName: 'ThirdProd',
      ),
    ];
    products.value = productResult;
  }
}
