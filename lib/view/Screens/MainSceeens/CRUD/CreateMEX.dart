import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
TextEditingController _answerController = TextEditingController();
TextEditingController _STextController = TextEditingController();
TextEditingController _TTextController = TextEditingController();

class CreateMEX extends StatefulWidget {
  final launguage;
  final level;
  final ex;
  const CreateMEX({Key? key,required this.launguage,required this.level,required this.ex}) : super(key: key);

  @override
  State<CreateMEX> createState() => _CreateMEXState();
}

class _CreateMEXState extends State<CreateMEX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: _answerController,
          ),
          TextField(
            controller: _STextController,
          ),
          TextField(
            controller: _TTextController,
          ),
          TextButton(onPressed: () async
          {
            _firebaseFirestore.collection('speak_now_lessons').doc(widget.launguage).collection('Levels').doc('level'+widget.level).collection('Exercise').doc(widget.ex).collection('micro_exercise')
               .add({
              'text_student': _STextController.text,
              'text_teacher': _TTextController,
              "answer_student": _answerController,
              'index': 1,
              'type': 'ex',
            });
          }, child: Text('add')),
        ],
      ),
    );
  }
}
