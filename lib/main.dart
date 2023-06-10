import 'package:flutter/material.dart';
import 'package:latihan1/hasil.dart';
import 'package:latihan1/kuis.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // const MyWidget({super.key});
  var soalIndex = 0;

  var pertanyaan = [
    {
      'Pertanyaan': 'Tempat apa yang mau lo datengin ?',
      'jawaban': [
        {'teks': 'Pegunungan', 'skor': 10},
        {'teks': 'Gunung', 'skor': 7},
        {'teks': 'Sawah', 'skor': 5},
        {'teks': 'Hutan', 'skor': 3},
      ]
    },
    {
      'Pertanyaan': 'Warna apa yang u suka ?',
      'jawaban': [
        {'teks': 'Kuning', 'skor': 10},
        {'teks': 'Hijau', 'skor': 7},
        {'teks': 'Biru', 'skor': 6},
        {'teks': 'Merah', 'skor': 7},
      ],
    },
    {
      'Pertanyaan': 'Apa hobi u ?',
      'jawaban': [
        {'teks': 'Renang', 'skor': 2},
        {'teks': 'Tidur', 'skor': 10},
        {'teks': 'Rebahan', 'skor': 6},
        {'teks': 'Ngelamun', 'skor': 7},
      ],
    },
  ];

//
  @override
  Widget build(BuildContext context) {
    void reset() {
      setState(() {
        soalIndex = 0;
      });
    }

    void jawaban() {
      setState(() {
        soalIndex += 1;
      });
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text('Aplikasi kuis'),
        ),
        body: soalIndex < pertanyaan.length
            ? Kuis(
                jawaban: jawaban,
                soalIndex: soalIndex,
                pertanyaan: pertanyaan,
              )
            : Hasil(reset),
      ),
    );
  }
}
