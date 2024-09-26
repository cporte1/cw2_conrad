import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String recipeName;
  final String recipeDetails;
  final String recipeAttribution;

  const DetailsPage({super.key, required this.recipeName, required this.recipeDetails, required this.recipeAttribution});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Recipe List'),
        ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Recipe Details',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            recipeDetails,
            style: const TextStyle(fontSize: 16),
          )
        ]
      )
    ),
    );
  }
}
