import 'package:flutter/material.dart';
import './jawaban.dart';
import './pertanyaan.dart';

class Kuis extends StatelessWidget {
  VoidCallback jawaban;
  List<Map<String, Object>> pertanyaan;
  int soalIndex;

  Kuis({
    required this.jawaban,
    required this.pertanyaan,
    required this.soalIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Pertanyaan(pertanyaan[soalIndex]['Pertanyaan']),
        ...(pertanyaan[soalIndex]['jawaban'] as List<Map<String, Object>>)
            .map((jawbaanText) {
          final teks = jawbaanText['teks'] as String;
          return Jawaban(jawaban, teks);
        }).toList(),
      ],
    );
  }
}
