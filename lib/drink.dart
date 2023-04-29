class Drink {
  final String name;
  final String imageUrl;
  final double price;
  bool isFavorite;

  Drink({
    required this.name,
    required this.imageUrl,
    required this.price,
    this.isFavorite = false,

  });

  factory Drink.fromJson(Map<String, dynamic> json) {
    return Drink(
      name: json['name'],
      imageUrl: json['image_url'],
      price: json['price'].toDouble(),
    );
  }
}
