import 'package:flutter/material.dart';
import 'package:pembayaran_1/pages/pembayaran_bebas.dart';

import '../home_page/button_bayar.dart';
import '../../pages/pembayaran_bulanan.dart';

class container_title extends StatelessWidget {
  const container_title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
            width: 420,
            height: 300,
            decoration: BoxDecoration(
                color: Color(0xFF53A4F5),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Container(
                    child: Text("Pembayaran",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.white)),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Row(
                    children: [
                      Container(
                        width: 175,
                        height: 190,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.5),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Column(
                            children: [
                              Text("Total Tagihan"),
                              Text("Rp. 12.000.000"),
                              SizedBox(height: 30),
                              Text("Total Dibayar"),
                              Text("Rp. 15.000.000"),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 175,
                        height: 190,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.5),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            )),
                        child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) =>
                                            pembayaranBulanan(),
                                      ));
                                    },
                                    child: button_bayar("Pembayaran Bulanan")),
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => pembayaranBebas(),
                                      ));
                                    },
                                    child: button_bayar("Pembayaran Bebas")),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ]),
    );
  }
}
