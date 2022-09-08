// import 'package:countdown_progress_indicator/countdown_progress_indicator.dart';
// import 'package:flutter/material.dart';

// class TimerWidget extends StatefulWidget {
//   const TimerWidget({Key? key}) : super(key: key);

//   @override
//   _TimerWidgetState createState() => _TimerWidgetState();
// }

// class _TimerWidgetState extends State<TimerWidget> {
//   bool _isRunning = true;
//   final _controller = CountDownController();
//   final _controller2 = CountDownController();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Column(
//           // crossAxisAlignment: CrossAxisAlignment.strestarttch,
//           // mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             SizedBox(
//               child: Container(
//                 decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment.topRight,
//                       end: Alignment.bottomLeft,
//                       colors: [
//                         Color.fromRGBO(76, 29, 44, 1),
//                         Color.fromRGBO(13, 13, 45, 1),
//                       ],
//                     ),
//                     color: const Color.fromRGBO(32, 32, 32, 1),
//                     border: Border.all(color: Colors.white.withOpacity(0.2)),
//                     borderRadius: BorderRadius.all(Radius.circular(0)),
//                     boxShadow: [
//                       BoxShadow(
//                         // color: Colors.blue.withOpacity(0.1),
//                         blurRadius: 8,
//                         offset: Offset(0, 2),
//                       )
//                     ]),
//                 //color: Color.fromRGBO(45, 21, 47, 1),

//                 child: Center(
//                   child: Container(
//                     child: Padding(
//                       padding: EdgeInsets.only(top: 40),
//                       child: Column(
//                         mainAxisSize: MainAxisSize.min,

//                         // crossAxisAlignment: CrossAxisAlignment.stretch,
//                         // mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Text(
//                             'Hello, ! How are you?',
//                             textAlign: TextAlign.center,
//                             overflow: TextOverflow.ellipsis,
//                             style: const TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           //TimeTitlesDescription(),
//                           const SizedBox(height: 20),
//                           BodyTimer(),
//                           const SizedBox(height: 20),
//                           RowTimerButtons(context),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Container BodyTimer() {
//     return Container(
//       child: SizedBox(
//         height: 490,
//         width: 550,
//         //   height: 275,
//         // width: 725,
//         child: CountDownProgressIndicator(
//           text: 'Delivery Duration',
//           controller: _controller,
//           valueColor: Color.fromRGBO(255, 80, 85, 1),
//           backgroundColor: Color.fromRGBO(108, 120, 45, 1),
//           initialPosition: 0,

//           timeTextStyle: TextStyle(
//             color: Color.fromRGBO(233, 233, 233, 1),
//             fontSize: 110,
//             //fontSize: 140,
//           ),
//           labelTextStyle: TextStyle(
//             color: Color.fromRGBO(233, 233, 233, 1),
//             fontSize: 40,
//           ),

//           duration: 1800,

//           timeFormatter: (seconds) {
//             return Duration(seconds: seconds)
//                 .toString()
//                 .split('.')[0]
//                 .padLeft(8, '0');
//           },
//           // text: 'sdggs',
//           //onComplete: () => null,
//         ),
//       ),
//     );
//   }

  

//   Row RowTimerButtons(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         ElevatedButton(
//           style: ElevatedButton.styleFrom(
//               fixedSize: Size(200, 60),
//               shape: new RoundedRectangleBorder(
//                 borderRadius: new BorderRadius.circular(20.0),
//               ),
//               primary: Color.fromRGBO(229, 139, 34, 1),
//               // padding: EdgeInsets.symmetric(
//               //     horizontal: 50, vertical: 20),
//               textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
//           onPressed: () => Navigator.of(context).pop(),
//           // onPressed: () => setState(() {
//           //   if (_isRunning) {
//           //     _controller.pause();
//           //     //_controller2.pause();
//           //   } else {
//           //     _controller.resume();
//           //     //_controller2.resume();
//           //   }

