import 'package:flutter/material.dart';
import 'package:medguideapp/colors.dart';
import 'package:medguideapp/screens/categories_subscreen/dental_subscreen/obat_lubanggigi/aloclair.dart';
import 'package:medguideapp/screens/categories_subscreen/dental_subscreen/obat_lubanggigi/betadine.dart';
import 'package:medguideapp/screens/categories_subscreen/dental_subscreen/obat_lubanggigi/sanmol.dart';

class Lubanggigi extends StatefulWidget {
  Lubanggigi({Key? key}) : super(key: key);

  @override
  State<Lubanggigi> createState() => _LubanggigiState();
}

class _LubanggigiState extends State<Lubanggigi> {
  List<String> catNames = [
    "Betadine Mouthwash and Gargle 100 ml",
    "Aloclair Plus Mouthwash 60 ml",
    "Sanmol",
  ];

  List<Image> catIcon = [
    Image.asset('assets/images/betadine.jpeg'),
    Image.asset('assets/images/aloclair.jpeg'),
    Image.asset('assets/images/sanmol.jpeg'),
  ];

  List<Widget> catScreens = [
    Betadine(),
    Aloclair(),
    Sanmol(),
  ];

  List<bool> isFavorite = [false, false, false]; // Track favorite status

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey,
        ),
        title: Text(
          'Saran Obat dari kami',
          style: TextStyle(color: bcolor),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: pcolor,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Saran Obat dari kami',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: wcolor,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/images/dokter.png',
                  height: 120,
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search here..',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Expanded(
            child: ListView.builder(
              itemCount: catScreens.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    title: Text(catNames[index]),
                    leading: catIcon[index],
                    trailing: IconButton(
                      icon: Icon(
                        isFavorite[index] ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite[index] ? Colors.red : null,
                      ),
                      onPressed: () {
                        setState(() {
                          isFavorite[index] = !isFavorite[index];
                        });
                      },
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => catScreens[index],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}