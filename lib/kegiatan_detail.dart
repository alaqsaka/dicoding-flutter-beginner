import 'package:flutter/material.dart';
import 'package:rukun_tetangga/model/kegiatan.dart';

class KegiatanDetail extends StatelessWidget {
  final Kegiatan kegiatan;

  const KegiatanDetail({Key? key, required this.kegiatan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.chevron_left,
                              color: Colors.black, size: 40),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              kegiatan.namaKegiatan,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 24,
                                  fontFamily: 'Nunito Sans',
                                  color: Color.fromRGBO(0, 148, 255, 1),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: ClipRRect(
                    child: Image.asset(kegiatan.imageAsset),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: const Text(
                    'Tanggal Kegiatan:',
                    style: TextStyle(
                        color: Color.fromRGBO(21, 44, 91, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Text(
                    kegiatan.tanggal,
                    style: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: const Text(
                    'Tempat dan Waktu:',
                    style: TextStyle(
                        color: Color.fromRGBO(21, 44, 91, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Text(
                    kegiatan.tempat + ', pukul ' + kegiatan.waktu,
                    style: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: const Text(
                    'Deskripsi:',
                    style: TextStyle(
                        color: Color.fromRGBO(21, 44, 91, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Text(
                    kegiatan.deskripsiKegiatan,
                    style: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 16), child: const Buttons())
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [LikesButton(), BtnComment(), BtnShare()],
    );
  }
}

class LikesButton extends StatefulWidget {
  const LikesButton({Key? key}) : super(key: key);

  @override
  State<LikesButton> createState() => _LikesButtonState();
}

class _LikesButtonState extends State<LikesButton> {
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              setState(() {
                isLike = !isLike;
              });
            },
            icon: Icon(
              isLike ? Icons.thumb_up : Icons.thumb_up_alt_outlined,
              color: Colors.blue,
            )),
        Text(
          isLike ? '1' : '0',
          style: const TextStyle(fontFamily: 'Nunito Sans'),
        )
      ],
    );
  }
}

class BtnComment extends StatelessWidget {
  const BtnComment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.comment_outlined)),
        const Text(
          '10',
          style: TextStyle(fontFamily: 'Nunito Sans'),
        )
      ],
    );
  }
}

class BtnShare extends StatelessWidget {
  const BtnShare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.share_outlined)),
        const Text(
          'Share',
          style: TextStyle(fontFamily: 'Nunito Sans'),
        )
      ],
    );
  }
}
