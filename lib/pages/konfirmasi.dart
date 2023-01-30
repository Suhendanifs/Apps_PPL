import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pembayaran_1/pages/paga_gagal.dart';

import '../widgets/home_page/dialog.dart';

class konfirmasi extends StatefulWidget {
  konfirmasi(this.desc);
  late String desc;

  @override
  State<konfirmasi> createState() => _konfirmasiState();
}

class _konfirmasiState extends State<konfirmasi> {
  File? image;

  Future getImgae() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? imagePicked =
        await _picker.pickImage(source: ImageSource.camera);
    image = File(imagePicked!.path);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue[100],
        title: Text(
          "Konfirmasi Pembayaran",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(top: 60, left: 130),
                child: Image.asset('data/konfirm.png')),
            SizedBox(
              height: 70,
            ),
            Text(
              textAlign: TextAlign.center,
              widget.desc,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 25),
            image != null
                ? Container(height: 150, width: 150, child: Image.file(image!))
                : Container(),
            SizedBox(height: 20),
            Container(
                margin: EdgeInsets.only(left: 20),
                // decoration: BoxDecoration(
                //     border: Border(
                //         bottom: BorderSide(color: Colors.grey, width: 1))),
                child: Column(
                  children: [
                    Text("File Bukti"),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 2),
                      width: 90,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: TextButton(
                          onPressed: () async {
                            await getImgae();
                          },
                          child: Text(
                            "Pilih File",
                            style: TextStyle(color: Colors.black, fontSize: 11),
                          )),
                    ),
                  ],
                )),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  decoration: BoxDecoration(
                    color: Color(0xFF1ABC9C),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton(
                      // style: TextButton.styleFrom(backgroundColor: Colors.grey),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => Dialog(
                            child: dialog(),
                          ),
                        );
                      },
                      child: Text(
                        "Konfirmasi",
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
                      // style: TextButton.styleFrom(backgroundColor: Colors.grey),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => cancelPage(),
                        ));
                      },
                      child: Text(
                        "Batal",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
