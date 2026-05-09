import 'package:flutter/material.dart';

class VirusScreen extends StatefulWidget {
  const VirusScreen({super.key});

  @override
  State<VirusScreen> createState() => _VirusScreen();
}

class _VirusScreen extends State<VirusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('VirusScreen'),
      ),
    );
  }
}