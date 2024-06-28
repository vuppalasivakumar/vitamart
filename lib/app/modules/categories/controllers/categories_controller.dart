import 'package:get/get.dart';

class CategoriesController extends GetxController {
 
  var  categories =<Map<String, String>> [
    {"catName":"Grocery",
      "catUrl":"assets/grocery1.png",
    },
    {"catName":"Electronics",
      "catUrl":"assets/electronics.png",
    },
    {"catName":"Fashion",
      "catUrl":"assets/fashion1.png",
    },
    {"catName":"Furniture",
      "catUrl":"assets/furniture.png",
    },
   
  ].obs;
  
  var currentIndex = 0.obs;

  var searchQuery = ''.obs;

  var fetchgroceyImageurls = <Map<String, String>>[
    {
      'name': 'Tata Dal',
      'price': '150',
      'imageurl':
          'https://www.tatanutrikorner.com/cdn/shop/products/Tata-Sampann-Moong-Dal-1kg-_FOP_-with-Sanjeev-kapoor.png?v=1660201553',
       'rating': '4.0',
      'discount': '40',   
    },
    {
      'name': 'Safola Oil 1L',
      'price': '200',
      'imageurl':
          'https://www.bigbasket.com/media/uploads/p/l/147491_9-saffola-gold-refined-cooking-oil-blended-rice-bran-sunflower-oil-helps-keeps-heart-healthy.jpg',
       'rating': '3.8',
      'discount': '35',   
    },
    {
      'name': 'Freedom Oil',
      'price': '115',
      'imageurl':
          'https://www.bigbasket.com/media/uploads/p/xxl/271035_4-freedom-refined-oil-sunflower.jpg',
       'rating': '4.0',
      'discount': '10',   
    },
    {
      'name': 'Basmati Rice 1Kg',
      'price': '135',
      'imageurl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRNJoxUGVW2Lv4r5XcUJxZVJXUiNt5wHCRQg&s',
       'rating': '4.2',
      'discount': '55',   
    },
    {
      'name': 'Ashirvaad 1Kg',
      'price': '65',
      'imageurl':
          'https://m.media-amazon.com/images/I/91o0m2iIpVL._AC_UF1000,1000_QL80_.jpg',
       'rating': '3.9',
      'discount': '22',   
    },
    {
      'name': 'Toor Dal 1kg',
      'price': '120',
      'imageurl':
          'https://www.jiomart.com/images/product/original/492851045/good-life-unpolished-toor-dal-1-kg-product-images-o492851045-p591219169-0-202301260517.jpg?im=Resize=(420,420)',
       'rating': '3.7',
      'discount': '15',   
    },
    {
      'name': 'Colgate 200 gram',
      'price': '50',
      'imageurl':
          'https://m.media-amazon.com/images/I/61nctAojOEL.jpg',
       'rating': '4.0',
      'discount': '10',   
    },
    {
      'name': 'Santoor Combopack',
      'price': '70',
      'imageurl':
          'https://m.media-amazon.com/images/I/71k+vczVn9L._AC_UF1000,1000_QL80_.jpg',
       'rating': '4.1',
      'discount': '28',   
    },
    {
      'name': 'Parchute oil',
      'price': '65',
      'imageurl':
          'https://m.media-amazon.com/images/I/71tbpnF559L._AC_UF1000,1000_QL80_.jpg',
       'rating': '3.6',
      'discount': '67',   
    },
    {
      'name': 'Maggi',
      'price': '30',
      'imageurl':
          'https://5.imimg.com/data5/SELLER/Default/2022/7/MU/PJ/SD/5742893/maggi-noodles.jpg',
      'rating': '3.8',
      'discount': '42%',
    },
  ].obs;

