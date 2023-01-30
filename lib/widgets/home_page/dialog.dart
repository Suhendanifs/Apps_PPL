import 'package:flutter/material.dart';
import 'package:pembayaran_1/pages/berhasil_page.dart';
import 'package:pembayaran_1/pages/konfirmasi.dart';

class dialog extends StatelessWidget {
  const dialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: 200,
        margin: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "apakah bukti pembayaran sesuai dengan jumlah yang harus dibayarkan",
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFF1C40F),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => donePage(),
                        ));
                      },
                      child: Text(
                        "Iya",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      )),
                ),
                Container(
                  width: 130,
                  decoration: BoxDecoration(
                    color: Color(0xFFE74C3C),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Tidak",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      )),
                ),
              ],
            ),
          ],
        ));
  }
}
