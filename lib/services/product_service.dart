import 'package:your_project_name/main.dart';

import '../models/product.dart';

class ProductService {
  static final List<Product> _products = [];

  void initializeMockData() {
    _products.addAll([
      Product(
        id: '1',
        name: 'Papyrus Scroll',
        seller: 'AntiqueBazaar',
        region: 'Cairo',
        category: 'Art',
        description: 'Handmade ancient-style papyrus scroll.',
        price: 150.0,
        imagePath: 'assests/papy.jpg',
      ),
      Product(
        id: '2',
        name: 'Miniature Pyramid',
        seller: 'PyramidSouvenirs',
        region: 'Giza',
        category: 'Sculpture',
        description: 'Small pyramid carved from alabaster stone.',
        price: 80.0,
        imagePath: 'assests/pym.jpg',
      ),
      Product(
        id: '3',
        name: 'Egyptian Cotton Scarf',
        seller: 'CottonCrafts',
        region: 'Alexandria',
        category: 'Textile',
        description: 'Soft scarf made from 100% Egyptian cotton.',
        price: 120.0,
        imagePath: 'assests/scraf.jpg',
      ),
      Product(
        id: '4',
        name: 'Copper Plate',
        seller: 'CairoMetalWorks',
        region: 'Cairo',
        category: 'Decor',
        description: 'Engraved decorative plate made from pure copper.',
        price: 200.0,
        imagePath: 'assests/cupper plte.jpg',
      ),
      Product(
        id: '5',
        name: 'Khayamiya Tapestry',
        seller: 'OldSoukDecor',
        region: 'Luxor',
        category: 'Textile',
        description: 'Traditional hand-stitched wall hanging.',
        price: 300.0,
        imagePath: 'assests/tapestr.jpg',
      ),
      Product(
        id: '6',
        name: 'Nubian Jewelry Set',
        seller: 'NubaTreasures',
        region: 'Aswan',
        category: 'Jewelry',
        description: 'Colorful handmade Nubian necklace and earrings.',
        price: 220.0,
        imagePath: 'assests/nubian.jpg',
      ),
      Product(
        id: '7',
        name: 'Camel Bone Chess Set',
        seller: 'DesertGames',
        region: 'Siwa',
        category: 'Games',
        description: 'Intricate chess set carved from camel bone.',
        price: 450.0,
        imagePath: 'assests/chess.jpg',
      ),
      Product(
        id: '8',
        name: 'Date Syrup Bottle',
        seller: 'OasisDelights',
        region: 'Fayoum',
        category: 'Food',
        description: 'Natural syrup made from Fayoum dates.',
        price: 60.0,
        imagePath: 'assests/date.jpg',
      ),
    ]);
  }

  List<Product> getAllProducts() => _products;
  List<Product> getProductsByRegion(String region) =>
      _products.where((p) => p.region == region).toList();
  List<Product> getProductsByCategory(String category) =>
      _products.where((p) => p.category == category).toList();
}