   var fetchelectronicsImageurls = <Map<String, String>>[
    {
      'name': 'Sony Bravia 55 inch',
      'price': '63000',
      'imageurl':
          'https://cdn1.smartprix.com/rx-iBAnqcZ9W-w420-h420/sony-bravia-x82l-55.jpg',
       'rating': '4.0',
      'discount': '40',   
    },
    {
      'name': 'IFB Washing Machine',
      'price': '20000',
      'imageurl':
          'https://media.croma.com/image/upload/v1701194883/Croma%20Assets/Large%20Appliances/Washers%20and%20Dryers/Images/230345_5_itdopk.png',
       'rating': '3.8',
      'discount': '35',   
    },
    {
      'name': 'Usha Fan',
      'price': '1299',
      'imageurl':
          'https://www.ushafans.com/sites/default/files/MicrosoftTeams-image.png',
       'rating': '4.0',
      'discount': '10',   
    },
    {
      'name': 'Vacuum Cleaner',
      'price': '11999',
      'imageurl':
          'https://shop.ttkprestige.com/media/catalog/product/4/2/42661-IMG1_1.jpg',
       'rating': '4.2',
      'discount': '55',   
    },
    {
      'name': 'Vivo',
      'price': '30000',
      'imageurl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4BNLqxGJby_Du0nd22ZdRp5hhsqJ0J09SQw&s',
       'rating': '3.9',
      'discount': '22',   
    },
    {
      'name': 'iPhone 15',
      'price': '50000',
      'imageurl':
          'https://www.91-img.com/gallery_images_uploads/0/e/0ebdcb79e919183de3974d52c5cbb60ae242bb4c.JPG?tr=h-550,w-0,c-at_max',
       'rating': '3.7',
      'discount': '15',   
    },
    {
      'name': 'fastrack Smartwatch',
      'price': '699',
      'imageurl':
          'https://www.deltastore.in/wp-content/uploads/2022/07/61IMRso0iL._SL1500_.jpg',
       'rating': '4.0',
      'discount': '10',   
    },
    {
      'name': 'FireBolt Smartwatch',
      'price': '1499',
      'imageurl':
          'https://www.fireboltt.com/cdn/shop/files/1_8.png?v=1704875687',
       'rating': '4.1',
      'discount': '28',   
    },
    {
      'name': 'Prestiage Coocker',
      'price': '3999',
      'imageurl':
          'https://m.media-amazon.com/images/I/51cTJ5WYtVL._AC_UF894,1000_QL80_.jpg',
       'rating': '3.6',
      'discount': '67',   
    },
    {
      'name': 'Samsung GalaxyUltra',
      'price': '75000',
      'imageurl':
          'https://img.etimg.com/photo/msid-98945112,imgsize-13860/SamsungGalaxyS23Ultra.jpg',
      'rating': '3.8',
      'discount': '42%',
    },
  ].obs;

  
   var fetchFashionImageurls = <Map<String, String>>[
    {
      'name': 'adidas',
      'price': '1499',
      'imageurl':
          'https://teetimeshop.in/cdn/shop/files/c2c9955c-e890-4c8e-8a08-a6a444aa8fe3.jpg?v=1702644878&width=1445',
       'rating': '4.0',
      'discount': '40',   
    },
    {
      'name': 'adidas combo',
      'price': '2000',
      'imageurl':
          'https://assets.ajio.com/medias/sys_master/root/20230427/JPVF/64497d9b42f9e729d751f23a/-473Wx593H-466098941-multi-MODEL.jpg',
       'rating': '3.8',
      'discount': '35',   
    },
    {
      'name': 'Kids Partywear',
      'price': '1299',
      'imageurl':
          'https://i.ebayimg.com/images/g/OWcAAOSw135h3NLR/s-l500.jpg',
       'rating': '4.0',
      'discount': '10',   
    },
    {
      'name': 'Kids(Boys) Dress',
      'price': '1999',
      'imageurl':
          'https://i.ebayimg.com/images/g/7YEAAOSwNqZgXK0S/s-l1600.jpg',
       'rating': '4.2',
      'discount': '55',   
    },
    {
      'name': 'Fancy Dress',
      'price': '3000',
      'imageurl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5fRxgF4BSZeNSeqdKnyXwg5xBsyFTtb2nZPCL9RUmbNVlAzX5fFPIjJEw0VeJBjImOQk&usqp=CAU',
       'rating': '3.9',
      'discount': '22',   
    },
    {
      'name': 'Couple Set',
      'price': '8000',
      'imageurl':
          'https://5.imimg.com/data5/SELLER/Default/2023/7/323164917/FP/FC/PV/15389059/whatsapp-image-2023-07-07-at-10-25-00-500x500.jpeg',
       'rating': '3.7',
      'discount': '15',   
    },
    {
      'name': 'Men Shirt',
      'price': '699',
      'imageurl':
          'https://uniformtailor.in/image/cache/catalog/data/shirts/personalized-executive-shirt/personalized-executive-royal-blue-office-shirt-670x760.png',
       'rating': '4.0',
      'discount': '10',   
    },
    {
      'name': 'Men Shirts Combo',
      'price': '14999',
      'imageurl':
          'https://m.media-amazon.com/images/I/71DBklVte9L._AC_UY1100_.jpg',
       'rating': '4.1',
      'discount': '28',   
    },
    {
      'name': 'Girl Dress',
      'price': '999',
      'imageurl':
          'https://www.dhresource.com/260x260/f2/albu/g8/M01/1A/5D/rBVaVF7pmLeASMDfAADIWpxGm10847.jpg',
       'rating': '3.6',
      'discount': '67',   
    },
   {
      'name': 'Girl Dress 10years',
      'price': '599',
      'imageurl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwWXlYCqmetUnpE1pB1qqAHlJoQGYLxpiw_g&s',
       'rating': '3.6',
      'discount': '67',   
    },
  ].obs;

