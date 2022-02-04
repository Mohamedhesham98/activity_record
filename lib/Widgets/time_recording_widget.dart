import 'package:flutter/material.dart';

import 'constants.dart';
import 'days_widget.dart';

class TimeRecordingWidget extends StatelessWidget {
  const TimeRecordingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: color2),
                borderRadius: BorderRadius.circular(4.0),
                color: color2,
                boxShadow: [
                  BoxShadow(
                    color: color3.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  color: color1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      const Text("Zeiterfassung", style: style2),
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
                              labelText: "Kalenderwoche",
                              labelStyle: style5),
                          hint: const Text("KW 46", style: style4),
                          items: null,
                          onChanged: null,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    DaysWidget(
                        day: "Mo 15.11.21",
                        fromWhichHour: "von",
                        untilWhichHour: "bis",
                        breaksHours: "Pausen",
                        netHours: "0,00",
                        otherActivities: "Sonstiges"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    DaysWidget(
                        day: "Di 16.11.21",
                        fromWhichHour: "von",
                        untilWhichHour: "bis",
                        breaksHours: "Pausen",
                        netHours: "0,00",
                        otherActivities: "Sonstiges"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    DaysWidget(
                        day: "mi 17.11.21",
                        fromWhichHour: "von",
                        untilWhichHour: "bis",
                        breaksHours: "Pausen",
                        netHours: "0,00",
                        otherActivities: "Sonstiges"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    DaysWidget(
                        day: "Do 18.11.21",
                        fromWhichHour: "von",
                        untilWhichHour: "bis",
                        breaksHours: "Pausen",
                        netHours: "0,00",
                        otherActivities: "Sonstiges"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    DaysWidget(
                        day: "Fr 19.11.21",
                        fromWhichHour: "von",
                        untilWhichHour: "bis",
                        breaksHours: "Pausen",
                        netHours: "0,00",
                        otherActivities: "Sonstiges"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    DaysWidget(
                        day: "Sa 20.11.21",
                        fromWhichHour: "von",
                        untilWhichHour: "bis",
                        breaksHours: "Pausen",
                        netHours: "0,00",
                        otherActivities: "Sonstiges"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    DaysWidget(
                        day: "So 21.11.21",
                        fromWhichHour: "von",
                        untilWhichHour: "bis",
                        breaksHours: "Pausen",
                        netHours: "0,00",
                        otherActivities: "Sonstiges"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
