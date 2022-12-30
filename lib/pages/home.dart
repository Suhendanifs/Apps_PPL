import 'package:flutter/material.dart';
import '../widgets/home_page/container_card.dart';
import '../widgets/home_page/container_title.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 1,
      ),
      body: Column(
        children: [
          container_title(),
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Column(
              children: [
                Text(
                  "Transaksi Terakhir",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ],
            ),
          ),
          container_card()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.square_outlined), label: "Add"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
      ]),
    );
  }
}
