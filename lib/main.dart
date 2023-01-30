import 'package:flutter/material.dart';
import 'package:pembayaran_1/pages/konfirmasi.dart';

import './pages/home.dart';
import './pages/pembayaran_bulanan.dart';

void main() {
  runApp(Pembayaran());
}

class Pembayaran extends StatelessWidget {
  const Pembayaran({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}
