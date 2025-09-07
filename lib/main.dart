// lib/main.dart
import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/signup_page.dart';
import 'pages/tourist_home.dart';
import 'pages/seller_home.dart';
import 'models/product.dart';
import 'services/product_service.dart';

void main() {
  ProductService().initializeMockData();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Egypt Souvenir App',
      theme: ThemeData(primarySwatch: Colors.teal),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/tourist': (context) => TouristPage(),
        '/seller': (context) => SellerPage(),
      },
    );
  }
}

// lib/models/product.dart
class Product {
  final String id;
  final String name;
  final String seller;
  final String region;
  final String category;
  final String description;
  final double price;

  Product({
    required this.id,
    required this.name,
    required this.seller,
    required this.region,
    required this.category,
    required this.description,
    required this.price,
    required String imagePath,
  });

  String? get imagePath => null;
}
