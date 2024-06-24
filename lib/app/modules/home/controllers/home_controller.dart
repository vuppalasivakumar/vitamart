import 'package:get/get.dart';

class HomeController extends GetxController {
  List<Map<String, String>> electronicsDetails = [
    {
      "prdUrl":
          "https://www.livemint.com/lm-img/img/2023/10/09/600x338/top_mobiles_1696843994490_1696844009797.jpg",
      "prdName": "Oneplus",
      "prdPrice": "\u{20B9}${36448}"
    },
    {
      "prdUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjWFDthQt4osExG3cA4F7bIkcrRxUnzPKMCA&s",
      "prdName": "Dell Laptop",
      "prdPrice": "\u{20B9}${56299}"
    },
  ].obs;
  List<Map<String, String>> fashionDetails = [
    {
      "prdUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNBEd_N0JMalYRXWWzGrR3GzHyXqyu_A9Dkg&s",
      "prdName": "Womens Clothing",
      "prdPrice": "\u{20B9}${599}",
    },
    {
      "prdUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgnP11pzE3Hc_BnRJaRocI2h2QYwVVVRAEbw&s",
      "prdName": "Mens Clothing",
      "prdPrice": "\u{20B9}${399}",
    }
  ].obs;
  List<Map<String, String>> groceryDetails = [
    {
      "prdUrl":
          "https://m.media-amazon.com/images/I/61rUibXYkTL._AC_UF894,1000_QL80_.jpg",
      "prdName": "Moong Dal",
      "prdPrice": "\u{20B9}${199}",
    },
    {
      "prdUrl":
          "https://m.media-amazon.com/images/I/51WUcZfc6BL._AC_.jpg",
      "prdName": "Cashew",
      "prdPrice": "\u{20B9}${399}",
    }
  ].obs;
}
