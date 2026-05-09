import 'package:flutter/material.dart';

class SkinScreen extends StatefulWidget {
  const SkinScreen({super.key});

  @override
  State<SkinScreen> createState() => _SkinScreen();
}

class _SkinScreen extends State<SkinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('SkinScreen'),
      ),
    );
  }
}