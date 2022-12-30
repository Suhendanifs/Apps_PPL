import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:pembayaran_1/main.dart';

import 'package:nice_buttons/nice_buttons.dart';

class pembayaranBulanan extends StatelessWidget {
  const pembayaranBulanan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue[100],
        title: Text(
          "Pembayaran Bulanan",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownSearch<String>(
                popupProps: PopupProps.menu(
                  showSelectedItems: true,
                ),
                items: ["Daffa Akhdan", "Michael ", "Rifki Gema", 'Luffy'],
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    labelText: "Atas Nama",
                  ),
                ),
                onChanged: print,
                selectedItem: "Nama Siswa",
              ),
              SizedBox(height: 30),
              //<=================================================>
              DropdownSearch<String>(
                popupProps: PopupProps.menu(
                  showSelectedItems: true,
                ),
                items: ["2020/2021", "2021/2022", "2022/2023", '2023/2024'],
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    labelText: "Tahun Ajar",
                  ),
                ),
                onChanged: print,
                selectedItem: "Pilih Tahun Ajar",
              ),
              SizedBox(height: 30),
              //<=================================================>
              DropdownSearch<String>(
                popupProps: PopupProps.menu(
                  showSelectedItems: true,
                ),
                items: [
                  "SPP - Maret - Rp. 375.000",
                  "SPP - April - Rp. 375.000",
                  "SPP - Mei - Rp. 375.000",
                  'SPP - Juni - Rp. 375.000'
                ],
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    labelText: "Daftar Tagihan",
                  ),
                ),
                onChanged: print,
                selectedItem: "Pilih Tagihan",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 160),
                child: IconButton(
                  onPressed: (() {}),
                  icon: Icon(Icons.add_circle_outline),
                  color: Color(0xFF53A4F5),
                ),
              ),
              SizedBox(height: 30),
              //<=================================================>
              DropdownSearch<String>(
                popupProps: PopupProps.menu(
                  showSelectedItems: true,
                ),
                items: ["BRI", "BCA", "Go-Pay", 'DANA'],
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    labelText: "Metode Pembayaran",
                  ),
                ),
                onChanged: print,
                selectedItem: "Pilih Metode Pembayaran",
              ),
              SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                "Total Bayar : Rp.375.000",
                style: (TextStyle(fontSize: 19, fontWeight: FontWeight.w700)),
              ),
              //<=================================================>
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90),
                child: NiceButtons(
                  stretch: false,
                  onTap: (finish) {
                    print('On tap called');
                  },
                  child: Text(
                    'Bayar',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
