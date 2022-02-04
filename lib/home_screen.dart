import 'package:flutter/material.dart';

import 'Widgets/buttons_widget.dart';
import 'Widgets/checkbox.dart';
import 'Widgets/header_widget.dart';
import 'Widgets/location_widget.dart';
import 'Widgets/permit_widget.dart';
import 'Widgets/time_recording_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(100.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                const HeaderWidget(),
                const LocationWidget(),
                const TimeRecordingWidget(),
                const PermitWidget(),
                BottomWidgetBar(
                  onChanged: () {},
                  label: 'Ich erkläre, dass ich das Formular \nwahrheitsgemäß '
                      'ausgefüllt habe.',
                  value: true,
                ),
                ButtonsWidgets(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
