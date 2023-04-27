import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class SystemStatus extends StatefulWidget {
  const SystemStatus({Key? key}) : super(key: key);

  @override
  State<SystemStatus> createState() => _SystemStatusState();
}

class _SystemStatusState extends State<SystemStatus> {
  Query dbRef = FirebaseDatabase.instance.ref().child('System');

  Widget listItem({required Map data}) {
    // ignore: prefer_const_constructors
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 300,
      color: const Color.fromARGB(255, 221, 244, 239),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
              height: 50,
            ),
            Text(
              // ignore: prefer_interpolation_to_compose_strings
              'Water Tank Level: ' + data['Water-level'],
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 244, 239),
      body: Row(
        children: <Widget>[
          Expanded(
            child: SizedBox(
              height: double.infinity,
              child: FirebaseAnimatedList(
                query: dbRef,
                itemBuilder: (BuildContext context, DataSnapshot snapshot,
                    Animation<double> animation, int index) {
                  Map data = snapshot.value as Map;
                  data['key'] = snapshot.key;
                  return listItem(
                    data: data,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
