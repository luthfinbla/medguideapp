import 'package:flutter/material.dart';
import 'package:medguideapp/colors.dart';

class ArticlesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: wcolor,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3.2,
              child: Image.asset(
                'assets/images/artic1.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Diabetes - Penyebab, Jenis, Gejala  dan Pengobatannya',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: bcolor,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Apa itu Diabetes?',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: bcolor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    ' Diabetes adalah penyakit metabolik yang terjadi ketika terdapat kadar gula yang tinggi pada tubuh, namun tidak dapat dipergunakan secara maksimal oleh tubuh. Diabetes adalah kondisi yang termasuk ke dalam kategori penyakit kronis berbahaya, terutama jika sudah terjadi komplikasi.',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: bcolor,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Penyebab Diabetes',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: bcolor,
                    ),
                  ),
                  SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: bcolor,
                      ),
                      children: [
                        TextSpan(
                          text: 'Gula darah merupakan komponen penting dalam tubuh sebagai sumber energi agar fungsi tubuh lebih maksimal saat beraktivitas. Jumlah asupan gula harus disesuaikan dengan aktivitas harian kita.\n\n',
                        ),
                        TextSpan(
                          text: 'Namun, yang menjadi masalah adalah saat tubuh mendapatkan asupan gula, sementara aktivitas fisik kita sangat terbatas. Kondisi inilah yang dapat menyebabkan penumpukan gula darah. Dalam jangka panjang, penumpukan gula darah dalam tubuh akan meningkatkan risiko diabetes.\n\n',
                        ),
                        TextSpan(
                          text: 'Ada beberapa penyebab yang mengakibatkan tubuh gagal membakar gula yang ada dalam tubuh secara maksimal, di antaranya adalah:\n\n',
                        ),
                        TextSpan(
                          text: '- Kurangnya aktivitas fisik.\n',
                        ),
                        TextSpan(
                          text: '- Asupan gula yang terlalu tinggi.\n',
                        ),
                        TextSpan(
                          text: '- Terganggunya respons tubuh terhadap insulin.\n',
                        ),
                        TextSpan(
                          text: '- Berkurangnya produksi insulin oleh pankreas.\n',
                        ),
                        TextSpan(
                          text: '- Kinerja insulin terhambat akibat adanya hormon lain.\n\n',
                        ),
                        TextSpan(
                          text: 'Insulin sendiri merupakan hormon yang dihasilkan tubuh untuk membantu memaksimalkan penyerapan glukosa atau gula ke dalam sel-sel tubuh, untuk kemudian diolah menjadi sumber energi dan kelebihannya akan disimpan sebagai cadangan energi.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Jenis-jenis Diabetes:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: bcolor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    ' Penelitian yang dimuat dalam Introduction to Diabetes Mellitus membagi diabetes dalam tiga jenis, yakni:',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: bcolor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1. Diabetes Tipe 1',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: bcolor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Pada dasarnya, diabetes tipe 1 adalah gangguan autoimun, yakni kondisi ketika antibodi yang seharusnya bekerja melindungi tubuh terhadap infeksi, malah berbalik menyerang sel tubuh itu sendiri.\n\n Dalam kasus diabetes tipe 1, yang dirusak adalah sel beta yang terdapat pada pankreas. Proses tersebut membuat rusaknya sel-sel beta yang akan memproduksi insulin. Belum diketahui apa penyebab antibodi menyerang sel beta pankreas. Namun, banyak pakar percaya jika faktor genetik dan infeksi virus tertentu merupakan penyebabnya.',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: bcolor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
