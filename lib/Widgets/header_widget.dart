import 'package:flutter/material.dart';

import 'constants.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 35,
              left: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Text(
                  "Zeiterfassung für \nexterne Mitarbeiter",
                  style: style8,
                  textAlign: TextAlign.start,
                ),
                Image.asset(
                  'assets/images/amadeus.png',
                  width: 163.0,
                  height: 63,
                ),
              ],
            ),
          ),
          const SizedBox(height: 8.0),
          const Divider(
            color: color4,
            height: 20,
            thickness: 2,
          ),
          const SizedBox(height: 10.0),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                bottom: 10,
                top: 10,
              ),
              child: Row(
                children: const <Widget>[
                  Text("Meine Nachweise ", style: style4),
                  Text(" > ", style: style7),
                  Text(" Neuer Nachweis ", style: style4),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child:
                Text("Tätigkeitsnachweis für Lena \nMusterfrau", style: style6),
          ),
        ],
      ),
    );
  }
}
