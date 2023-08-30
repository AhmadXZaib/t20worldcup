// import 'package:flutter/material.dart';
// import 'package:t20worldcup/models/university_model.dart';
// import 'package:t20worldcup/utility/universitydatahandle.dart';

// class UniversityScreen extends StatelessWidget {
//   const UniversityScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: const IconThemeData(color: Colors.white),
//         backgroundColor: Colors.purple,
//         title: const Text(
//           'University ',
//           style: TextStyle(fontSize: 25, color: Colors.white),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: FutureBuilder<UniversityModel>(
//           future: UniversityDataHandle.getAllUniversity(context),
//           builder: (BuildContext context, snapshot) {
//             var myData = snapshot.data!.item;

//             if (snapshot.hasData) {
//               return Column(
//                 children: [
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Container(
//                     height: 70,
//                     width: 350,
//                     decoration: BoxDecoration(
//                         color: Colors.purple,
//                         borderRadius: BorderRadius.circular(50)),
//                     child: Center(
//                       child: Text(
//                         snapshot.data!.department.toString(),
//                         style: const TextStyle(
//                             fontSize: 25,
//                             color: Colors.white,
//                             backgroundColor: Colors.purple),
//                       ),
//                     ),
//                   ),
//                   Column(
//                     children: List.generate(
//                       myData!.length,
//                       (index) => Container(
//                         margin: const EdgeInsets.all(12),
//                         height: 150,
//                         width: 450,
//                         decoration: BoxDecoration(
//                             color: Colors.purple,
//                             borderRadius: BorderRadius.circular(20)),
//                         child: Column(
//                           children: [
//                             Text(
//                               myData[index].name.toString(),
//                               style: const TextStyle(
//                                   fontSize: 15, color: Colors.white),
//                             ),
//                             Text(
//                               myData[index].fName.toString(),
//                               style: const TextStyle(
//                                   fontSize: 15, color: Colors.white),
//                             ),
//                             Text(
//                               myData[index].age.toString(),
//                               style: const TextStyle(
//                                   fontSize: 15, color: Colors.white),
//                             ),
//                             Text(
//                               myData[index].phone.toString(),
//                               style: const TextStyle(
//                                   fontSize: 15, color: Colors.white),
//                             ),
//                             Text(
//                               myData[index].regNo.toString(),
//                               style: const TextStyle(
//                                   fontSize: 15, color: Colors.white),
//                             ),
//                             Text(
//                               myData[index].cGPA.toString(),
//                               style: const TextStyle(
//                                   fontSize: 20, color: Colors.white),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               );
//             } else {
//               return const Center(child: CircularProgressIndicator());
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
