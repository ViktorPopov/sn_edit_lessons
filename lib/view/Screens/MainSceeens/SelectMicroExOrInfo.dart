import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'CRUD/CreateMEX.dart';

class SelectMicroEx extends StatefulWidget {
  final level;
  final launguage;
  final ex;
  const SelectMicroEx({Key? key, required this.level, required this.launguage, required this.ex}) : super(key: key);

  @override
  State<SelectMicroEx> createState() => _SelectLevelState();
}

class _SelectLevelState extends State<SelectMicroEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      actions: [
        IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CreateMEX(launguage: widget.launguage, level: 'Level${widget.level}', ex: widget.ex)));
        }, icon: Icon(Icons.add)),
      ],
    ),
      body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection('speak_now_lessons').doc(widget.launguage).collection('Levels').doc('Level'+widget.level).collection('Exercise').doc('${widget.ex}').collection('micro_exercise')
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Text('что то пошло не так');
            }
            print(snapshot.data);
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Material(
                child: Center(
                  child: CircularProgressIndicator(
                    color: Colors.red,
                  ),
                ),
              );
            }

            return SizedBox(
              height: MediaQuery.of(context).size.height / 1.7,
              child: ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    var anketss = snapshot.data!.docs[index];
                    return GestureDetector(
                      onDoubleTap: () {

                      },
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text('тип: ${anketss.get('type').toString()}' ),
                            Text('порядковый номер: ${anketss.get('index').toString()}' ),
                            Text('Текст Учителя: ${anketss.get('text_teacher').toString()}'),
                            Text('Текст студента ${anketss.get('text_student').toString()}'),
                            Text('Ответ студента: ${anketss.get('answer_student').toString()}'),
                          ],
                        )

                      ),
                    );
                  }),
            );
          }),
    );
  }
}
