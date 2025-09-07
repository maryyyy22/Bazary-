import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SellerPage extends StatefulWidget {
  @override
  _SellerPageState createState() => _SellerPageState();
}

class _SellerPageState extends State<SellerPage> {
  final TextEditingController _itemName = TextEditingController();
  final TextEditingController _itemPrice = TextEditingController();
  final TextEditingController _itemLocation = TextEditingController();
  final TextEditingController _itemDescription = TextEditingController();

  File? _selectedImage;

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _selectedImage = File(image.path);
      });
    }
  }

  void _submitItem() {
    // TODO: Save item for admin approval
    print("Name: ${_itemName.text}");
    print("Price: ${_itemPrice.text}");
    print("Location: ${_itemLocation.text}");
    print("Description: ${_itemDescription.text}");
    print("Image: ${_selectedImage?.path}");
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('Item submitted for approval')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seller Dashboard'),
        backgroundColor: Color.fromARGB(255, 138, 89, 11),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Souvenir Item (awaiting admin approval)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _itemName,
              decoration: InputDecoration(labelText: 'Item Name'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _itemPrice,
              decoration: InputDecoration(labelText: 'Item Price (EGP)'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            TextField(
              controller: _itemLocation,
              decoration: InputDecoration(labelText: 'Item Location'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _itemDescription,
              decoration: InputDecoration(labelText: 'Item Description'),
              maxLines: 3,
            ),
            SizedBox(height: 20),
            Text('Upload Image', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            GestureDetector(
              onTap: _pickImage,
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  color: Colors.grey[200],
                ),
                child: _selectedImage != null
                    ? Image.file(_selectedImage!, fit: BoxFit.cover)
                    : Icon(
                        Icons.add_a_photo,
                        size: 60,
                        color: Colors.grey[600],
                      ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitItem,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 138, 89, 11),
                padding: EdgeInsets.symmetric(vertical: 15),
              ),
              child: Text('Submit for Approval'),
            ),
          ],
        ),
      ),
    );
  }
}
