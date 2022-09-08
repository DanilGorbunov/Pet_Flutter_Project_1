import 'package:countdown_progress_indicator/countdown_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fscreen/widgets/images_and_gradients_widgets/image_earth_back_stack.dart';
import 'package:fscreen/widgets/images_and_gradients_widgets/image_earth_back_stack.dart';
import 'package:fscreen/widgets/main_detalis/laps_details_widget.dart';
import 'package:fscreen/widgets/time_widget/header_body_in_timer.dart';
import 'package:fscreen/widgets/time_widget/time_widget.dart';

class PausedScreenWidget extends StatefulWidget {
  const PausedScreenWidget({Key? key}) : super(key: key);

  @override
  _PausedScreenWidgetState createState() => _PausedScreenWidgetState();
}

class _PausedScreenWidgetState extends State<PausedScreenWidget> {
  bool _isRunning = true;
  final _controller = CountDownController();
  final _controller2 = CountDownController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(children: <Widget>[
          ImageEarthBackStack(),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      //for_kevin
                      // Color.fromRGBO(69, 79, 161, 1).withOpacity(1.00),
                      // Color.fromRGBO(26, 20, 44, 1).withOpacity(0.88),
                      //my_size
                      Color.fromRGBO(69, 79, 161, 1).withOpacity(0.98),
                      Color.fromRGBO(26, 20, 44, 1).withOpacity(0.95),
                    ],
                    stops: [
                      0.0,
                      1.0
                    ])),
          ),
          body_alarm_center(context),
        ]),
      ),
    );
  }

  // Container Image_Earth_Back_Stack() {
  //   return Container(
  //     decoration: BoxDecoration(
  //       color: Colors.transparent,
  //       image: DecorationImage(
  //         fit: BoxFit.fill,
  //         image: AssetImage(
  //           'assets/images/earth.png',
  //         ),
  //       ),
  //     ),
  //     height: 950.0,
  //   );
  // }

  Center body_alarm_center(BuildContext context) {
    return Center(
      child: Column(
        //mainAxisSize: MainAxisSize.min,

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: HeaderBodyInTimer(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130),
            child: Column(
              children: [
                Container(
                  child: Text(
                    "PAUSED",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        shadows: <Shadow>[
                          Shadow(
                            blurRadius: 30.0,
                            color: Colors.black54,
                            offset: Offset(5.0, 5.0),
                          ),
                          Shadow(
                            color: Colors.black54,
                            blurRadius: 50.0,
                            offset: Offset(-5.0, 5.0),
                          ),
                        ],
                        fontWeight: FontWeight.w500,
                        fontSize: 160,
                        color: Color.fromRGBO(112, 139, 255, 1)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Paused by ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            shadows: <Shadow>[
                              Shadow(
                                blurRadius: 30.0,
                                color: Colors.black54,
                                offset: Offset(5.0, 5.0),
                              ),
                              Shadow(
                                color: Colors.black54,
                                blurRadius: 50.0,
                                offset: Offset(-5.0, 5.0),
                              ),
                            ],
                            fontWeight: FontWeight.w400,
                            fontSize: 40,
                            color: Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Server",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            shadows: <Shadow>[
                              Shadow(
                                blurRadius: 30.0,
                                color: Colors.black54,
                                offset: Offset(5.0, 5.0),
                              ),
                              Shadow(
                                color: Colors.black54,
                                blurRadius: 50.0,
                                offset: Offset(-5.0, 5.0),
                              ),
                            ],
                            fontWeight: FontWeight.w600,
                            fontSize: 40,
                            color: Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                    Container(
                      child: Text(
                        " at ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            shadows: <Shadow>[
                              Shadow(
                                blurRadius: 30.0,
                                color: Colors.black54,
                                offset: Offset(5.0, 5.0),
                              ),
                              Shadow(
                                color: Colors.black54,
                                blurRadius: 50.0,
                                offset: Offset(-5.0, 5.0),
                              ),
                            ],
                            fontWeight: FontWeight.w400,
                            fontSize: 40,
                            color: Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                    Text(
                      " 00:21:14",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          shadows: <Shadow>[
                            Shadow(
                              blurRadius: 30.0,
                              color: Colors.black54,
                              offset: Offset(5.0, 5.0),
                            ),
                            Shadow(
                              color: Colors.black54,
                              blurRadius: 50.0,
                              offset: Offset(-5.0, 5.0),
                            ),
                          ],
                          fontWeight: FontWeight.w600,
                          fontSize: 42,
                          color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100, bottom: 0),
            child: Container(child: PausedRowButtons(context)),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30, left: 30),
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row PausedRowButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            //border: Border.all(color: Color.fromRGBO(112, 139, 255, 1)),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0)),
            boxShadow: [
              BoxShadow(
                // color: Colors.blue.withOpacity(0.1),
                blurRadius: 8,
                offset: Offset(0, 0),
              )
            ],
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 60),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                ),
                primary: Color.fromRGBO(229, 139, 34, 1),
                // padding: EdgeInsets.symmetric(
                //     horizontal: 50, vertical: 20),
                textStyle:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            //onPressed: () => Navigator.of(context).pop(),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LapsDetailsWidget(
                          movieId: 2,
                        )),
              );
            },

            child: Container(
              height: 30,
              decoration: BoxDecoration(
                  // borderRadius: BorderRadius.only(
                  //   topRight: Radius.circular(12),
                  //   bottomRight: Radius.circular(12),
                  // ),
                  //color: Color.fromRGBO(108, 120, 45, 1),
                  ),
              child: Text(
                'Abort',
                style: TextStyle(
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(0, 0.8),
                      blurRadius: 4,
                      color: Colors.black,
                    ),
                  ],
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: Color.fromRGBO(233, 233, 233, 1),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 20),
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            //border: Border.all(color: Color.fromRGBO(112, 139, 255, 1)),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0)),
            boxShadow: [
              BoxShadow(
                // color: Colors.blue.withOpacity(0.1),
                blurRadius: 8,
                offset: Offset(0, 0),
              )
            ],
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 60),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                ),
                primary: Color.fromRGBO(33, 166, 123, 1),
                // padding: EdgeInsets.symmetric(
                //     horizontal: 50, vertical: 20),
                textStyle:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            //onPressed: () => Navigator.of(context).pop(),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TimeWidget()),
              );
            },

            child: Container(
              height: 30,
              decoration: BoxDecoration(
                  // borderRadius: BorderRadius.only(
                  //   topRight: Radius.circular(12),
                  //   bottomRight: Radius.circular(12),
                  // ),
                  //color: Color.fromRGBO(108, 120, 45, 1),
                  ),
              child: Text(
                'Resume',
                style: TextStyle(
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(0, 0.8),
                      blurRadius: 4,
                      color: Colors.black,
                    ),
                  ],
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: Color.fromRGBO(233, 233, 233, 1),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}




