import 'package:flutter/material.dart';
import 'package:rukun_tetangga/model/kegiatan.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text('List Kegiatan')),
      body: KegiatanList(),
    );
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
                      color: Color.fromRGBO(41, 56, 78, 1),
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

class KegiatanList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final Kegiatan kegiatan = kegiatanList[index];
          return InkWell(
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return DetailScreen(place: place);
              // }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(kegiatan.imageAsset),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            kegiatan.namaKegiatan,
                            style: const TextStyle(fontSize: 16.0),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(kegiatan.tempat),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: kegiatanList.length,
      );
    });
  }
}

class KegiatanListTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Text(
            'Kegiatan yang akan datang',
            style: TextStyle(
                color: Color.fromRGBO(0, 148, 255, 1),
                fontSize: 20.0,
                fontWeight: FontWeight.w700),
          ),
        ),
      ],
    ));
  }
}
