import 'package:flutter/material.dart';

var blueText = TextStyle(fontFamily: 'Nunito Sans', color: Colors.blue);

class JoinCommunity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'Masukkan Kode\nRT Anda',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Nunito Sans',
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                    color: Color.fromRGBO(0, 148, 255, 1),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 124, 20, 0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      'Tanyakan ketua RT Anda terkait kode grup dan tuliskan disini ya',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromRGBO(170, 170, 170, 1),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Masukkan kode'),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
              child: ElevatedButton(
                child: const Text(
                  'Gabung Grup RT',
                  style: TextStyle(
                      fontFamily: 'Nunito Sans', fontWeight: FontWeight.w600),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(51),
                    primary: Color.fromRGBO(0, 148, 255, 1)),
              ),
            )
          ],
        ),
      )),
    );
  }
}
