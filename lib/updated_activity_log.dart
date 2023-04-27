import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class ActivityLog extends StatefulWidget {
  const ActivityLog({Key? key}) : super(key: key);

  @override
  State<ActivityLog> createState() => _ActivityLogState();
}

class _ActivityLogState extends State<ActivityLog> {
  Query dbRef = FirebaseDatabase.instance.ref().child('Hist');
  Query dbRef2 = FirebaseDatabase.instance.ref().child('Hist2');
  Query dbRef3 = FirebaseDatabase.instance.ref().child('Hist3');
  Query dbRef4 = FirebaseDatabase.instance.ref().child('Hist3');
  Query dbRef5 = FirebaseDatabase.instance.ref().child('Hist3');
  Query dbRef6 = FirebaseDatabase.instance.ref().child('Hist3');
  Query dbRef7 = FirebaseDatabase.instance.ref().child('Hist3');
  Query dbRef8 = FirebaseDatabase.instance.ref().child('Hist3');
  Query dbRef9 = FirebaseDatabase.instance.ref().child('BatteryHist');
  Query dbRef10 = FirebaseDatabase.instance.ref().child('WaterHist');

  Widget listItem({required Map data}) {
    // ignore: prefer_const_constructors
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        height: 75,
        color: const Color.fromARGB(255, 221, 244, 239),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                // ignore: prefer_interpolation_to_compose_strings
                'Plot 1',
                style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                // ignore: prefer_interpolation_to_compose_strings
                'Moisture level: ' + data['moisture'].toString(),
                style: const TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 4,
              ),
              LinearProgressIndicator(
                //Here you pass the percentage
                minHeight: 10.0,
                value: double.parse(
                        data['moisture'].toString().replaceAll('%', '')) /
                    100,
                color: Colors.blue.withAlpha(100),
                backgroundColor: Colors.blue.withAlpha(50),
              ),
            ],
          ),
        ));
  }

  Widget listItem2({required Map data}) {
    // ignore: prefer_const_constructors
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        height: 75,
        color: const Color.fromARGB(255, 221, 244, 239),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                // ignore: prefer_interpolation_to_compose_strings
                'Plot 2',
                style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                // ignore: prefer_interpolation_to_compose_strings
                'Moisture level: ' + data['moisture'].toString(),
                style: const TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 4,
              ),
              LinearProgressIndicator(
                //Here you pass the percentage
                minHeight: 10.0,
                value: double.parse(
                        data['moisture'].toString().replaceAll('%', '')) /
                    100,
                color: Colors.blue.withAlpha(100),
                backgroundColor: Colors.blue.withAlpha(50),
              ),
            ],
          ),
        ));
  }

  Widget listItem3({required Map data}) {
    // ignore: prefer_const_constructors
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        height: 75,
        color: const Color.fromARGB(255, 221, 244, 239),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                // ignore: prefer_interpolation_to_compose_strings
                'Plot 3',
                style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                // ignore: prefer_interpolation_to_compose_strings
                'Moisture level: ' + data['moisture'].toString(),
                style: const TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 4,
              ),
              LinearProgressIndicator(
                //Here you pass the percentage
                minHeight: 10.0,
                value: double.parse(
                        data['moisture'].toString().replaceAll('%', '')) /
                    100,
                color: Colors.blue.withAlpha(100),
                backgroundColor: Colors.blue.withAlpha(50),
              ),
            ],
          ),
        ));
  }

  Widget listItem4({required Map data}) {
    // ignore: prefer_const_constructors
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        height: 75,
        color: const Color.fromARGB(255, 221, 244, 239),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                // ignore: prefer_interpolation_to_compose_strings
                'Plot 4',
                style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                // ignore: prefer_interpolation_to_compose_strings
                'Moisture level: ' + data['moisture'].toString(),
                style: const TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 4,
              ),
              LinearProgressIndicator(
                //Here you pass the percentage
                minHeight: 10.0,
                value: double.parse(
                        data['moisture'].toString().replaceAll('%', '')) /
                    100,
                color: Colors.blue.withAlpha(100),
                backgroundColor: Colors.blue.withAlpha(50),
              ),
            ],
          ),
        ));
  }

  Widget listItem5({required Map data}) {
    // ignore: prefer_const_constructors
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        height: 75,
        color: const Color.fromARGB(255, 221, 244, 239),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                // ignore: prefer_interpolation_to_compose_strings
                'Plot 5',
                style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                // ignore: prefer_interpolation_to_compose_strings
                'Moisture level: ' + data['moisture'].toString(),
                style: const TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 4,
              ),
              LinearProgressIndicator(
                //Here you pass the percentage
                minHeight: 10.0,
                value: double.parse(
                        data['moisture'].toString().replaceAll('%', '')) /
                    100,
                color: Colors.blue.withAlpha(100),
                backgroundColor: Colors.blue.withAlpha(50),
              ),
            ],
          ),
        ));
  }

  Widget listItem6({required Map data}) {
    // ignore: prefer_const_constructors
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        height: 75,
        color: const Color.fromARGB(255, 221, 244, 239),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                // ignore: prefer_interpolation_to_compose_strings
                'Plot 6',
                style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                // ignore: prefer_interpolation_to_compose_strings
                'Moisture level: ' + data['moisture'].toString(),
                style: const TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 4,
              ),
              LinearProgressIndicator(
                //Here you pass the percentage
                minHeight: 10.0,
                value: double.parse(
                        data['moisture'].toString().replaceAll('%', '')) /
                    100,
                color: Colors.blue.withAlpha(100),
                backgroundColor: Colors.blue.withAlpha(50),
              ),
            ],
          ),
        ));
  }

  Widget listItem7({required Map data}) {
    // ignore: prefer_const_constructors
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        height: 75,
        color: const Color.fromARGB(255, 221, 244, 239),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                // ignore: prefer_interpolation_to_compose_strings
                'Plot 7',
                style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                // ignore: prefer_interpolation_to_compose_strings
                'Moisture level: ' + data['moisture'].toString(),
                style: const TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 4,
              ),
              LinearProgressIndicator(
                //Here you pass the percentage
                minHeight: 10.0,
                value: double.parse(
                        data['moisture'].toString().replaceAll('%', '')) /
                    100,
                color: Colors.blue.withAlpha(100),
                backgroundColor: Colors.blue.withAlpha(50),
              ),
            ],
          ),
        ));
  }

  Widget listItem8({required Map data}) {
    // ignore: prefer_const_constructors
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        height: 75,
        color: const Color.fromARGB(255, 221, 244, 239),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                // ignore: prefer_interpolation_to_compose_strings
                'Plot 8',
                style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                // ignore: prefer_interpolation_to_compose_strings
                'Moisture level: ' + data['moisture'].toString(),
                style: const TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 4,
              ),
              LinearProgressIndicator(
                //Here you pass the percentage
                minHeight: 10.0,
                value: double.parse(
                        data['moisture'].toString().replaceAll('%', '')) /
                    100,
                color: Colors.blue.withAlpha(100),
                backgroundColor: Colors.blue.withAlpha(50),
              ),
            ],
          ),
        ));
  }

  Widget listItem9({required Map data}) {
    // ignore: prefer_const_constructors
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        height: 55,
        color: const Color.fromARGB(255, 221, 244, 239),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                // ignore: prefer_interpolation_to_compose_strings
                'Battery level: ' + data['Battery-level'].toString(),
                style: const TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 4,
              ),
              LinearProgressIndicator(
                //Here you pass the percentage
                minHeight: 10.0,
                value: double.parse(
                        data['Battery-level'].toString().replaceAll('%', '')) /
                    100,
                color: Colors.blue.withAlpha(100),
                backgroundColor: Colors.blue.withAlpha(50),
              ),
            ],
          ),
        ));
  }

  Widget listItem10({required Map data}) {
    // ignore: prefer_const_constructors
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        height: 55,
        color: const Color.fromARGB(255, 221, 244, 239),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                // ignore: prefer_interpolation_to_compose_strings
                'Water Tank Level: ' + data['Water-level'].toString(),
                style: const TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 4,
              ),
              LinearProgressIndicator(
                //Here you pass the percentage
                minHeight: 10.0,
                value: double.parse(
                        data['Water-level'].toString().replaceAll('%', '')) /
                    100,
                color: Colors.blue.withAlpha(100),
                backgroundColor: Colors.blue.withAlpha(50),
              ),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 244, 239),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(12),
                padding: const EdgeInsets.all(12),
                height: 43,
                width: double.infinity,
                color: const Color.fromARGB(255, 221, 244, 239),
                child: const Text('Most recent data is on top',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Raleway')),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 400,
                width: 400,
                child: FirebaseAnimatedList(
                  query: dbRef
                      .orderByChild('timestamp')
                      .endAt(DateTime.now().millisecondsSinceEpoch)
                      .limitToFirst(21),
                  itemBuilder: (BuildContext context, DataSnapshot snapshot,
                      Animation<double> animation, int index) {
                    Map data = snapshot.value as Map;
                    data['key'] = snapshot.key;
                    return listItem(
                      data: data,
                    );
                  },
                  reverse: true,
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 400,
                width: 400,
                child: FirebaseAnimatedList(
                  query: dbRef2
                      .orderByChild('timestamp')
                      .endAt(DateTime.now().millisecondsSinceEpoch)
                      .limitToFirst(21),
                  itemBuilder: (BuildContext context, DataSnapshot snapshot,
                      Animation<double> animation, int index) {
                    Map data = snapshot.value as Map;
                    data['key'] = snapshot.key;
                    return listItem2(
                      data: data,
                    );
                  },
                  reverse: true,
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 400,
                width: double.infinity,
                child: FirebaseAnimatedList(
                  query: dbRef3
                      .orderByChild('timestamp')
                      .endAt(DateTime.now().millisecondsSinceEpoch)
                      .limitToFirst(21),
                  itemBuilder: (BuildContext context, DataSnapshot snapshot,
                      Animation<double> animation, int index) {
                    Map data = snapshot.value as Map;
                    data['key'] = snapshot.key;
                    return listItem3(
                      data: data,
                    );
                  },
                  reverse: true,
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 400,
                width: double.infinity,
                child: FirebaseAnimatedList(
                  query: dbRef4
                      .orderByChild('timestamp')
                      .endAt(DateTime.now().millisecondsSinceEpoch)
                      .limitToFirst(21),
                  itemBuilder: (BuildContext context, DataSnapshot snapshot,
                      Animation<double> animation, int index) {
                    Map data = snapshot.value as Map;
                    data['key'] = snapshot.key;
                    return listItem4(
                      data: data,
                    );
                  },
                  reverse: true,
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 400,
                width: double.infinity,
                child: FirebaseAnimatedList(
                  query: dbRef5
                      .orderByChild('timestamp')
                      .endAt(DateTime.now().millisecondsSinceEpoch)
                      .limitToFirst(21),
                  itemBuilder: (BuildContext context, DataSnapshot snapshot,
                      Animation<double> animation, int index) {
                    Map data = snapshot.value as Map;
                    data['key'] = snapshot.key;
                    return listItem5(
                      data: data,
                    );
                  },
                  reverse: true,
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 400,
                width: double.infinity,
                child: FirebaseAnimatedList(
                  query: dbRef6
                      .orderByChild('timestamp')
                      .endAt(DateTime.now().millisecondsSinceEpoch)
                      .limitToFirst(21),
                  itemBuilder: (BuildContext context, DataSnapshot snapshot,
                      Animation<double> animation, int index) {
                    Map data = snapshot.value as Map;
                    data['key'] = snapshot.key;
                    return listItem6(
                      data: data,
                    );
                  },
                  reverse: true,
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 400,
                width: double.infinity,
                child: FirebaseAnimatedList(
                  query: dbRef7
                      .orderByChild('timestamp')
                      .endAt(DateTime.now().millisecondsSinceEpoch)
                      .limitToFirst(21),
                  itemBuilder: (BuildContext context, DataSnapshot snapshot,
                      Animation<double> animation, int index) {
                    Map data = snapshot.value as Map;
                    data['key'] = snapshot.key;
                    return listItem7(
                      data: data,
                    );
                  },
                  reverse: true,
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 400,
                width: double.infinity,
                child: FirebaseAnimatedList(
                  query: dbRef8
                      .orderByChild('timestamp')
                      .endAt(DateTime.now().millisecondsSinceEpoch)
                      .limitToFirst(21),
                  itemBuilder: (BuildContext context, DataSnapshot snapshot,
                      Animation<double> animation, int index) {
                    Map data = snapshot.value as Map;
                    data['key'] = snapshot.key;
                    return listItem8(
                      data: data,
                    );
                  },
                  reverse: true,
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 400,
                width: double.infinity,
                child: FirebaseAnimatedList(
                  query: dbRef9
                      .orderByChild('timestamp')
                      .endAt(DateTime.now().millisecondsSinceEpoch)
                      .limitToFirst(21),
                  itemBuilder: (BuildContext context, DataSnapshot snapshot,
                      Animation<double> animation, int index) {
                    Map data = snapshot.value as Map;
                    data['key'] = snapshot.key;
                    return listItem9(
                      data: data,
                    );
                  },
                  reverse: true,
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 400,
                width: double.infinity,
                child: FirebaseAnimatedList(
                  query: dbRef10
                      .orderByChild('timestamp')
                      .endAt(DateTime.now().millisecondsSinceEpoch)
                      .limitToFirst(21),
                  itemBuilder: (BuildContext context, DataSnapshot snapshot,
                      Animation<double> animation, int index) {
                    Map data = snapshot.value as Map;
                    data['key'] = snapshot.key;
                    return listItem10(
                      data: data,
                    );
                  },
                  reverse: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
