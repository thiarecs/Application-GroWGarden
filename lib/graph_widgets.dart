import 'package:flutter/material.dart';
import 'package:grow_garden/graph_e_five.dart';
import 'package:grow_garden/graph_d_four.dart';
import 'package:grow_garden/graph_a_one.dart';
import 'package:grow_garden/graph_g_seven.dart';
import 'package:grow_garden/graph_f_six.dart';
import 'package:grow_garden/graph_c_three.dart';
import 'package:grow_garden/graph_b_two.dart';
import 'package:grow_garden/graph_h_eight.dart';
import 'package:grow_garden/graph_i_battery.dart';
import 'package:grow_garden/graph_j_water.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 244, 239),
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 221, 244, 239),
          title: const Text(
            'Mositure Graph Plot #1',
            style: TextStyle(
                fontFamily: 'Alkatra',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 28),
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
        child: const Graph(),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 221, 244, 239),
          title: const Text(
            'Mositure Graph Plot #2',
            style: TextStyle(
                fontFamily: 'Alkatra',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 28),
          ),
          leading: IconButton(
            icon: Image.asset('assets/images/arrow.PNG'),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      backgroundColor: const Color.fromARGB(255, 221, 244, 239),
      body: const GraphTwo(),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 221, 244, 239),
          title: const Text(
            'Mositure Graph Plot #3',
            style: TextStyle(
                fontFamily: 'Alkatra',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 28),
          ),
          leading: IconButton(
            icon: Image.asset('assets/images/arrow.PNG'),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      backgroundColor: const Color.fromARGB(255, 221, 244, 239),
      body: const GraphThree(),
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
          backgroundColor: const Color.fromARGB(2255, 221, 244, 239),
          title: const Text(
            'Mositure Graph Plot #4',
            style: TextStyle(
                fontFamily: 'Alkatra',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 28),
          ),
          leading: IconButton(
            icon: Image.asset('assets/images/arrow.PNG'),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      backgroundColor: const Color.fromARGB(255, 221, 244, 239),
      body: const GraphFour(),
    );
  }
}

class FifthRoute extends StatelessWidget {
  const FifthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 221, 244, 239),
          title: const Text(
            'Mositure Graph Plot #5',
            style: TextStyle(
                fontFamily: 'Alkatra',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 28),
          ),
          leading: IconButton(
            icon: Image.asset('assets/images/arrow.PNG'),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      backgroundColor: const Color.fromARGB(255, 221, 244, 239),
      body: const GraphFive(),
    );
  }
}

class SixthRoute extends StatelessWidget {
  const SixthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 221, 244, 239),
          title: const Text(
            'Mositure Graph Plot #6',
            style: TextStyle(
                fontFamily: 'Alkatra',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 28),
          ),
          leading: IconButton(
            icon: Image.asset('assets/images/arrow.PNG'),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      backgroundColor: const Color.fromARGB(255, 221, 244, 239),
      body: const GraphSix(),
    );
  }
}

class SeventhRoute extends StatelessWidget {
  const SeventhRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 221, 244, 239),
          title: const Text(
            'Mositure Graph Plot #7',
            style: TextStyle(
                fontFamily: 'Alkatra',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 28),
          ),
          leading: IconButton(
            icon: Image.asset('assets/images/arrow.PNG'),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      backgroundColor: const Color.fromARGB(255, 221, 244, 239),
      body: const GraphSeven(),
    );
  }
}

class EigthRoute extends StatelessWidget {
  const EigthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 221, 244, 239),
          title: const Text(
            'Mositure Graph Plot #8',
            style: TextStyle(
                fontFamily: 'Alkatra',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 28),
          ),
          leading: IconButton(
            icon: Image.asset('assets/images/arrow.PNG'),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      backgroundColor: const Color.fromARGB(255, 221, 244, 239),
      body: const GraphEight(),
    );
  }
}

class NinthRoute extends StatelessWidget {
  const NinthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 221, 244, 239),
          title: const Text(
            'Battery Level Graph',
            style: TextStyle(
                fontFamily: 'Alkatra',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 28),
          ),
          leading: IconButton(
            icon: Image.asset('assets/images/arrow.PNG'),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      backgroundColor: const Color.fromARGB(255, 221, 244, 239),
      body: const GraphNine(),
    );
  }
}

class TenthRoute extends StatelessWidget {
  const TenthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 221, 244, 239),
          title: const Text(
            'Water Tank Level Graph',
            style: TextStyle(
                fontFamily: 'Alkatra',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 28),
          ),
          leading: IconButton(
            icon: Image.asset('assets/images/arrow.PNG'),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      backgroundColor: const Color.fromARGB(255, 221, 244, 239),
      body: const GraphTen(),
    );
  }
}
