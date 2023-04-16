import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sn_edit_lessons/view/Screens/HomePage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      title: 'Speak.now',
     // theme: ThemeData.fallback(), //возможно нам нужна эта обезяна)
    );
  }
}