//           //   _isRunning = !_isRunning;
//           // }),
//           child: Container(
//             height: 30,
//             decoration: BoxDecoration(
//                 // borderRadius: BorderRadius.only(
//                 //   topRight: Radius.circular(12),
//                 //   bottomRight: Radius.circular(12),
//                 // ),
//                 //color: Color.fromRGBO(108, 120, 45, 1),
//                 ),
//             child: Text(
//               'Abort',
//               style: TextStyle(
//                 fontWeight: FontWeight.w400,
//                 fontSize: 25,
//                 color: Color.fromRGBO(233, 233, 233, 1),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(width: 20),
//         ElevatedButton(
//           style: ElevatedButton.styleFrom(
//               fixedSize: Size(200, 60),
//               shape: new RoundedRectangleBorder(
//                 borderRadius: new BorderRadius.circular(20.0),
//               ),
//               primary: Color.fromRGBO(100, 128, 252, 1),
//               // padding: EdgeInsets.symmetric(
//               //     horizontal: 50, vertical: 20),
//               textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
//           onPressed: () => setState(() {
//             if (_isRunning) {
//               _controller.pause();
//               //_controller2.pause();
//             } else {
//               _controller.resume();
//               //_controller2.resume();
//             }

//             _isRunning = !_isRunning;
//           }),
//           child: Container(
//             height: 30,
//             decoration: BoxDecoration(
//                 // borderRadius: BorderRadius.only(
//                 //   topRight: Radius.circular(12),
//                 //   bottomRight: Radius.circular(12),
//                 // ),
//                 //color: Color.fromRGBO(108, 120, 45, 1),
//                 ),
//             child: Text(
//               _isRunning ? 'Pause' : 'Continue',
//               style: TextStyle(
//                 fontWeight: FontWeight.w400,
//                 fontSize: 25,
//                 color: Color.fromRGBO(233, 233, 233, 1),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(width: 20),
//         ElevatedButton(
//           style: ElevatedButton.styleFrom(
//               fixedSize: Size(200, 60),
//               shape: new RoundedRectangleBorder(
//                 borderRadius: new BorderRadius.circular(20.0),
//               ),
//               primary: Color.fromRGBO(33, 166, 123, 1),
//               // padding: EdgeInsets.symmetric(
//               //     horizontal: 20, vertical: 10),
//               textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//           onPressed: () => Navigator.of(context).pop(),
//           // onPressed: () => setState(() {
//           //   if (_isRunning) {
//           //     _controller.pause();
//           //     //_controller2.pause();
//           //   } else {
//           //     _controller.resume();
//           //     //_controller2.resume();
//           //   }

//           //   _isRunning = !_isRunning;
//           // }
//           // ),
//           child: Container(
//             //width: 50,
//             height: 30,
//             decoration: BoxDecoration(
//                 // borderRadius: BorderRadius.only(
//                 //   topRight: Radius.circular(12),
//                 //   bottomRight: Radius.circular(12),
//                 // ),
//                 //color: Color.fromRGBO(108, 120, 45, 1),
//                 ),
//             child: Text(
//               'Delivered',
//               style: TextStyle(
//                 fontWeight: FontWeight.w400,
//                 fontSize: 25,
//                 color: Color.fromRGBO(233, 233, 233, 1),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }


// // import 'package:flutter/material.dart';
// // import 'package:timer_count_down/timer_controller.dart';
// // import 'package:timer_count_down/timer_count_down.dart';

// // // void main() => runApp(MyApp());

// // // ///
// // // /// Test app
// // // ///
// // // class MyApp extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       title: 'Countdown Demo',
// // //       theme: ThemeData(
// // //         primarySwatch: Colors.blue,
// // //       ),
// // //       home: MyHomePage(
// // //         title: 'Flutter Demo Countdown',
// // //       ),
// // //     );
// // //   }
// // // }

// // ///
// // /// Home page
// // ///
// // class MyHomePage extends StatefulWidget {
// //   ///
// //   /// AppBar title
// //   ///
// //   final String title;
// //   Duration myDuration = Duration(days: 5);

