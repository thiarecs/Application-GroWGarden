import 'package:flutter/material.dart';
import 'graph_widgets.dart';

class GraphPage extends StatefulWidget {
  const GraphPage({Key? key}) : super(key: key);

  @override
  State<GraphPage> createState() => _GraphPageState();
}

class _GraphPageState extends State<GraphPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 221, 244, 239),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FirstRoute()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 102, 124, 138),
              padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 17),
              shape: const StadiumBorder(),
              textStyle:
                  const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            child: const Text('Moisture Graph for Plot #1'),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondRoute()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 102, 124, 138),
              padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 17),
              shape: const StadiumBorder(),
              textStyle:
                  const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            child: const Text('Moisture Graph for Plot #2'),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ThirdRoute()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 102, 124, 138),
              padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 17),
              shape: const StadiumBorder(),
              textStyle:
                  const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            child: const Text('Moisture Graph for Plot #3'),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FourthRoute()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 102, 124, 138),
              padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 17),
              shape: const StadiumBorder(),
              textStyle:
                  const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            child: const Text('Moisture Graph for Plot #4'),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FifthRoute()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 102, 124, 138),
              padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 17),
              shape: const StadiumBorder(),
              textStyle:
                  const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            child: const Text('Moisture Graph for Plot #5'),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SixthRoute()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 102, 124, 138),
              padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 17),
              shape: const StadiumBorder(),
              textStyle:
                  const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            child: const Text('Moisture Graph for Plot #6'),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SeventhRoute()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 102, 124, 138),
              padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 17),
              shape: const StadiumBorder(),
              textStyle:
                  const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            child: const Text('Moisture Graph for Plot #7'),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EigthRoute()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 102, 124, 138),
              padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 17),
              shape: const StadiumBorder(),
              textStyle:
                  const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            child: const Text('Moisture Graph for Plot #8'),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NinthRoute()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 102, 124, 138),
              padding:
                  const EdgeInsets.symmetric(horizontal: 125, vertical: 17),
              shape: const StadiumBorder(),
              textStyle:
                  const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            child: const Text('Battery Level'),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TenthRoute()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 102, 124, 138),
              padding:
                  const EdgeInsets.symmetric(horizontal: 110, vertical: 17),
              shape: const StadiumBorder(),
              textStyle:
                  const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            child: const Text('Water Tank Level'),
          ),
        ],
      ),
    );
  }
}
