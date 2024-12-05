import 'package:get/get.dart';
import '../models/cart_model.dart';

class CartController extends GetxController {
  var cartItems = <Product, int>{}.obs;

  int get itemCount => cartItems.length;

  double get totalAmount {
    double total = 0.0;
    cartItems.forEach((product, quantity) {
      total += product.price * quantity;
    });
    return total;
  }

  void addInitialProducts() {
    final productsToAdd = [
      Product(
        id: '1',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQGWxRVle1i9PlWX65HyhiuPn356UD1_9eQg&s',
        title: 'Google Pixel 7 Pro',
        price: 100.00,
      ),
      Product(
        id: '2',
        image: 'https://m.media-amazon.com/images/I/71sG5HtqNyL.jpg',
        title: 'Apple iPhone 13',
        price: 150.00,
      ),
      Product(
        id: '3',
        image:
            'https://images-cdn.ubuy.co.in/63f0b9b94cfa5a345b2eb6a2-samsung-galaxy-s22-ultra-s9080-5g.jpg',
        title: 'Samsung Galaxy S22',
        price: 200.00,
      ),
      Product(
        id: '4',
        image:
            'https://d2xamzlzrdbdbn.cloudfront.net/products/cd9d3e3d-33ee-4c5f-bd74-a746668fd061.jpg',
        title: 'OnePlus 10',
        price: 250.00,
      ),
      Product(
        id: '5',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ7YPO3I-2urEjOBREj23mN9VlPFSqJ-m0GA&s',
        title: 'Redmi Note 11',
        price: 300.00,
      ),
    ];

    for (var product in productsToAdd) {
      cartItems[product] = 1;
    }
  }

  void removeProduct(Product product) {
    cartItems.remove(product);
    update();
  }

  void decreaseQuantity(Product product) {
    if (cartItems.containsKey(product) && cartItems[product]! > 1) {
      cartItems[product] = cartItems[product]! - 1;
    } else {
      cartItems.remove(product);
    }
    update(); 
  }

  void increaseQuantity(Product product) {
    if (cartItems.containsKey(product)) {
      cartItems[product] = cartItems[product]! + 1;
    } else {
      cartItems[product] = 1;
    }
    update(); 
  }

  @override
  void onInit() {
    addInitialProducts();
    super.onInit();
  }
}
