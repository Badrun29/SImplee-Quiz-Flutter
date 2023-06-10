import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  // const Hasil({Key? key}) : super(key: key);

  Function() reset;

  Hasil(this.reset);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Kuis Selesai !!!',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.purple),
          onPressed: () => print('check'),
          child: Text('Back to Kuis'),
        )
      ],
    );
  }
}
