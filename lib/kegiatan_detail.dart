import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rukun_tetangga/model/kegiatan.dart';

class KegiatanDetail extends StatelessWidget {
  final Kegiatan kegiatan;

  const KegiatanDetail({Key? key, required this.kegiatan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text(kegiatan.namaKegiatan));
  }
}