// //   /// Home page
// //   MyHomePage({
// //     Key? key,
// //     required this.title,
// //   }) : super(key: key);

// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }

// // ///
// // /// Page state
// // ///
// // class _MyHomePageState extends State<MyHomePage> {
// //   // Controller
// //   final CountdownController _controller =
// //       new CountdownController(autoStart: true);

// //   @override
// //   Widget build(BuildContext context) {
// // // String strDigits(int n) => n.toString().padLeft(2, '0');
// // //     //final days = strDigits(myDuration.inDays);
// // //     // Step 7
// // //     final hours = strDigits(myDuration.inHours.remainder(24));
// // //     final minutes = strDigits(myDuration.inMinutes.remainder(60));
// // //     final seconds = strDigits(myDuration.inSeconds.remainder(60));

// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(
// //           widget.title,
// //         ),
// //       ),
// //       body: Container(
// //         decoration: BoxDecoration(
// //             gradient: LinearGradient(
// //               begin: Alignment.topRight,
// //               end: Alignment.bottomLeft,
// //               colors: [
// //                 Color.fromRGBO(64, 31, 52, 1),
// //                 Color.fromRGBO(11, 14, 51, 1),
// //               ],
// //             ),
// //             color: const Color.fromRGBO(64, 31, 52, 1),
// //             border: Border.all(color: Colors.white.withOpacity(0.2)),
// //             borderRadius: BorderRadius.all(Radius.circular(0)),
// //             boxShadow: [
// //               BoxShadow(
// //                 // color: Colors.blue.withOpacity(0.1),
// //                 blurRadius: 8,
// //                 offset: Offset(0, 2),
// //               )
// //             ]),
// //         child: Center(
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             crossAxisAlignment: CrossAxisAlignment.center,
// //             children: <Widget>[
// //               Text(
// //                 'Length of Processing',
// //                 style: TextStyle(
// //                   fontWeight: FontWeight.w400,
// //                   fontSize: 30,
// //                   color: Color.fromRGBO(233, 233, 233, 1),
// //                 ),
// //               ),
// //               Countdown(
// //                 controller: _controller,
// //                 seconds: 3000,
// //                 build: (
// //                   BuildContext ctx,
// //                   double time,
// //                 ) =>
// //                     Text(
// //                   //'$hours:$minutes:$seconds'
// //                   //${clockTimer.inMinutes.toString()},
// //                   time.toString(),
// //                   //time.toString(),
// //                   style: TextStyle(
// //                     fontSize: 130,
// //                     color: Color.fromRGBO(233, 233, 233, 1),
// //                   ),
// //                 ),
// //                 interval: Duration(milliseconds: 100),
// //                 onFinished: () {
// //                   ScaffoldMessenger.of(context).showSnackBar(
// //                     SnackBar(
// //                       content: Text('Timer is done!'),
// //                     ),
// //                   );
// //                 },
// //               ),
// //               SizedBox(height: 120),
// //               Container(
// //                 padding: const EdgeInsets.symmetric(
// //                   horizontal: 16,
// //                 ),
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //                   children: <Widget>[
// //                     // Start
// //                     // ElevatedButton(
// //                     //   child: Text('Start'),
// //                     //   onPressed: () {
// //                     //     _controller.start();
// //                     //   },
// //                     // ),
// //                     // Pause
// //                     ElevatedButton(
// //                       child: Text(
// //                         'Cancel',
// //                       ),
// //                       onPressed: () {
// //                         _controller.restart();
// //                       },
// //                     ),
// //                     ElevatedButton(
// //                       child: Text('Pause'),
// //                       onPressed: () {
// //                         _controller.pause();
// //                       },
// //                     ),
// //                     // Resume
// //                     ElevatedButton(
// //                       child: Text('Resume'),
// //                       onPressed: () {
// //                         _controller.resume();
// //                       },
// //                     ),
// //                     // Stop
// //                     // ElevatedButton(
// //                     //   child: Text('Restart'),
// //                     //   onPressed: () {
// //                     //     _controller.restart();
// //                     //   },
// //                     // ),
// //                     ElevatedButton(
// //                       child: Text('Processed'),
// //                       onPressed: () {
// //                         _controller.restart();
// //                       },
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }


