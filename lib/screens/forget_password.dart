import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);  // Menambahkan kunci (key) pada konstruktor

  @override
  State<ForgetPassword> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  // Menggunakan Scaffold untuk menyusun tata letak
      appBar: AppBar(
        title: const Text('Forget Password'),  // Menampilkan judul di AppBar
      ),
      body: Center(
        child: const Text('Forget Password'),  // Menampilkan teks di tengah halaman
      ),
    );
  }
}
