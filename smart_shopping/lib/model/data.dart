class Product {
  String name;
  String image;

  Product(this.name, this.image);

  static List<Product> electronicList() {
    return [
      Product('Norway', 'images/a1.jpg'),
      Product('Sweden', 'images/a2.jpeg'),
      Product('Swizerland', 'images/a3.jpg'),
      Product('Japan', 'images/a4.jpg'),
      Product('Bangladesh', 'images/a5.jpg'),
      Product('Iceland', 'images/a6.jpg'),
      Product('India', 'images/a7.jpg'),
    ];
  }

  static List<Product> foodList() {
    return [
      Product('Norway', 'images/a1.jpg'),
      Product('Sweden', 'images/a2.jpeg'),
      Product('Swizerland', 'images/a3.jpg'),
      Product('Japan', 'images/a4.jpg'),
      Product('Bangladesh', 'images/a5.jpg'),
      Product('Iceland', 'images/a6.jpg'),
      Product('India', 'images/a7.jpg'),
    ];
  }

  static List<Product> clothList() {
    return [
      Product('Norway', 'images/a1.jpg'),
      Product('Sweden', 'images/a2.jpeg'),
      Product('Swizerland', 'images/a3.jpg'),
      Product('Japan', 'images/a4.jpg'),
      Product('Bangladesh', 'images/a5.jpg'),
      Product('Iceland', 'images/a6.jpg'),
      Product('India', 'images/a7.jpg'),
    ];
  }
}
