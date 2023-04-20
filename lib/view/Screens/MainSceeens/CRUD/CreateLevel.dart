import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
TextEditingController _controller = TextEditingController();
class CreateLevel extends StatefulWidget {
  const CreateLevel({Key? key}) : super(key: key);

  @override
  State<CreateLevel> createState() => _CreateLevelState();
}

class _CreateLevelState extends State<CreateLevel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 15), child:
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              label: Text('язык'),
            ),
          ),),
          TextButton(onPressed: () async {
         await   _firebaseFirestore.collection('speak_now_lessons').doc(_controller.text).set({'Language': _controller.text}); //создание документа языка
         _controller.clear(); //очищает текстовое поле
         Navigator.pop(context); //удаление страницы создания языка из стека

          }, child: Text('Добавить')),
        ],
      ),
    );
  }
}
