import 'package:flutter/material.dart';

class ButtonsWidgets extends StatelessWidget {
  const ButtonsWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          width: 150,
          height: 50,
          color: Colors.grey[300],
          child: Column(
            children: const <Widget>[
              Text("Speichern & Absenden"),
            ],
          ),
        ),
      ],
    );
  }
}
