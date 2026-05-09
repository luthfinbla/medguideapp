import 'package:flutter/material.dart';
import 'package:medguideapp/colors.dart';
import 'package:medguideapp/screens/categories_subscreen/eyes_subscreen/katarak_subscreen/cendo.dart';
import 'package:medguideapp/screens/categories_subscreen/eyes_subscreen/katarak_subscreen/matovit.dart';
import 'package:medguideapp/screens/categories_subscreen/eyes_subscreen/katarak_subscreen/naturs.dart';
import 'package:medguideapp/screens/categories_subscreen/eyes_subscreen/katarak_subscreen/wellness.dart';

class Katarak extends StatefulWidget {

  List<String> catNames = [
    "Cendo Catarlent",
    "Wellness Ocucare",
    "Matovit Fifty",
    "Naturs Health",
  ];

  List<Image> catIcon = [
    Image.asset('assets/images/cendo.png'),
    Image.asset('assets/images/wellness.png'),
    Image.asset('assets/images/matovit.png'),
    Image.asset('assets/images/natur.png'),
  ];

  List<Widget> catScreens = [
    Cendo(),
    Matovit(),
    Naturs(),
    Wellness()
  ];

  Katarak({super.key});

  @override
  State<Katarak> createState() => _KatarakState();
}

class _KatarakState extends State<Katarak> {

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
          // heading
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
          // search bar
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
          
          // item
          Expanded(
            child: ListView.builder(
              itemCount: widget.catScreens.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    title: Text(widget.catNames[index]),
                    leading: widget.catIcon[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => widget.catScreens[index],
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
