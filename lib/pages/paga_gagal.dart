import 'package:flutter/material.dart';
import 'package:pembayaran_1/pages/home.dart';

class cancelPage extends StatelessWidget {
  const cancelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => home(),
                ));
              },
            );
          },
        ),
        elevation: 0,
        backgroundColor: Colors.blue[100],
        title: Text(
          "Pembayaran Gagal",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 80),
              child: Image.asset('data/gagal.png'),
            ),
            SizedBox(height: 70),
            Text(
              textAlign: TextAlign.center,
              'Pembayaran gagal, dikarenakan dibatalkan oleh user',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 130,
              decoration: BoxDecoration(
                color: Color(0xFF53A4F5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                  // style: TextButton.styleFrom(backgroundColor: Colors.grey),
                  onPressed: () {},
                  child: Text(
                    "Detail",
                    style: TextStyle(color: Colors.black, fontSize: 11),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
