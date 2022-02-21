import 'package:flutter/material.dart';
import 'package:haoura1/prescriptionView.dart';
import 'package:haoura1/tableValue.dart';
import 'package:haoura1/utils1.dart';

import 'ClinicSingleView.dart';
import 'ViewLabReportScreen.dart';
import 'docPrescriptionView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: // ViewLabReportScreen()
          DocPrescriptionView(),
    );
  }
}
//         home: BottomSheet(
//       onClosing: () {},
//       builder: (BuildContext context) {
//         return Scaffold(
//           body: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 buildButton(
//                   text: 'click here',
//                   onClicked: () => showModalBottomSheet(
//                       backgroundColor: Colors.transparent,
//                       isScrollControlled: true,

//                       // enableDrag: false,
//                       context: context,
//                       builder: (context) => buildSheet()),
//                 )
//               ],
//             ),
//           ),
//         );
//       },
//     )
//         //ViewBooking()
//         // Profile(),
//         // Home()
//         // Login()
//         );
//   }
// }

// buildButton({
//   required String text,
//   required VoidCallback onClicked,
// }) =>
//     ElevatedButton(
//         style: ElevatedButton.styleFrom(shape: StadiumBorder()),
//         onPressed: onClicked,
//         child: Text(text));

// Widget buildSheet() => DraggableScrollableSheet(
//     initialChildSize: 0.7,
//     maxChildSize: 0.8,
//     minChildSize: 0.3,
//     builder: (_, controller) => Container(
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(20), topRight: Radius.circular(20))),
//           child: ListView(
//             controller: controller,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 30, left: 20),
//                 child: Text(
//                   'Medicine Prescription',
//                   style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 10, left: 20),
//                 child: Text(
//                   '17 - 11 - 2022',
//                   style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(25),
//                 child: Flexible(
//                   child: Container(
//                     width: double.infinity,
//                     // height: 200,
//                     decoration: BoxDecoration(
//                         color: Colors.grey[200],
//                         borderRadius: BorderRadius.circular(20)),
//                     child: Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Expanded(
//                               flex: 1,
//                               child: Align(
//                                 alignment: Alignment.topLeft,
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(
//                                       left: 15, top: 20, right: 15, bottom: 0),
//                                   child: Text(
//                                     'Medicine',
//                                     style: TextStyle(
//                                         fontSize: 15,
//                                         fontWeight: FontWeight.w500),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Expanded(
//                               flex: 1,
//                               child: Align(
//                                 alignment: Alignment.topCenter,
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(
//                                       left: 15, top: 20, right: 15, bottom: 0),
//                                   child: Text(
//                                     'Quantitty',
//                                     style: TextStyle(
//                                         fontSize: 15,
//                                         fontWeight: FontWeight.w500),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Expanded(
//                               flex: 1,
//                               child: Align(
//                                 alignment: Alignment.topRight,
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(
//                                       left: 15, top: 20, right: 15, bottom: 0),
//                                   child: Text(
//                                     'Comments',
//                                     style: TextStyle(
//                                         fontSize: 15,
//                                         fontWeight: FontWeight.w500),
//                                   ),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Divider(),
//                         ),
//                         Flexible(
//                             child: ListView.builder(
//                                 shrinkWrap: true,
//                                 itemCount: listview1.length,
//                                 itemBuilder: (BuildContext ctx, int index) {
//                                   return Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       Expanded(
//                                         flex: 1,
//                                         child: Padding(
//                                           padding: const EdgeInsets.all(15),
//                                           child: Align(
//                                             alignment: Alignment.topLeft,
//                                             child: Text(
//                                                 listview1[index].medicineName),
//                                           ),
//                                         ),
//                                       ),
//                                       Expanded(
//                                         flex: 1,
//                                         child: Padding(
//                                           padding: const EdgeInsets.all(15),
//                                           child: Align(
//                                             alignment: Alignment.topCenter,
//                                             child: Text(listview1[index].qty),
//                                           ),
//                                         ),
//                                       ),
//                                       Expanded(
//                                         flex: 1,
//                                         child: Padding(
//                                           padding: const EdgeInsets.all(15),
//                                           child: Align(
//                                             alignment: Alignment.topRight,
//                                             child:
//                                                 Text(listview1[index].comments),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   );
//                                 }))
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 20, top: 20),
//                 child: Align(
//                   alignment: Alignment.topLeft,
//                   child: Text('Lab Test Details',
//                       style:
//                           TextStyle(fontSize: 17, fontWeight: FontWeight.w700)),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(20),
//                 child: Align(
//                   alignment: Alignment.topLeft,
//                   child: Text(
//                       'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore,',
//                       style: TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.w400,
//                       )),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 20, top: 20),
//                 child: Align(
//                   alignment: Alignment.topLeft,
//                   child: Text('Other Details',
//                       style:
//                           TextStyle(fontSize: 17, fontWeight: FontWeight.w700)),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(20),
//                 child: Align(
//                   alignment: Alignment.topLeft,
//                   child: Text(
//                       'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore  ,',
//                       style: TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.w400,
//                       )),
//                 ),
//               ),
//               Flexible(
//                 child: Padding(
//                   padding: const EdgeInsets.only(
//                       left: 20, right: 20, top: 10, bottom: 10),
//                   child: SizedBox(
//                       width: double.infinity,
//                       height: 60,
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         child: Text('Done'),
//                         style: ElevatedButton.styleFrom(primary: Colors.black),
//                       )),
//                 ),
//               )
//             ],
//           ),
//         ));

// List<TableValue> listview1 = Utils1.getMockedTableView();
