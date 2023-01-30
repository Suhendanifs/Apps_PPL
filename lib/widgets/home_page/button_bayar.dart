import 'package:flutter/material.dart';

class button_bayar extends StatelessWidget {
  button_bayar(this.judul);

  final String judul;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 70,
          padding: EdgeInsets.only(top: 40),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(9),
              image: DecorationImage(
                  fit: BoxFit.scaleDown,
                  scale: 12,
                  image: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/1989/1989125.png"))),
          child: Column(
            children: [
              SizedBox(height: 15),
              Text(
                judul,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
