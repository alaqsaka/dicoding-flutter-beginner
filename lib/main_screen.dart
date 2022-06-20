import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.all(20.0),
      child: Profile(),
    )));
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(bottom: 4.0),
                child: Text(
                  'Selamat datang, Pak Aqsa',
                  style: TextStyle(
                      color: Color.fromRGBO(0, 148, 255, 1),
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w600,
                      fontSize: 22),
                ),
              ),
              Text(
                'Warga RT 02 Alam Asri',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromRGBO(196, 196, 196, 1),
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
            ],
          ),
          const CircleAvatar(
            // child: Image.asset('images/foto_orang.jpg'),
            backgroundColor: Colors.grey,
            minRadius: 30.0,
            backgroundImage: AssetImage('images/foto_orang.jpg'),
          )
        ]),
      ],
    );
  }
}
