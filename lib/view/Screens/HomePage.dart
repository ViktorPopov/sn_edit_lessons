import 'package:flutter/material.dart';
import 'package:sn_edit_lessons/view/Screens/MainSceeens/SelectLanguage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LanguageListScreen(),
    );
  }
}