// import 'package:countdown_progress_indicator/countdown_progress_indicator.dart';
// import 'package:flutter/material.dart';

// class TimerWidget extends StatefulWidget {
//   const TimerWidget({Key? key}) : super(key: key);

//   @override
//   _TimerWidgetState createState() => _TimerWidgetState();
// }

// class _TimerWidgetState extends State<TimerWidget> {
//   bool _isRunning = true;
//   final _controller = CountDownController();
//   final _controller2 = CountDownController();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Container(
//           decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topRight,
//                 end: Alignment.bottomLeft,
//                 colors: [
//                   Color.fromRGBO(76, 29, 44, 1),
//                   Color.fromRGBO(13, 13, 45, 1),
//                 ],
//               ),
//               color: const Color.fromRGBO(32, 32, 32, 1),
//               border: Border.all(color: Colors.white.withOpacity(0.2)),
//               borderRadius: BorderRadius.all(Radius.circular(0)),
//               boxShadow: [
//                 BoxShadow(
//                   // color: Colors.blue.withOpacity(0.1),
//                   blurRadius: 8,
//                   offset: Offset(0, 2),
//                 )
//               ]),
//           //color: Color.fromRGBO(45, 21, 47, 1),
//           child: Center(
//             child: Column(
//               //mainAxisSize: MainAxisSize.min,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(
//                     left: 20,
//                     right: 20,
//                   ),
//                   child: header_body_in_timer(),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 20, right: 20),
//                   child: BodyTimer(),
//                 ),
//                 const SizedBox(height: 15),
//                 RowTimerButtons(context),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Container header_body_in_timer() {
//     return Container(
//       decoration: BoxDecoration(
//           color: const Color.fromRGBO(32, 32, 32, 1),
//           //border: Border.all(color: Colors.black.withOpacity(0.2)),
//           borderRadius: BorderRadius.all(Radius.circular(0)),
//           boxShadow: [
//             BoxShadow(
//               // color: Colors.blue.withOpacity(0.1),
//               blurRadius: 8,
//               offset: Offset(0, 2),
//             )
//           ]),
//       clipBehavior: Clip.hardEdge,
//       child: Column(
//         children: [
//           Row(
//             children: [
//               // Image(image: AssetImage(movie.imageName)),
//               SizedBox(width: 60),
//               //SizedBox(height: 20),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     //SizedBox(height: 24),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Align(
//                         alignment: Alignment.center,
//                         child: Text(
//                           'Lap',
//                           // movie.title,
//                           style: TextStyle(
//                             fontWeight: FontWeight.w400,
//                             fontSize: 20,
//                             color: Color.fromRGBO(233, 233, 233, 1),
//                           ),
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 width: 230,
//                 child: Align(
//                   alignment: Alignment.center,
//                   child: Text(
//                     'Duration',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 20,
//                       color: Color.fromRGBO(233, 233, 233, 1),
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                 width: 120,
//                 child: Align(
//                   child: Text(
//                     'Started at',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 20,
//                       color: Color.fromRGBO(233, 233, 233, 1),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(width: 30),
//               // Container(
//               //   margin: EdgeInsets.all(10),
//               //   height: 50.0,
//               //   child: RaisedButton(
//               //     shape: RoundedRectangleBorder(
//               //         borderRadius: BorderRadius.circular(18.0),
//               //         side: BorderSide(
//               //             color: Color.fromRGBO(0, 160, 227, 1))),
//               //     onPressed: () {},
//               //     padding: EdgeInsets.all(10.0),
//               //     color: Color.fromRGBO(33, 166, 123, 1),
//               //     textColor: Colors.white,
//               //     child: Text("Select",
//               //         style: TextStyle(fontSize: 25)),
//               //   ),
//               // ),
//             ],
//           ),
//           Row(
//             children: [
//               // Image(image: AssetImage(movie.imageName)),
//               SizedBox(width: 50),
//               //SizedBox(height: 20),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     //SizedBox(height: 24),
//                     Padding(
//                       padding: const EdgeInsets.all(10.0),
//                       child: Align(
//                         alignment: Alignment.center,
//                         child: Text(
//                           'Guidare',
//                           // movie.title,
//                           style: TextStyle(
//                             fontWeight: FontWeight.w700,
//                             fontSize: 27,
//                             color: Color.fromRGBO(233, 233, 233, 1),
//                           ),
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 width: 230,
//                 child: Align(
//                   alignment: Alignment.center,
//                   child: Text(
//                     '30:00',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w700,
//                       fontSize: 27,
//                       color: Color.fromRGBO(233, 233, 233, 1),
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                 width: 120,
//                 child: Align(
//                   alignment: Alignment.center,
//                   child: Text(
//                     '9:31 AM',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w700,
//                       fontSize: 27,
//                       color: Color.fromRGBO(233, 233, 233, 1),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(width: 30),
//               // Container(
//               //   margin: EdgeInsets.all(10),
//               //   height: 50.0,
//               //   child: RaisedButton(
//               //     shape: RoundedRectangleBorder(
//               //         borderRadius: BorderRadius.circular(18.0),
//               //         side: BorderSide(
//               //             color: Color.fromRGBO(0, 160, 227, 1))),
//               //     onPressed: () {},
//               //     padding: EdgeInsets.all(10.0),
//               //     color: Color.fromRGBO(33, 166, 123, 1),
//               //     textColor: Colors.white,
//               //     child: Text("Select",
//               //         style: TextStyle(fontSize: 25)),
//               //   ),
//               // ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Container BodyTimer() {
//     return Container(
//       child: SizedBox(
//         height: 490,
//         width: 550,
//         //   height: 275,
//         // width: 725,
//         child: CountDownProgressIndicator(
//           text: 'Delivery Duration',
//           controller: _controller,
//           valueColor: Color.fromRGBO(255, 80, 85, 1),
//           backgroundColor: Color.fromRGBO(108, 120, 45, 1),
//           initialPosition: 0,