/////////////////////
///
/// body: Stack(
//           children: <Widget>[
//             Container(
//               decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                     colors: [
//                       Color.fromRGBO(128, 73, 33, 1),
//                       Color.fromRGBO(57, 40, 52, 1),
//                     ],
//                   ),
//                   color: const Color.fromRGBO(32, 32, 32, 1),
//                   border: Border.all(color: Colors.white.withOpacity(0.2)),
//                   borderRadius: BorderRadius.all(Radius.circular(0)),
//                   boxShadow: [
//                     BoxShadow(
//                       // color: Colors.blue.withOpacity(0.1),
//                       blurRadius: 8,
//                       offset: Offset(0, 2),
//                     )
//                   ]),
//               child: Center(
//                 child: Column(
//                   //mainAxisSize: MainAxisSize.min,

//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       child: Padding(
//                         padding: const EdgeInsets.only(
//                           left: 20,
//                           right: 20,
//                         ),
//                         child: HeaderBodyInTimer(),
//                       ),
//                     ),
//                     // Padding(
//                     //   padding: const EdgeInsets.only(top: 120),
//                     //   child: BodyTimer(),
//                     // ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 130),
//                       child: Column(
//                         children: [
//                           Container(
//                             child: Text(
//                               "ABORTED",
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                   shadows: <Shadow>[
//                                     Shadow(
//                                       blurRadius: 30.0,
//                                       color: Colors.black54,
//                                       offset: Offset(5.0, 5.0),
//                                     ),
//                                     Shadow(
//                                       color: Colors.black54,
//                                       blurRadius: 50.0,
//                                       offset: Offset(-5.0, 5.0),
//                                     ),
//                                   ],
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 130,
//                                   color: Color.fromRGBO(255, 156, 41, 1)),
//                             ),
//                           ),
//                           Container(
//                             child: Text(
//                               "Aborted by You",
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                   shadows: <Shadow>[
//                                     Shadow(
//                                       blurRadius: 30.0,
//                                       color: Colors.black54,
//                                       offset: Offset(5.0, 5.0),
//                                     ),
//                                     Shadow(
//                                       color: Colors.black54,
//                                       blurRadius: 50.0,
//                                       offset: Offset(-5.0, 5.0),
//                                     ),
//                                   ],
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: 40,
//                                   color: Color.fromRGBO(255, 255, 255, 1)),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),

//                     Padding(
//                       padding: const EdgeInsets.only(top: 100, bottom: 0),
//                       child: Container(child: AbortedButton(context)),
//                     ),
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 30, left: 30),
//                           child: Image.asset(
//                             'images/logo.png',
//                             height: 30,
//                             //scale: 2.5,
//                             // color: Color.fromARGB(255, 15, 147, 59),
//                             //opacity: const AlwaysStoppedAnimation<double>(0.5)
//                           ),
//                         ),
//                       ],
//                     ), //Cente
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Row AbortedButton(BuildContext context) {
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
//               primary: Color.fromRGBO(33, 166, 123, 1),
//               // padding: EdgeInsets.symmetric(
//               //     horizontal: 50, vertical: 20),
//               textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
//           //onPressed: () => Navigator.of(context).pop(),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                   builder: (context) => MoviesDetailsWidget(
//                         movieId: 2,
//                       )),
//             );
//           },
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
//               'Return',
//               style: TextStyle(
//                 shadows: <Shadow>[
//                   Shadow(
//                     offset: Offset(1.0, 2.0),
//                     blurRadius: 4,
//                     color: Colors.black,
//                   ),
//                 ],
//                 fontWeight: FontWeight.w400,
//                 fontSize: 25,
//                 color: Color.fromRGBO(233, 233, 233, 1),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(width: 20),
//       ],
//     );
//   }
// }

