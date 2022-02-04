import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webproject/provider/my_provider.dart';

class TextRadioList extends StatefulWidget {
  final String text1;

  const TextRadioList({required this.text1});

  @override
  _TextRadioListState createState() => _TextRadioListState();
}

class _TextRadioListState extends State<TextRadioList> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context, listen: false);

    return ListView.builder(
      itemBuilder: (ctx, index) => RadioListTile<int>(
        value: index,
        groupValue: provider.selectedButton,
        onChanged: provider.setSelectedButton,
        title: const TextRadioList(text1: ""),
        activeColor: Colors.red,
      ),
      itemCount: 3,
    );
  }
}