//           timeTextStyle: TextStyle(
//             color: Color.fromRGBO(233, 233, 233, 1),
//             fontSize: 110,
//             //fontSize: 140,
//           ),
//           labelTextStyle: TextStyle(
//             color: Color.fromRGBO(233, 233, 233, 1),
//             fontSize: 40,
//           ),

//           duration: 1800,

//           timeFormatter: (seconds) {
//             return Duration(seconds: seconds)
//                 .toString()
//                 .split('.')[0]
//                 .padLeft(8, '0');
//           },
//           // text: 'sdggs',
//           //onComplete: () => null,
//         ),
//       ),
//     );
//   }

//   Row RowTimerButtons(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         ElevatedButton(
//           style: ElevatedButton.styleFrom(
//               fixedSize: Size(200, 60),
//               shape: new RoundedRectangleBorder(
//                 borderRadius: new BorderRadius.circular(20.0),
//               ),
//               primary: Color.fromRGBO(229, 139, 34, 1),
//               // padding: EdgeInsets.symmetric(
//               //     horizontal: 50, vertical: 20),
//               textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
//           onPressed: () => Navigator.of(context).pop(),
//           // onPressed: () => setState(() {
//           //   if (_isRunning) {
//           //     _controller.pause();
//           //     //_controller2.pause();
//           //   } else {
//           //     _controller.resume();
//           //     //_controller2.resume();
//           //   }

