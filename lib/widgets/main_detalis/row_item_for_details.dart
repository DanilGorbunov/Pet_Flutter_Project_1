// import 'package:flutter/material.dart';

// class RowItemDetails extends StatefulWidget {
//   RowItemDetails({Key? key}) : super(key: key);

//   @override
//   State<RowItemDetails> createState() => _RowItemDetailsState();
// }

// class _RowItemDetailsState extends State<RowItemDetails> {
//   @override
//   Widget build(BuildContext context) {
   
//     return Stack(
//       children: <Widget>[
//         (Container(
//           height: 70,
//           decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topRight,
//                 end: Alignment.bottomLeft,
//                 colors: [
//                   Color.fromRGBO(32, 32, 32, 1),
//                   Color.fromRGBO(74, 40, 41, 1),
//                 ],
//               ),
//               borderRadius: BorderRadius.all(Radius.circular(0)),
//               boxShadow: [
//                 BoxShadow(
//                   // color: Colors.blue.withOpacity(0.1),
//                   blurRadius: 8,
//                   offset: Offset(0, 2),
//                 )
//               ]),
//           clipBehavior: Clip.hardEdge,
//         )),
//         Row(
//           children: [
//             RectangleWidgetListDetail(),
//             Triangle_Widget_Red(),
//             TextFirstItem(),
//             lap_time(),
//             blink_button(),
//             SizedBox(width: 10),
//           ],
//         ),
//       ],
//     );
//   }
  