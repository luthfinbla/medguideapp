import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:medguideapp/colors.dart';
import 'package:medguideapp/screens/apotek/apotek.dart';
import 'package:medguideapp/screens/home_screen.dart';
import 'package:medguideapp/screens/search_screen.dart';
import 'package:medguideapp/screens/user_screen.dart';

class RootPage extends StatefulWidget {
  RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPagState();
}

class _RootPagState extends State<RootPage> {
  int bottomIndex = 0;
  
  // Daftar halaman yang akan ditampilkan pada bottom navigation bar
  List<Widget> pages = [
    HomeScreen(),
    SearchScreen(),
    DaftarApotekPage(),
    UserScreen(),
  ];

  // Daftar judul untuk setiap halaman pada bottom navigation bar
  List<String> titleList = [
    'Home',
    'Reminder',
    'Apotek',
    'User',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleList[bottomIndex]),  // Menampilkan judul sesuai dengan indeks bottom navigation bar
      ),
      body: IndexedStack(
        index: bottomIndex,
        children: pages,
        
      ),  // Menampilkan halaman sesuai dengan indeks bottom navigation bar
      bottomNavigationBar: CurvedNavigationBar(
        index: bottomIndex,  // Menetapkan indeks halaman yang aktif
        backgroundColor: Colors.transparent,  // Menetapkan warna latar belakang bottom navigation bar
        buttonBackgroundColor: Color.fromARGB(255, 80, 176, 255),  // Menetapkan warna latar belakang tombol pada bottom navigation bar
        color: pcolor,  // Menetapkan warna garis kurva pada bottom navigation bar
        animationDuration: Duration(milliseconds: 300),  // Menetapkan durasi animasi perubahan halaman
        onTap: (index) {
          setState(() {
            bottomIndex = index;  // Mengubah indeks halaman saat bottom navigation bar ditekan
          });
        },
        
        // Daftar item pada bottom navigation bar
        items: [
          CurvedNavigationBarItem(
            child: Icon(Icons.home_outlined),  // Menampilkan ikon Home pada bottom navigation bar
            label: 'Home',  // Menetapkan label untuk ikon Home
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.waving_hand_outlined),  // Menampilkan ikon Search pada bottom navigation bar
            label: 'Reminder',  // Menetapkan label untuk ikon Search
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.local_pharmacy_outlined),  // Menampilkan ikon Personal pada bottom navigation bar
            label: 'Apotek',  // Menetapkan label untuk ikon Personal
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.perm_identity),  // Menampilkan ikon Personal pada bottom navigation bar
            label: 'User',  // Menetapkan label untuk ikon Personal
          ),
        ],
      ),
    );
  }
}
