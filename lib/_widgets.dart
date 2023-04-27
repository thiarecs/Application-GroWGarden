import 'package:flutter/material.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:grow_garden/updated_activity_log.dart';
import 'package:grow_garden/graph_homepage.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  Query dbRef = FirebaseDatabase.instance.ref().child('Plots');

  Widget listItem({required Map data}) {
    // ignore: prefer_const_constructors
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        height: 140,
        color: const Color.fromARGB(255, 221, 244, 239),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                // ignore: prefer_interpolation_to_compose_strings
                data['Plot-num'],
                style: const TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: double.infinity,
                height: 4,
              ),
              Text(
                // ignore: prefer_interpolation_to_compose_strings
                'Plot Status:   ' + data['Plot-status'],
                style: const TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                width: double.infinity,
                height: 4,
              ),
              const Text(
                // ignore: prefer_interpolation_to_compose_strings
                'Moisture Amount (0-100):',
                style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                // ignore: prefer_interpolation_to_compose_strings
                data['Plot-val'] + '  %',
                style: const TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              LinearProgressIndicator(
                //Here you pass the percentage
                minHeight: 10.0,
                value: double.parse(data['Plot-val'].replaceAll('%', '')) / 100,
                color: Colors.blue.withAlpha(100),
                backgroundColor: Colors.blue.withAlpha(50),
              ),
              const SizedBox(
                width: double.infinity,
                height: 4,
              ),
              Text(
                // ignore: prefer_interpolation_to_compose_strings
                'Date/Time: ' + data['Year'] + ' ' + data['Time'],
                style: const TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color.fromARGB(255, 221, 244, 239),
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 221, 244, 239),
          title: const Text(
            'Current State',
            style: TextStyle(
                fontFamily: 'Alkatra',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 40),
          ),
          leading: IconButton(
            icon: Image.asset('assets/images/arrow.PNG'),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            height: double.infinity,
            child: FirebaseAnimatedList(
              query: dbRef.limitToLast(8),
              itemBuilder: (BuildContext context, DataSnapshot snapshot,
                  Animation<double> animation, int index) {
                Map data = snapshot.value as Map;
                data['key'] = snapshot.key;

                return listItem(data: data);
              },
            ),
          )),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color.fromARGB(255, 221, 244, 239),
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 221, 244, 239),
          title: const Text(
            'Activity Log',
            style: TextStyle(
                fontFamily: 'Alkatra',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 40),
          ),
          leading: IconButton(
            icon: Image.asset('assets/images/arrow.PNG'),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: const ActivityLog(),
    );
  }
}

class FourthRoute extends StatelessWidget {
  const FourthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 221, 244, 239),
          title: const Text(
            'Graphs',
            style: TextStyle(
                fontFamily: 'Alkatra',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 32),
          ),
          leading: IconButton(
            icon: Image.asset('assets/images/arrow.PNG'),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      backgroundColor: const Color.fromARGB(255, 221, 244, 239),
      body: const GraphPage(),
    );
  }
}
