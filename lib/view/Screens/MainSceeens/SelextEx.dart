// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sn_edit_lessons/view/Screens/MainSceeens/SelectMicroExOrInfo.dart';

class SelectEx extends StatefulWidget {
  final level;
  final launguage;
  const SelectEx({Key? key, required this.level, required this.launguage}) : super(key: key);

  @override
  State<SelectEx> createState() => _SelectLevelState();
}

class _SelectLevelState extends State<SelectEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection('speak_now_lessons').doc(widget.launguage).collection('Levels').doc('Level' + widget.level).collection('Exercise')
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Text('что то пошло не так');
            }

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
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SelectMicroEx(level: widget.level, launguage: widget.launguage, ex: 'Ex${anketss.get('exercise_number').toString()}',)));
           //             Navigator.push(context, MaterialPageRoute(builder: (context) => SelectLevel(level: anketss.get('Level '))));
                      },
                      child: Card(
                          child: Column(children: [
                            Padding(padding: EdgeInsets.symmetric(vertical: 15),child:
                                Text('Упр: ${anketss.get('exercise_number').toString()}'),
                          ),

                          ],
                          )

                      ),
                    //    child: Text('Упр: ${anketss.get('exercise_number').toString()}'),

                    );
                  }),
            );
          }),
    );
  }
}