  var fetchFurnitureImageurls = <Map<String, String>>[
    {
      'name': 'Sleephead Sofa',
      'price': '14999',
      'imageurl':
          'https://mysleepyhead.com/media/catalog/product/4/t/4thaug_2ndhalf5934_green.jpg',
       'rating': '4.0',
      'discount': '40',   
    },
    {
      'name': 'Recliner sofa',
      'price': '20000',
      'imageurl':
          'https://thesleepcompany.in/cdn/shop/files/6_12964d05-3c17-4b4b-8d07-a9d7aa9cd1a2.jpg?v=1715751285&width=1445',
       'rating': '3.8',
      'discount': '35',   
    },
    {
      'name': 'Living Room table',
      'price': '12999',
      'imageurl':
          'https://image.made-in-china.com/2f0j00cRAqMlBDZHoT/Modern-Style-Wooden-Melamine-Home-Use-Furniture-Combination-TV-Stand-Coffee-Table-Set.webp',
       'rating': '4.0',
      'discount': '10',   
    },
    {
      'name': 'Study&Laptop Table',
      'price': '3999',
      'imageurl':
          'https://demiwall.com/cdn/shop/products/35896_1_60270b52-da3d-469d-996a-98660ee9a59b.jpg?v=1675322653&width=1445',
       'rating': '4.2',
      'discount': '55',   
    },
    {
      'name': 'Plastic Chair',
      'price': '800',
      'imageurl':
          'https://cdn.moglix.com/p/h5xSDimcdckpC-xxlarge.jpg',
       'rating': '3.9',
      'discount': '22',   
    },
    {
      'name': 'Office Chair and Table',
      'price': '18000',
      'imageurl':
          'https://d24b2zgz3bcyj8.cloudfront.net/wp-content/uploads/2015/10/New-1-copy.jpg',
       'rating': '3.7',
      'discount': '15',   
    },
    {
      'name': 'Bed',
      'price': '30000',
      'imageurl':
          'https://www.casafurnishing.in/wp-content/uploads/2021/11/upholstered-bed-Sheesham-Wood-Double-bed-1.jpg',
       'rating': '4.0',
      'discount': '10',   
    },
    {
      'name': 'Kids Sofa',
      'price': '1499',
      'imageurl':
          'https://m.media-amazon.com/images/I/41w8vVNraCL._AC_UF894,1000_QL80_.jpg',
       'rating': '4.1',
      'discount': '28',   
    },
    {
      'name': 'Dining Table',
      'price': '10999',
      'imageurl':
          'https://ekbotefurniture.com/wp-content/uploads/2023/11/RECTANGULARGLASSDININGTABLESET.jpg',
       'rating': '3.6',
      'discount': '67',   
    },
   {
      'name': 'Tablemate',
      'price': '599',
      'imageurl':
          'https://i0.wp.com/tablemateproducts.in/wp-content/uploads/2021/06/footrest-tablemate-blUE-2.jpg?fit=1500%2C1500&ssl=1',
       'rating': '3.6',
      'discount': '67',   
    },
  ].obs;

   List<Map<String, String>> get filteredProducts {
    var products = currentIndex.value == 0
        ? fetchgroceyImageurls
        : currentIndex.value == 1
            ? fetchelectronicsImageurls
            : currentIndex.value == 2
                ? fetchFashionImageurls
                : fetchFurnitureImageurls;

    if (searchQuery.value.isEmpty) {
      return products;
    } else {
      return products
          .where((product) => product['name']
              ?.toLowerCase()
              .contains(searchQuery.value.toLowerCase()) ??
              false)
          .toList();
    }
  }

  void updateSearchQuery(String query) {
    searchQuery.value = query;
  }
}
