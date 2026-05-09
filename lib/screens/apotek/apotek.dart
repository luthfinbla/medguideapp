import 'package:flutter/material.dart';

class Apotek {
  final String nama;
  final String alamat;
  final String gambar;

  Apotek({required this.nama, required this.alamat, required this.gambar});
}

class DaftarApotekPage extends StatelessWidget {
  final List<Apotek> daftarApotek = [
    Apotek(
      nama: "Apotek A",
      alamat: "Jl. Apotek A No. 1",
      gambar: "assets/images/apotek1.jpg",
    ),
    Apotek(
      nama: "Apotek B",
      alamat: "Jl. Apotek B No. 2",
      gambar: "assets/images/apotek2.jpg",
    ),
    Apotek(
      nama: "Apotek C",
      alamat: "Jl. Apotek C No. 3",
      gambar: "assets/images/apotek3.jpg",
    ),
    Apotek(
      nama: "Apotek D",
      alamat: "Jl. Apotek D No. 4",
      gambar: "assets/images/apotek4.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: daftarApotek.length,
        itemBuilder: (context, index) {
          final apotek = daftarApotek[index];
          return Card(
            child: ListTile(
              leading: Image.asset(apotek.gambar),
              title: Text(apotek.nama),
              subtitle: Text(apotek.alamat),
              onTap: () {
                // Tambahkan navigasi atau aksi saat item card diklik di sini
              },
            ),
          );
        },
      ),
    );
  }
}