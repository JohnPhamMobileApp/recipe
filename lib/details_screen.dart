import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String details;
  final String imageUrl;

  const DetailsScreen({Key? key, required this.details, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe List DETAILS SCREEN'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                imageUrl,
                width: 200, 
                height: 200, 
                fit: BoxFit.cover, // Adjusts the image to fit within the defined width and height
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                details,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
