import 'package:flutter/material.dart';
import 'package:rukun_tetangga/main_screen.dart';

var blueText = const TextStyle(fontFamily: 'Nunito Sans', color: Colors.blue);

class JoinCommunity2 extends StatefulWidget {
  const JoinCommunity2({Key? key}) : super(key: key);

  @override
  State<JoinCommunity2> createState() => _JoinCommunity2State();
}

class _JoinCommunity2State extends State<JoinCommunity2> {
  String _kode = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
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
              padding: const EdgeInsets.fromLTRB(20, 124, 20, 0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: const Text(
                      "Tanyakan ketua RT Anda terkait kode grup dan tuliskan disini ya",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromRGBO(170, 170, 170, 1),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  TextField(
                    onChanged: (String value) {
                      setState(() {
                        _kode = value;
                      });
                    },
                    // obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Masukkan kode'),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
              child: ElevatedButton(
                child: const Text(
                  'Gabung Grup RT',
                  style: TextStyle(
                      fontFamily: 'Nunito Sans', fontWeight: FontWeight.w600),
                ),
                onPressed: _kode.length < 4
                    ? null
                    : () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const MainScreen();
                        }));
                      },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(51),
                    primary: const Color.fromRGBO(0, 148, 255, 1)),
              ),
            )
          ],
        ),
      )),
    );
  }
}

class JoinCommunity extends StatelessWidget {
  JoinCommunity({Key? key}) : super(key: key);
  TextEditingController _controller = TextEditingController();
  String _kode = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
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
              padding: const EdgeInsets.fromLTRB(20, 124, 20, 0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: const Text(
                      "Tanyakan ketua RT Anda terkait kode grup dan tuliskan disini ya",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromRGBO(170, 170, 170, 1),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  TextField(
                    onChanged: (String value) {},
                    // obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Masukkan kode'),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
              child: ElevatedButton(
                child: const Text(
                  'Gabung Grup RT',
                  style: TextStyle(
                      fontFamily: 'Nunito Sans', fontWeight: FontWeight.w600),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const MainScreen();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(51),
                    primary: const Color.fromRGBO(0, 148, 255, 1)),
              ),
            )
          ],
        ),
      )),
    );
  }
}
