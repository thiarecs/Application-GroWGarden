// import 'package:firebase_database/ui/firebase_animated_list.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_database/firebase_database.dart';

// class ActivityLog extends StatefulWidget {
//   const ActivityLog({Key? key}) : super(key: key);

//   @override
//   State<ActivityLog> createState() => _ActivityLogState();
// }

// class _ActivityLogState extends State<ActivityLog> {
//   Query dbRef = FirebaseDatabase.instance.ref().child('Plots');

//   Widget listItem({required Map data}) {
//     // ignore: prefer_const_constructors
//     return Container(
//         margin: const EdgeInsets.all(10),
//         padding: const EdgeInsets.all(10),
//         height: 110,
//         color: const Color.fromARGB(255, 221, 244, 239),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 // ignore: prefer_interpolation_to_compose_strings
//                 data['Plot-num'],
//                 style: const TextStyle(
//                     fontFamily: 'Oswald',
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(
//                 width: double.infinity,
//                 height: 4,
//               ),
//               Text(
//                 // ignore: prefer_interpolation_to_compose_strings
//                 'Plot Status:   ' + data['Plot-status'],
//                 style: const TextStyle(
//                     fontFamily: 'Raleway',
//                     fontSize: 15,
//                     fontWeight: FontWeight.w400),
//               ),
//               const SizedBox(
//                 width: double.infinity,
//                 height: 2,
//               ),
//               Text(
//                 // ignore: prefer_interpolation_to_compose_strings
//                 'Moisture Amount (0-100):   ' + data['Plot-val'],
//                 style: const TextStyle(
//                     fontFamily: 'Raleway',
//                     fontSize: 15,
//                     fontWeight: FontWeight.w400),
//               ),
//               const SizedBox(
//                 width: double.infinity,
//                 height: 2,
//               ),
//               Text(
//                 // ignore: prefer_interpolation_to_compose_strings
//                 'Last Watered: ' + data['Year'] + ' ' + data['Time'],
//                 style: const TextStyle(
//                     fontFamily: 'Raleway',
//                     fontSize: 15,
//                     fontWeight: FontWeight.w400),
//               ),
//             ],
//           ),
//         ));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 221, 244, 239),
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/images/background.png"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Row(
//           children: <Widget>[
//             Expanded(
//               child: SizedBox(
//                 height: double.infinity,
//                 child: FirebaseAnimatedList(
//                   query: dbRef.limitToFirst(56),
//                   itemBuilder: (BuildContext context, DataSnapshot snapshot,
//                       Animation<double> animation, int index) {
//                     Map data = snapshot.value as Map;
//                     data['key'] = snapshot.key;
//                     return listItem(
//                       data: data,
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
