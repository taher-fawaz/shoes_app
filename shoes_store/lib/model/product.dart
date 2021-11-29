class Product {
  final String? title;
  final String? imageUrl;
  final double? price;
  const Product(this.title, this.imageUrl, this.price);
}

class Products {
  List<Product> products = const [
    Product("'Nike ISPA Air \nMax 720", "assets/images/nike_p.png", 185),
    Product("'Nike Max", "assets/images/nike_p.png", 145),
    Product("'Nike Air", "assets/images/nike_p.png", 100)
  ];
}

class SmallProducts {
  List<Product> products = const [
    Product("'Nike ISPA Air \nMax 720", "assets/images/nike_red.png", 185),
    Product("'Nike Max", "assets/images/nike_color.png", 145),
    Product("'Nike Air", "assets/images/nike_red.png", 100),
    Product("'Nike ISPA Air \nMax 720", "assets/images/nike_red.png", 185),
    Product("'Nike Max", "assets/images/nike_color.png", 145),
    Product("'Nike Air", "assets/images/nike_red.png", 100),
    Product("'Nike ISPA Air \nMax 720", "assets/images/nike_red.png", 185),
    Product("'Nike Max", "assets/images/nike_color.png", 145),
    Product("'Nike Air", "assets/images/nike_red.png", 100),
    Product("'Nike ISPA Air \nMax 720", "assets/images/nike_red.png", 185),
    Product("'Nike Max", "assets/images/nike_color.png", 145),
    Product("'Nike Air", "assets/images/nike_red.png", 100),
    Product("'Nike Air", "assets/images/nike_red.png", 100)
  ];
}
