import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  // const Jawawban({Key? key}) : super(key: key);

  Function() handleText;

  String jawabanText;

  Jawaban(this.handleText, this.jawabanText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: handleText,
          style: ElevatedButton.styleFrom(primary: Colors.purple),
          child: Text(jawabanText)),
    );
  }
}