//           //   _isRunning = !_isRunning;
//           // }),
//           child: Container(
//             height: 30,
//             decoration: BoxDecoration(
//                 // borderRadius: BorderRadius.only(
//                 //   topRight: Radius.circular(12),
//                 //   bottomRight: Radius.circular(12),
//                 // ),
//                 //color: Color.fromRGBO(108, 120, 45, 1),
//                 ),
//             child: Text(
//               'Abort',
//               style: TextStyle(
//                 fontWeight: FontWeight.w400,
//                 fontSize: 25,
//                 color: Color.fromRGBO(233, 233, 233, 1),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(width: 20),
//         ElevatedButton(
//           style: ElevatedButton.styleFrom(
//               fixedSize: Size(200, 60),
//               shape: new RoundedRectangleBorder(
//                 borderRadius: new BorderRadius.circular(20.0),
//               ),
//               primary: Color.fromRGBO(100, 128, 252, 1),
//               // padding: EdgeInsets.symmetric(
//               //     horizontal: 50, vertical: 20),
//               textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
//           onPressed: () => setState(() {
//             if (_isRunning) {
//               _controller.pause();
//               //_controller2.pause();
//             } else {
//               _controller.resume();
//               //_controller2.resume();
//             }

//             _isRunning = !_isRunning;
//           }),
//           child: Container(
//             height: 30,
//             decoration: BoxDecoration(
//                 // borderRadius: BorderRadius.only(
//                 //   topRight: Radius.circular(12),
//                 //   bottomRight: Radius.circular(12),
//                 // ),
//                 //color: Color.fromRGBO(108, 120, 45, 1),
//                 ),
//             child: Text(
//               _isRunning ? 'Pause' : 'Continue',
//               style: TextStyle(
//                 fontWeight: FontWeight.w400,
//                 fontSize: 25,
//                 color: Color.fromRGBO(233, 233, 233, 1),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(width: 20),
//         ElevatedButton(
//           style: ElevatedButton.styleFrom(
//               fixedSize: Size(200, 60),
//               shape: new RoundedRectangleBorder(
//                 borderRadius: new BorderRadius.circular(20.0),
//               ),
//               primary: Color.fromRGBO(33, 166, 123, 1),
//               // padding: EdgeInsets.symmetric(
//               //     horizontal: 20, vertical: 10),
//               textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//           onPressed: () => Navigator.of(context).pop(),
//           // onPressed: () => setState(() {
//           //   if (_isRunning) {
//           //     _controller.pause();
//           //     //_controller2.pause();
//           //   } else {
//           //     _controller.resume();
//           //     //_controller2.resume();
//           //   }

//           //   _isRunning = !_isRunning;
//           // }
//           // ),
//           child: Container(
//             //width: 50,
//             height: 30,
//             decoration: BoxDecoration(
//                 // borderRadius: BorderRadius.only(
//                 //   topRight: Radius.circular(12),
//                 //   bottomRight: Radius.circular(12),
//                 // ),
//                 //color: Color.fromRGBO(108, 120, 45, 1),
//                 ),
//             child: Text(
//               'Delivered',
//               style: TextStyle(
//                 fontWeight: FontWeight.w400,
//                 fontSize: 25,
//                 color: Color.fromRGBO(233, 233, 233, 1),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }


// // import 'package:flutter/material.dart';
// // import 'package:timer_count_down/timer_controller.dart';
// // import 'package:timer_count_down/timer_count_down.dart';

// // // void main() => runApp(MyApp());

// // // ///
// // // /// Test app
// // // ///
// // // class MyApp extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       title: 'Countdown Demo',
// // //       theme: ThemeData(
// // //         primarySwatch: Colors.blue,
// // //       ),
// // //       home: MyHomePage(
// // //         title: 'Flutter Demo Countdown',
// // //       ),
// // //     );
// // //   }
// // // }

// // ///
// // /// Home page
// // ///
// // class MyHomePage extends StatefulWidget {
// //   ///
// //   /// AppBar title
// //   ///
// //   final String title;
// //   Duration myDuration = Duration(days: 5);

// //   /// Home page
// //   MyHomePage({
// //     Key? key,
// //     required this.title,
// //   }) : super(key: key);

// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }

