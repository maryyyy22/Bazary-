import 'package:flutter/material.dart';

class TouristPage extends StatelessWidget {
  final List<Map<String, dynamic>> touristItems = [
    {
      'name': 'Papyrus Scroll',
      'description': 'Handmade ancient-style papyrus',
      'price': 150,
      'region': 'Cairo',
      'image': 'assets/papy.jpg',
    },
    {
      'name': 'Miniature Pyramid',
      'description': 'Small pyramid carved from alabaster.',
      'price': 80,
      'region': 'Giza',
      'image': 'assets/pym.jpg',
    },
    {
      'name': 'Egyptian Cotton Scarf',
      'description': 'Soft scarf made from 100% Egyptian cotton.',
      'price': 120,
      'region': 'Alexandria',
      'image': 'assets/scraf.jpg',
    },
    {
      'name': 'Khayamiya Tent Fabric',
      'description': 'Colorful traditional hand-stitched fabric.',
      'price': 200,
      'region': 'Old Cairo',
      'image': 'assets/tapestr.jpg',
    },
    {
      'name': 'Cartouche Necklace',
      'description': 'Necklace with your name in hieroglyphs.',
      'price': 250,
      'region': 'Luxor',
      'image': 'assets/nubian.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tourist Souvenirs'),
        backgroundColor: Color.fromARGB(255, 138, 89, 11),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: touristItems.length,
        itemBuilder: (context, index) {
          final item = touristItems[index];

          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 6,
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item['name'],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(item['description']),
                  SizedBox(height: 8),
                  Text('Region: ${item['region']}'),
                  SizedBox(height: 8),
                  Text('Price: ${item['price']} EGP'),
                  SizedBox(height: 12),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image(
                      image: AssetImage(item['image']),
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
