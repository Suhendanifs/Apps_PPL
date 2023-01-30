import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:pembayaran_1/main.dart';

import 'package:nice_buttons/nice_buttons.dart';
import 'package:pembayaran_1/pages/home.dart';
import 'package:pembayaran_1/pages/konfirmasi.dart';

class detail extends StatelessWidget {
  const detail({super.key});

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
          "Pembayaran Bebas",
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
                  showSelectedItems: false,
                ),
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    labelText: "Atas Nama",
                  ),
                ),
                onChanged: print,
                selectedItem: "Daffa Akhdan",
              ),
              SizedBox(height: 30),
              //<=================================================>
              DropdownSearch<String>(
                popupProps: PopupProps.menu(
                  showSelectedItems: false,
                ),
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    labelText: "Tahun Ajar",
                  ),
                ),
                onChanged: print,
                selectedItem: "2021/2022",
              ),
              SizedBox(height: 30),
              //<=================================================>
              DropdownSearch<String>(
                popupProps: PopupProps.menu(
                  showSelectedItems: true,
                ),
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    labelText: "Daftar Tagihan",
                  ),
                ),
                onChanged: print,
                selectedItem: "Uang Gedung - Rp. 2.500.000",
              ),

              //<=================================================>
              SizedBox(height: 30),
              DropdownSearch<String>(
                popupProps: PopupProps.menu(
                  showSelectedItems: false,
                ),
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    labelText: "Metode Pembayaran",
                  ),
                ),
                onChanged: print,
                selectedItem: "Bank BRI",
              ),
              SizedBox(height: 30),
              Text(
                "File Bukti",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 24),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 120),
                height: 260,
                width: 150,
                child: Column(
                  children: [
                    Image.asset('data/cc.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
