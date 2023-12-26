class ProductDetail {
  final String id;
  final String name;
  final String description;
  final double price;
  final List<String> imageUrl;
  final List<String> categories;
  final List<String> size;
  final String material;
  final bool isFavorite; // Track favorite status

  const ProductDetail({
    required this.id,
    required this.name,
    this.description = '',
    required this.price,
    required this.imageUrl,
    required this.categories,
    required this.size,
    required this.material,
    this.isFavorite = false,
  });

  // Helper method to toggle favorite status
  ProductDetail copyWith({bool? isFavorite}) {
    return ProductDetail(
      id: id,
      name: name,
      description: description,
      price: price,
      imageUrl: imageUrl,
      categories: categories,
      isFavorite: isFavorite ?? this.isFavorite,
      size: size,
      material: material,
    );
  }
}
