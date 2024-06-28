

class Product {
  final String id;
  final String image;
  final String title;
  final double price;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'image': image,
      'title': title,
      'price': price,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'],
      image: map['image'],
      title: map['title'],
      price: map['price'],
    );
  }

  @override
  String toString() {
    return 'Product{id: $id, image: $image, title: $title, price: $price}';
  }
}
