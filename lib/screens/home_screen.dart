import 'package:flutter/material.dart';
import 'package:medguideapp/colors.dart';
import 'package:medguideapp/screens/categories_subscreen/dental_screen.dart';
import 'package:medguideapp/screens/categories_subscreen/eye_screen.dart';
import 'package:medguideapp/screens/categories_subscreen/heart_screen.dart';
import 'package:medguideapp/screens/categories_subscreen/skin_screen.dart';
import 'package:medguideapp/screens/categories_subscreen/virus_screen.dart';
import 'package:medguideapp/widgets/articles_section.dart';

class HomeScreen extends StatelessWidget {
  // Deklarasi list nama kategori dan ikon kategori
  List<String> catNames = [
    "Dental",
    "Heart",
    "Eye",
    "Virus",
    "Skin",
  ];

  List<Image> catIcon = [
    Image.asset('assets/images/dental.png', width: 32, height: 32, color: pcolor),
    Image.asset('assets/images/heart.png', width: 32, height: 32, color: pcolor),
    Image.asset('assets/images/eye.png', width: 32, height: 32, color: pcolor),
    Image.asset('assets/images/virus.png', width: 32, height: 32, color: pcolor),
    Image.asset('assets/images/skin.png', width: 32, height: 32, color: pcolor),
  ];

    List<Widget> catScreens = [
    DentalScreen(),
    HeartScreen(),
    EyeScreen(),
    VirusScreen(),
    SkinScreen(),
  ];

  // Konstruktor dengan kunci (key)
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Bagian atas halaman dengan dekorasi gradien dan avatar pengguna
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3.5,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        pcolor.withOpacity(0.6),
                        pcolor,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Baris dengan avatar dan ikon pemberitahuan
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image(
                              image: AssetImage("assets/images/maskot1.png"),
                              width: 100, // Sesuaikan lebar sesuai kebutuhan Anda
                              height: 100, // Sesuaikan tinggi sesuai kebutuhan Anda
                              fit: BoxFit.cover, // Sesuaikan mode pemuatan gambar
                            ),
                            ImageIcon(
                              AssetImage("assets/images/notification.png"),
                              color: wcolor,
                              size: 30,
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        // Judul sambutan dan tagline
                        Text(
                          "Hi, welcome back!",
                          style: TextStyle(
                            color: wcolor,
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Your Health is Our First Priority",
                          style: TextStyle(
                            color: wcolor,
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Konten utama di halaman
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Informasi pengguna dan pencarian
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Input pencarian dengan dekorasi
                            Container(
                              margin: EdgeInsets.only(top: 15, bottom: 20),
                              width: MediaQuery.of(context).size.width,
                              height: 55,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: wcolor,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: sdcolor,
                                    blurRadius: 6,
                                    spreadRadius: 3,
                                  ),
                                ],
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search here..",
                                  hintStyle: TextStyle(
                                    color: bcolor,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    size: 25,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Kategori dengan ikon dan nama kategori
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "Categories",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: bcolor.withOpacity(0.7),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        height: 100,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: catNames.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => catScreens[index]),
                                    );
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                              color: sdcolor,
                                              blurRadius: 4,
                                              spreadRadius: 2,
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: catIcon[index],
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      // Nama kategori
                                      Text(
                                        catNames[index],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      // Judul dan widget untuk bagian artikel
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "What do you need to know",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: bcolor.withOpacity(0.7),
                          ),
                        ),
                      ),
                      // Widget dari bagian artikel (ArticlesSection)
                      ArticlesSection(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
