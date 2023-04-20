import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sn_edit_lessons/view/Screens/MainSceeens/SelextEx.dart';

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
      body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection('speak_now_lessons')
              .doc(widget.launguage)
              .collection('Levels')
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SelectEx(
                                      level: anketss.get('Level').toString(),
                                      launguage: widget.launguage,
                                    )));
                      },
                      child: Card(
                          child: Column(
                        children: [
                          Padding(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              child: Text(
                                  'Уровень: ${anketss.get('Level').toString()}')),
                        ],
                      )),
                    );
                  }),
            );
          }),
    );
  }
}
