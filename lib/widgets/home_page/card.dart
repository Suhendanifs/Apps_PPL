import 'package:flutter/material.dart';

class card extends StatelessWidget {
  card(this.title, this.title_cap1, this.title_cap2);

  final String title;
  final String title_cap1;
  final String title_cap2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(color: Colors.grey, width: 2))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF53A4F5)),
          ),
          SizedBox(
            height: 7,
          ),
          Text(title_cap1,
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF53A4F5),
              )),
          SizedBox(
            height: 7,
          ),
          Text(title_cap2,
              style: TextStyle(fontSize: 15, color: Color(0xFF53A4F5))),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
