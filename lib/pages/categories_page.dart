import 'package:flutter/material.dart';

// Exemples de pages pour chaque critère de sélection
class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sélectionner une Catégorie')),
      body: Center(child: Text('Page des Catégories')),
    );
  }
}