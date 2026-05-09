import 'package:flutter/material.dart';
import 'package:medguideapp/colors.dart';
import 'package:medguideapp/screens/categories_subscreen/dental_subscreen/lubanggigi.dart';
import 'package:medguideapp/screens/categories_subscreen/dental_subscreen/periodontitis.dart';

class DentalScreen extends StatefulWidget {
  final List<String> catNames = [
    "Lubang Gigi",
    "Periodontitis",
  ];

  final List<String> catIcons = [
    'assets/images/lubanggigi.jpeg',
    'assets/images/periodontitis.jpeg',
  ];

  final List<Widget> catScreens = [
    Lubanggigi(),
    Periodontitis(),
  ];

  DentalScreen({Key? key}) : super(key: key);

  @override
  State<DentalScreen> createState() => _EyeScreenState();
}

class _EyeScreenState extends State<DentalScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dental Screen'),
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
                  'assets/images/dentalsakit.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dental Disease',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: bcolor,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      ' Sakit gigi terjadi akibat saraf pada akar gigi atau di sekitar gigi teriritasi. Biasanya penyebab paling umum dari sakit gigi, seperti infeksi gigi, pembusukan, cedera, atau kehilangan gigi. Nyeri pada gigi juga dapat terjadi setelah ekstraksi atau bedah minor yang dilakukan untuk mengeluarkan gigi. Rasa nyeri juga berasal dari daerah lain dan memancar ke rahang sehingga seperti sakit gigi. Bagian lain yang umum terjadi termasuk sendi rahang, sakit telinga, sinus, hingga masalah jantung. Nah, untuk mencegah sakit gigi, Anda dapat melakukan flossing gigi membersihkan sela-sela gigi), menyikat gigi dengan pasta fluoride, dan membersihkan gigi setahun 2 kali.',
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
