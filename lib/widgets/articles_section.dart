import 'package:flutter/material.dart';
import 'package:medguideapp/colors.dart';
import 'package:medguideapp/screens/article_subscreen/article1.dart';
import 'package:medguideapp/screens/article_subscreen/article2.dart';
import 'package:medguideapp/screens/article_subscreen/article3.dart';

class ArticlesSection extends StatelessWidget{
  final List<String> imagePaths = [
    'assets/images/artic1.png',
    'assets/images/artic2.png',
    'assets/images/artic3.png',
  ];

  final List<String> catNames = [
    "Diabetes - Penyebab, Jenis, Gejala dan Pengobatannya",
    "Mengenal Penyakit Cacingan, Penyebab, Gejala & Pengobatannya",
    "Inkompatibilitas Rhesus: Penyebab, Gejala, dan  Pengobatannya",
  ];

    List<Widget> catScreens = [
    ArticlesScreen(),
    ArticlesScreen2(),
    ArticlesScreen3(),
  ];

  ArticlesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical, 
        itemCount: 3,
        itemBuilder: (context, index) {
          return InkWell( // Menggunakan InkWell sebagai tombol yang dapat diklik
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => catScreens[index],
                ),
              );
            },
            child: Container(
              width: 300, // Mengatur lebar kontainer
              margin: EdgeInsets.symmetric(horizontal: 3, vertical: 20),
              decoration: BoxDecoration(
                color: wcolor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: sdcolor,
                    blurRadius: 4,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.asset(
                      imagePaths[index],
                      height: 200,
                      width: 400, // Mengatur lebar gambar
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      catNames[index],
                      style: TextStyle(),
                      maxLines: 2, // Membatasi jumlah baris teks
                      overflow: TextOverflow.ellipsis, // Mengatur overflow jika teks terlalu panjang
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
