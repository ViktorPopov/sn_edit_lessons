import 'package:flutter/material.dart';

class SelectLevel extends StatefulWidget {
  final launguage;
  const SelectLevel({Key? key, required this.launguage}) : super(key: key);

  @override
  State<SelectLevel> createState() => _SelectLevelState();
}

class _SelectLevelState extends State<SelectLevel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.launguage),),
        body: ListView.builder(itemBuilder: (context, index) {
      return GestureDetector(child: Card(child: Row(children: [
        Text('Level'),
      ],)),
        //onTap: Navigator.push(context, route),
      );
    },
    itemCount: 10,));
  }
}
