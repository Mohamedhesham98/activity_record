import 'package:flutter/material.dart';

class PermitWidget extends StatefulWidget {
  const PermitWidget({Key? key}) : super(key: key);

  @override
  State<PermitWidget> createState() => _PermitWidgetState();
}

class _PermitWidgetState extends State<PermitWidget> {
  late var SelectedRadioTile;
  late int SelectedCheckboxTile;
  late bool SelectedCheckboxTilee;

  @override
  void initState() {
    super.initState();
    SelectedRadioTile = 0;
    SelectedCheckboxTile = 0;
  }

  setSelectedRadio(var val) {
    setState(() {
      SelectedRadioTile = val;
    });
  }

  SetCheckboxTile(int val) {
    setState(() {
      SelectedCheckboxTile = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Flexible(
        child: Stack(
          children: <Widget>[
            Container(
              // height: 290.0,
              // width: 390.0,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
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
                    color: Colors.grey[200],
                    //margin: EdgeInsets.all(5.0),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const <Widget>[
                        Text(
                          "Genehmigung",
                          style: TextStyle(
                            fontFamily: "Roboto-Regular",
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        RadioListTile(
                            value: 1,
                            groupValue: SelectedRadioTile,
                            title: const Text("Ansprechpartner auswählen"),
                            onChanged: (val) {
                              SelectedRadioTile(val);
                            }),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5.0),
                    height: 55,
                    width: 350,
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        labelText: "Ansprechpartner",
                        labelStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      hint: const Text(
                        "Max Mustermann | max.mustermann@testfirma.de",
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: "Roboto-Regular",
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      items: null,
                      onChanged: null,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        RadioListTile(
                            value: 1,
                            groupValue: SelectedRadioTile,
                            title: const Text("Ansprechpartner auswählen"),
                            onChanged: (val) {
                              SelectedRadioTile(val);
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        RadioListTile(
                            value: 1,
                            groupValue: SelectedRadioTile,
                            title: const Text("Ansprechpartner auswählen"),
                            onChanged: (val) {
                              SelectedRadioTile(val);
                            }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
