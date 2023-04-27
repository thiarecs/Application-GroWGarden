import 'package:flutter/material.dart';
import 'package:grow_garden/auth_controller.dart';
import '_widgets.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:firebase_database/firebase_database.dart';

class MyFirstPage extends StatefulWidget {
  const MyFirstPage({super.key, required this.title, required String email});

  final String title;

  @override
  State<MyFirstPage> createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 221, 244, 239),
          title: const Text(
            'GroW Garden',
            style: TextStyle(
                fontFamily: 'Alkatra',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 32),
          ),
          leading: IconButton(
            icon: Image.asset('assets/images/logo5.png'),
            onPressed: () {},
          )),
      body: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Query dbRef = FirebaseDatabase.instance.ref().child('System');
  //this shows the current battery level and water tank level
  Widget listItem({required Map data}) {
    // ignore: prefer_const_constructors
    return Center(
      child: Text(
        // ignore: prefer_interpolation_to_compose_strings
        'Battery Level: ' +
            data['Battery %'].substring(0, 5) +
            '%' +
            ' | Water Tank Level: ' +
            data['Tank Level'].substring(0, 5) +
            '%',
        style: const TextStyle(
            fontFamily: 'EduNSWACTFoundation',
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background10.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(height: 40),
            Expanded(
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
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 102, 124, 138),
                padding:
                    const EdgeInsets.symmetric(horizontal: 88, vertical: 50.0),
                shape: const StadiumBorder(),
              ),
              child: const Text(
                'CURRENT STATE',
                style: TextStyle(
                    fontFamily: 'EduNSWACTFoundation',
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThirdRoute()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 102, 124, 138),
                padding: const EdgeInsets.symmetric(
                    horizontal: 105.0, vertical: 50.0),
                shape: const StadiumBorder(),
              ),
              child: const Text(
                'ACTIVITY LOG',
                style: TextStyle(
                    fontFamily: 'EduNSWACTFoundation',
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FourthRoute()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 102, 124, 138),
                padding: const EdgeInsets.symmetric(
                    horizontal: 130.0, vertical: 50.0),
                shape: const StadiumBorder(),
              ),
              child: const Text(
                'GRAPHS',
                style: TextStyle(
                    // color: Colors.white70,
                    fontFamily: 'EduNSWACTFoundation',
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                AuthController.instance.logOut();
              },
              child: Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/color2.png"),
                        fit: BoxFit.cover)),
                child: const Center(
                  child: Text(
                    "Sign out",
                    style: TextStyle(
                      fontFamily: 'Alkatra',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
