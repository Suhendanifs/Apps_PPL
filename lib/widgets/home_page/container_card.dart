import 'package:flutter/material.dart';
import '../home_page/card.dart';

class container_card extends StatelessWidget {
  const container_card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.only(top: 10, left: 17, right: 17),
        children: [
          card("Pembayaran Bebas", "Spp bulan Maret, Sebesar Rp. 375.000",
              "16:00, 13 Mei 2022"),
          card("Pembayaran Bulanan", "Uang Gedung - Rp. 2.500.000",
              "16:00, 13 Mei 2022"),
          card("Pembayaran Bebas", "Spp bulan Maret, Sebesar Rp. 375.000",
              "16:00, 13 Mei 2022"),
          card("Pembayaran Bulanan", "Uang Gedung - Rp. 2.500.000",
              "16:00, 13 Mei 2022"),
          card("Pembayaran Bebas", "Spp bulan Maret, Sebesar Rp. 375.000",
              "16:00, 13 Mei 2022"),
        ],
      ),
    );
  }
}
