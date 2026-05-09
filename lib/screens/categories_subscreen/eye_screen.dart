import 'package:flutter/material.dart';
import 'package:medguideapp/colors.dart';
import 'package:medguideapp/screens/categories_subscreen/eyes_subscreen/amblyopia.dart';
import 'package:medguideapp/screens/categories_subscreen/eyes_subscreen/butawarna.dart';
import 'package:medguideapp/screens/categories_subscreen/eyes_subscreen/glaukoma.dart';
import 'package:medguideapp/screens/categories_subscreen/eyes_subscreen/katarak.dart';

class EyeScreen extends StatefulWidget {
  final List<String> catNames = [
    "Amblyopia",
    "Buta Warna",
    "Katarak",
    "Glaukoma",
  ];

  final List<String> catIcons = [
    'assets/images/amblyopia.jpg',
    'assets/images/butawarna.jpg',
    'assets/images/katarak.png',
    'assets/images/glaukoma.png',
  ];

  final List<Widget> catScreens = [
    Amblyopia(),
    Butawarna(),
    Katarak(),
    Glaukoma(),
  ];

  EyeScreen({Key? key}) : super(key: key);

  @override
  State<EyeScreen> createState() => _EyeScreenState();
}

class _EyeScreenState extends State<EyeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eye Screen'),
      ),
      body: Material(
        color: wcolor,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.9,
                child: Image.asset(
                  'assets/images/eyeheader.png',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Eyes Disease',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: bcolor,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      ' Penyakit mata merupakan gangguan yang cukup banyak dialami. Terlebih lagi, ada macam-macam penyakit mata yang muncul akibat beragam faktor. Sebagian penyakit mata sebenarnya masih bisa disembuhkan dengan prosedur medis yang tepat. Namun, ada juga penyakit mata yang tidak bisa disembuhkan.',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: bcolor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              // Daftar kategori mata
              ListView.builder(
                shrinkWrap: true,
                itemCount: widget.catNames.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(8),
                      leading: Image.asset(
                        widget.catIcons[index],
                        width: 70,
                        height: 70,
                      ),
                      title: Text(widget.catNames[index]),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => widget.catScreens[index],
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
