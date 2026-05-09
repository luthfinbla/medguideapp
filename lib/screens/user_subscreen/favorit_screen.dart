import 'package:flutter/material.dart';

class MyFavorite extends StatelessWidget {
  final List<String> favoriteMedicines = [
    "Betadine Mouthwash and Gargle 100 ml",
    "Aloclair Plus Mouthwash 60 ml",
    "Sanmol",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Favorites"),
      ),
      body: ListView.builder(
        itemCount: favoriteMedicines.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(favoriteMedicines[index]),
            // Implement navigation logic here if needed
          );
        },
      ),
    );
  }
}