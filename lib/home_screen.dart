import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  
  final List<Map<String, String>> recipes = [
    {
      'name': 'Italian Pasta',
      'details': 'Ingredients: Pasta, Sauce, Cheese\nInstructions: Cook 1 lb of boiled pasta, add 1 cup of sauce.',
      'image': 'assets/images/italian_pasta.jpg', // Add image path
    },
    {
      'name': 'Honey Garlic Chicken',
      'details': 'Ingredients: Chicken breast, honey, garlic\nInstructions: Heat olive oil in skillet, season chicken with honey and garlic, and add chicken to skillet.',
      'image': 'assets/images/honey_garlic_chicken.jpg', // Add image path
    },
    {
      'name': 'Pizza',
      'details': 'Ingredients: Dough, Sauce, Cheese\nInstructions: Add sauce on 16-inch dough, add cheese, add toppings, and bake for 15 min.',
      'image': 'assets/images/pizza.jpg', // Add image path
    },
  ];

  
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe List HOME SCREEN'),
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.black, // Change text color 
      ),
      body: Container(
        color: Colors.blue[900], // Set background color 
        child: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                recipes[index]['name']!,
                style: const TextStyle(color: Colors.white), // Change text color 
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      details: recipes[index]['details']!,
                      imageUrl: recipes[index]['image']!, // Pass the image path
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
