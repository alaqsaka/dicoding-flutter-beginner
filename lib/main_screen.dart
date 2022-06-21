import 'package:flutter/material.dart';
import 'package:rukun_tetangga/kegiatan_detail.dart';
import 'package:rukun_tetangga/model/kegiatan.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [Profile(), KegiatanListTitle(), KegiatanList()],
            ),
          ),
        ),
      ),
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
                'Warga RT 02',
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
        // Sebelum pake physics ini seluruh layar engga bisa discroll, setelah pake jadi bisa discroll semua dari atas ke bawah
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final Kegiatan kegiatan = kegiatanList[index];
          var padding2 = Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  kegiatan.namaKegiatan,
                  style: const TextStyle(
                      fontSize: 16.0,
                      color: Color.fromRGBO(21, 44, 91, 1),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Nunito Sans'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Tanggal ' + kegiatan.tanggal,
                  style: TextStyle(
                      fontFamily: 'Nunito Sans',
                      fontSize: 14,
                      color: Color.fromRGBO(176, 176, 176, 1),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'Waktu ' + kegiatan.waktu,
                  style: TextStyle(
                      fontFamily: 'Nunito Sans',
                      fontSize: 14,
                      color: Color.fromRGBO(176, 176, 176, 1),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'Tempat ' + kegiatan.tempat,
                  style: TextStyle(
                      fontFamily: 'Nunito Sans',
                      fontSize: 14,
                      color: Color.fromRGBO(176, 176, 176, 1),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          );
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return KegiatanDetail(kegiatan: kegiatan);
              }));
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Card(
                elevation: 0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image.asset(
                          kegiatan.imageAsset,
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: padding2,
                    )
                  ],
                ),
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
          padding: const EdgeInsets.only(top: 25, bottom: 10),
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