// // ///
// // /// Page state
// // ///
// // class _MyHomePageState extends State<MyHomePage> {
// //   // Controller
// //   final CountdownController _controller =
// //       new CountdownController(autoStart: true);

// //   @override
// //   Widget build(BuildContext context) {
// // // String strDigits(int n) => n.toString().padLeft(2, '0');
// // //     //final days = strDigits(myDuration.inDays);
// // //     // Step 7
// // //     final hours = strDigits(myDuration.inHours.remainder(24));
// // //     final minutes = strDigits(myDuration.inMinutes.remainder(60));
// // //     final seconds = strDigits(myDuration.inSeconds.remainder(60));

// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(
// //           widget.title,
// //         ),
// //       ),
// //       body: Container(
// //         decoration: BoxDecoration(
// //             gradient: LinearGradient(
// //               begin: Alignment.topRight,
// //               end: Alignment.bottomLeft,
// //               colors: [
// //                 Color.fromRGBO(64, 31, 52, 1),
// //                 Color.fromRGBO(11, 14, 51, 1),
// //               ],
// //             ),
// //             color: const Color.fromRGBO(64, 31, 52, 1),
// //             border: Border.all(color: Colors.white.withOpacity(0.2)),
// //             borderRadius: BorderRadius.all(Radius.circular(0)),
// //             boxShadow: [
// //               BoxShadow(
// //                 // color: Colors.blue.withOpacity(0.1),
// //                 blurRadius: 8,
// //                 offset: Offset(0, 2),
// //               )
// //             ]),
// //         child: Center(
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             crossAxisAlignment: CrossAxisAlignment.center,
// //             children: <Widget>[
// //               Text(
// //                 'Length of Processing',
// //                 style: TextStyle(
// //                   fontWeight: FontWeight.w400,
// //                   fontSize: 30,
// //                   color: Color.fromRGBO(233, 233, 233, 1),
// //                 ),
// //               ),
// //               Countdown(
// //                 controller: _controller,
// //                 seconds: 3000,
// //                 build: (
// //                   BuildContext ctx,
// //                   double time,
// //                 ) =>
// //                     Text(
// //                   //'$hours:$minutes:$seconds'
// //                   //${clockTimer.inMinutes.toString()},
// //                   time.toString(),
// //                   //time.toString(),
// //                   style: TextStyle(
// //                     fontSize: 130,
// //                     color: Color.fromRGBO(233, 233, 233, 1),
// //                   ),
// //                 ),
// //                 interval: Duration(milliseconds: 100),
// //                 onFinished: () {
// //                   ScaffoldMessenger.of(context).showSnackBar(
// //                     SnackBar(
// //                       content: Text('Timer is done!'),
// //                     ),
// //                   );
// //                 },
// //               ),
// //               SizedBox(height: 120),
// //               Container(
// //                 padding: const EdgeInsets.symmetric(
// //                   horizontal: 16,
// //                 ),
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //                   children: <Widget>[
// //                     // Start
// //                     // ElevatedButton(
// //                     //   child: Text('Start'),
// //                     //   onPressed: () {
// //                     //     _controller.start();
// //                     //   },
// //                     // ),
// //                     // Pause
// //                     ElevatedButton(
// //                       child: Text(
// //                         'Cancel',
// //                       ),
// //                       onPressed: () {
// //                         _controller.restart();
// //                       },
// //                     ),
// //                     ElevatedButton(
// //                       child: Text('Pause'),
// //                       onPressed: () {
// //                         _controller.pause();
// //                       },
// //                     ),
// //                     // Resume
// //                     ElevatedButton(
// //                       child: Text('Resume'),
// //                       onPressed: () {
// //                         _controller.resume();
// //                       },
// //                     ),
// //                     // Stop
// //                     // ElevatedButton(
// //                     //   child: Text('Restart'),
// //                     //   onPressed: () {
// //                     //     _controller.restart();
// //                     //   },
// //                     // ),
// //                     ElevatedButton(
// //                       child: Text('Processed'),
// //                       onPressed: () {
// //                         _controller.restart();
// //                       },
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

