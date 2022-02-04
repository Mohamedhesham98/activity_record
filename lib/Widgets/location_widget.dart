import 'package:flutter/material.dart';

import 'constants.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 190.0,
            width: 536.0,
            decoration: BoxDecoration(
                border: Border.all(color: color2),
                borderRadius: BorderRadius.circular(4.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0, 1),
                  )
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  color: color1,
                  //margin: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      const Text("Einsatzort", style: style2),
                      Container(
                        margin: const EdgeInsets.all(5.0),
                        height: 30,
                        width: 150,
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            fillColor: color2,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            labelText: "Firma",
                            labelStyle: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          hint: const Text("Testfirma A GmbH", style: style3),
                          items: null,
                          onChanged: null,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text("Testfirma A GmbH", style: style1),
                      SizedBox(height: 18.0),
                      Text("Teststraße 2 in 22222 Neudorf", style: style4),
                      SizedBox(height: 8.0),
                      Text("40 Sollstunden pro Woche", style: style4),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
