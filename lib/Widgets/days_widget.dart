import 'package:flutter/material.dart';

import 'constants.dart';

class DaysWidget extends StatelessWidget {
  final String day;
  final String fromWhichHour;
  final String untilWhichHour;
  final String breaksHours;
  final String netHours;
  final String otherActivities;

  DaysWidget({
    Key? key,
    required this.day,
    required this.fromWhichHour,
    required this.untilWhichHour,
    required this.breaksHours,
    required this.netHours,
    required this.otherActivities,
  }) : super(key: key);

  var dayInput = TextEditingController();
  var fromWhichHourInput = TextEditingController();
  var untilWhichHourInput = TextEditingController();
  var breaksHoursInput = TextEditingController();
  var netHoursInput = TextEditingController();
  var otherActivitiesInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: color1,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: day, //DAY
                        hintStyle: const TextStyle(
                            fontFamily: "Roboto-Regular",
                            fontWeight: FontWeight.w700,
                            fontSize: 16.0,
                            color: color3),
                      ),
                      controller: dayInput,
                      keyboardType: TextInputType.text,
                    ),
                    const Text("Arbeitszeit", style: style4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: color2,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                  borderSide: BorderSide.none,
                                ),
                                labelText: fromWhichHour, // FROM WHICH TIME
                                labelStyle: style1),
                            controller: fromWhichHourInput,
                            keyboardType: TextInputType.text,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  fillColor: color2,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                    borderSide: BorderSide.none,
                                  ),
                                  labelText: untilWhichHour, // TO WHICH TIME
                                  labelStyle: style1),
                              controller: untilWhichHourInput,
                              keyboardType: TextInputType.text,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  fillColor: color2,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                    borderSide: BorderSide.none,
                                  ),
                                  labelText: breaksHours, // BREAKS HOURS
                                  labelStyle: style1),
                              controller: breaksHoursInput,
                              keyboardType: TextInputType.text,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text("Stunden (netto):", style: style4),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: netHours, //HOURS NUMBER
                                  hintStyle: style1),
                              controller: netHoursInput,
                              keyboardType: TextInputType.text,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 13.0),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: color2,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4.0),
                              borderSide: BorderSide.none,
                            ),
                            labelText: otherActivities, // OTHER ACTIVITIES
                            labelStyle: style1),
                        controller: otherActivitiesInput,
                        keyboardType: TextInputType.text,
                      ),
                    ),
                    const SizedBox(height: 13.0),

                    /*Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Row(
                          children: const <Widget>[
                            TextRadioList(text1: "Anreise \nÖffentlich")
                          ],
                        ),

                        Row(
                          children: const <Widget>[
                            TextRadioList(text1: "Anreise PKW")
                          ],
                        ),

                        Row(
                          children: const <Widget>[
                            TextRadioList(text1: "Mobiles Arbeiten")
                          ],
                        ),*/
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
