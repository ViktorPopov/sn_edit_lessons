import 'package:flutter/material.dart';

class LanguageListScreen extends StatefulWidget {
  const LanguageListScreen({Key? key}) : super(key: key);

  @override
  State<LanguageListScreen> createState() => _LanguageListScreenState();
}

class _LanguageListScreenState extends State<LanguageListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return const Card(child: Row(children: [
          Text('Language'),
        ],),);
      },
      itemCount: 10,),
    );
  }
}
