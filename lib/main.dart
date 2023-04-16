import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sn_edit_lessons/view/Screens/HomePage.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color.fromRGBO(67, 187, 122, 1),
  ));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => print("Firebase Initialized"));
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



