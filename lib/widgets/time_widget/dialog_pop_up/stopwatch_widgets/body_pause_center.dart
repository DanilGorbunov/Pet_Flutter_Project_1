// import 'package:flutter/material.dart';

// import '../../header_body_in_timer.dart';

// class BodyPauseWidget extends StatefulWidget {
//   BodyPauseWidget({Key? key}) : super(key: key);

//   @override
//   State<BodyPauseWidget> createState() => _BodyPauseWidgetState();
// }

// class _BodyPauseWidgetState extends State<BodyPauseWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         //mainAxisSize: MainAxisSize.min,

//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Container(
//             child: Padding(
//               padding: const EdgeInsets.only(
//                 left: 20,
//                 right: 20,
//               ),
//               child: HeaderBodyInTimer(),
//             ),
//           ),

//           Padding(
//             padding: EdgeInsets.only(
//               //!isPortrait && height < 400 ? 3 : 10,
//               top: !isPortrait ? 150 : 120,
//               bottom: 0,
//             ),
//             child: !isPortrait ? BodyTimer() : BodyTimerPortrait(),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 10),
//             child: Container(
//               child: RowTimerButtons(context),
//             ),
//           ),
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 30, left: 30),
//                 child: Image.asset(
//                   'assets/images/logo.png',
//                   height: 30,
//                 ),
//               ),
//             ],
//           ), //Cente
//         ],
//       ),
//     );
//   }
// }



// // Center BodyPauseCenter(BuildContext context) {
// //     return Center(
// //       child: Column(
// //         //mainAxisSize: MainAxisSize.min,

// //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //         children: [
// //           Container(
// //             child: Padding(
// //               padding: const EdgeInsets.only(
// //                 left: 20,
// //                 right: 20,
// //               ),
// //               child: HeaderBodyInTimer(),
// //             ),
// //           ),

// //           Padding(
// //             padding: EdgeInsets.only(
// //               //!isPortrait && height < 400 ? 3 : 10,
// //               top: !isPortrait ? 150 : 120,
// //               bottom: 0,
// //             ),
// //             child: !isPortrait ? BodyTimer() : BodyTimerPortrait(),
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.only(bottom: 10),
// //             child: Container(
// //               child: RowTimerButtons(context),
// //             ),
// //           ),
// //           Row(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Padding(
// //                 padding: const EdgeInsets.only(bottom: 30, left: 30),
// //                 child: Image.asset(
// //                   'assets/images/logo.png',
// //                   height: 30,
// //                 ),
// //               ),
// //             ],
// //           ), //Cente
// //         ],
// //       ),
// //     );
// //   }