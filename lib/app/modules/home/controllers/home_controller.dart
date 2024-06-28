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
    {
      "prdUrl":
          "https://d2xamzlzrdbdbn.cloudfront.net/products/aa61c565-f8e7-4208-ad1e-7a40e98fa8b021170552.jpg",
      "prdName": "Apple iphone 13",
      "prdPrice": "\u{20B9}${80299}"
    },
    {
      "prdUrl":
          "https://m.media-amazon.com/images/I/31IhYwtLhPL._SX300_SY300_QL70_FMwebp_.jpg",
      "prdName": "Apple Watch SE",
      "prdPrice": "\u{20B9}${56299}"
    },
  ].obs;
  List<Map<String, String>> fashionDetails = [
    {
      "prdUrl":
          "https://media.istockphoto.com/id/935032524/photo/women-summer-dresses-on-display-at-camden-market.jpg?s=612x612&w=0&k=20&c=_L2DC3Fq4wST3v9fsonpJzARWpMibAVtWUkZXPrQALs=",
      "prdName": "Womens Clothing",
      "prdPrice": "\u{20B9}${599}",
    },
    {
      "prdUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQRJNL-NnOSx8WRiwkpEWdtjVlrAylfkHs4w&s",
      "prdName": "Mens Clothing",
      "prdPrice": "\u{20B9}${399}",
    },
    {
      "prdUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUm0JWgCUYmUpcljYZUQK0NIb_IOO-K3Uy8w&s",
      "prdName": "Womens Jeans",
      "prdPrice": "\u{20B9}${599}",
    },
    {
      "prdUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSalS1UNJqpnwcQDRrO4sPEplqggiepsNcEkA&s",
      "prdName": "Mens T-shirts",
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
    },
    {
      "prdUrl":
          "https://images-cdn.ubuy.co.in/633ff9b127ef7458500d5b75-torino-sugar-white-1-50lbs-bag.jpg",
      "prdName": "Sugar",
      "prdPrice": "\u{20B9}${199}",
    },
    {
      "prdUrl":
          "https://m.media-amazon.com/images/I/41wMdYdQSoL._SX300_SY300_QL70_FMwebp_.jpg",
      "prdName": "Dettol",
      "prdPrice": "\u{20B9}${399}",
    }
  ].obs;


  final List<Map<String, String>> menuItems = [
    {'title': 'Apple airpods', 'imageUrl': 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MME73?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1632861342000'},
    {
      'title': 'Summer Specials',
      'imageUrl': 'https://st3.depositphotos.com/10558200/35526/i/450/depositphotos_355269144-stock-photo-women-dresses-hanger-multi-colored.jpg'
    },
    {
      'title': 'Google Pixel',
      'imageUrl': 'https://images-cdn.ubuy.co.in/651e1cdf997a536aed735f24-google-pixel-8-pro-unlocked-android.jpg'
    },
    {'title': 'Apple iphone', 'imageUrl': 'https://etimg.etb2bimg.com/photo/103882737.cms'},
    {'title': 'Apple Watch Series 9', 'imageUrl': 'https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/MT2R3ref_VW_34FR+watch-case-41-aluminum-midnight-nc-s9_VW_34FR+watch-face-41-aluminum-midnight-s9_VW_34FR_WF_CO_GEO_IN?wid=5120&hei=3280&bgc=fafafa&trim=1&fmt=p-jpg&qlt=80&.v=a1lhTUlGb0tuQTJ6U1AwNHBZR1E2aDJXVW9BNEhuTURaNVlmRjZxRXZQeDlEbzMrd1Z5SUpEd0hiT0ZLRlZGNHRLZjRycnBXU2c0MjJCMU5KRkRyMEZIUUFScG5LYWVMWnpVRGZycGNlQXliaytyMkV2UXJqeE9wOUlGWnU0cEx6ZldGVmgrTDJwMnJaNDRZcStXWFNDVlR6NURVN0ROcWREZzhjcGtjS2g5Q3ZOaUNaY2IrbTM5T1Z4bUdQRFg3UUF1RnV1SFZiU3BpaTRPeWN1ekQzUFd2UlFiN1JlYkdVSHhoVUNvSGFVVnlVYm40U0NLRytsUWg4ZWszcHJwcA=='},
    {'title': 'samsung s23 ultra', 'imageUrl': 'https://rukminim2.flixcart.com/image/850/1000/xif0q/mobile/i/5/1/-original-imagzm8pvabtmeys.jpeg?q=20&crop=false'},
    {'title': 'Cashew', 'imageUrl': 'https://m.media-amazon.com/images/I/51WUcZfc6BL._AC_.jpg'},
    // Add more items as needed
  ].obs;
}
