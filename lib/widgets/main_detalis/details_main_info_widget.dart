//import 'package:widgets/elements/radial_percent_widget.dart';
//import 'package:widgets/images.dart';
import 'package:flutter/material.dart';
import 'package:fscreen/widgets/alarm_widgets/blink_button/blink_button.dart';
import 'package:fscreen/widgets/figures/rect_for_details_list_size.dart';
import 'package:fscreen/widgets/figures/triangle_for_list_datails.dart';
import 'package:fscreen/widgets/main_detalis/main_list_widget.dart';
import 'package:fscreen/widgets/time_widget/time_widget.dart';
import 'dart:math' as math;

import '../../main.dart';

class DetailsMainInfoWidget extends StatefulWidget {
  const DetailsMainInfoWidget({Key? key}) : super(key: key);

  @override
  State<DetailsMainInfoWidget> createState() => _DetailsMainInfoWidgetState();
}

class _DetailsMainInfoWidgetState extends State<DetailsMainInfoWidget>
    with TickerProviderStateMixin {
  // late AnimationController _controller;
  // late Animation<double> _animation;
//
  late Animation<Color?> animation;
  late AnimationController controller;
//
  late AnimationController _controller;
  late Animation<double> _animation;

  late AnimationController _controllerBlink;
  late Animation<double> _animation2;

  double opacity = 1.0;

  // @override
  // void initState() {
  //   super.initState();
  //   _controller =
  //       AnimationController(duration: Duration(milliseconds: 425), vsync: this)
  //         ..repeat(reverse: true);

  //   _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  //   changeOpacity();
  // }

  @override
  initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 450),
      vsync: this,
    );

///////
    _controllerBlink = AnimationController(
      duration: Duration(milliseconds: 450),
      vsync: this,
    )..repeat(reverse: true);

    _animation2 = Tween<double>(begin: 15, end: 40).animate(_controllerBlink);

/////
    _controller = AnimationController(
      duration: const Duration(milliseconds: 450),
      vsync: this,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    final CurvedAnimation curve =
        CurvedAnimation(parent: controller, curve: Curves.linear);
    animation = ColorTween(
            begin: Color.fromRGBO(255, 80, 85, 0.5),
            end: Color.fromRGBO(255, 80, 85, 1))
        .animate(curve);
    // Keep the animation going forever once it is started
    animation.addStatusListener((status) {
      // Reverse the animation after it has been completed
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
      setState(() {});
    });
    // Remove this line if you want to start the animation later
    controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    _controllerBlink.dispose();
    super.dispose();
  }

  // changeOpacity() {
  //   Future.delayed(Duration(seconds: 1), () {
  //     setState(() {
  //       opacity = opacity == 0.0 ? 1.0 : 0.0;
  //       changeOpacity();
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        details_list_row_widget(),
        details_list_row_widget_1(),
        details_list_row_widget3(),
      ],
    );
  }

  void _onTimeTab() {
    Navigator.of(context).pushNamed(
      '/main_screen/main_details/time_processing',
    );
  }

  details_list_row_widget() {
    return Stack(
      children: <Widget>[
        Container(
          height: 70,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromRGBO(31, 31, 31, 1),
                  Color.fromRGBO(31, 31, 31, 1),
                ],
              ),
              borderRadius: BorderRadius.all(Radius.circular(0)),
              boxShadow: [
                BoxShadow(
                  // color: Colors.blue.withOpacity(0.1),
                  blurRadius: 8,
                  offset: Offset(0, 2),
                )
              ]),
          clipBehavior: Clip.hardEdge,
        ),
        FadeTransition(
          opacity: _controllerBlink,
          child: Container(
            height: 70,
            decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.centerRight,
                    colors: [
                      Color.fromRGBO(150, 49, 51, 1).withOpacity(1.0),
                      Color.fromRGBO(32, 32, 32, 1).withOpacity(1.0),
                    ],
                    stops: [
                      0.1,
                      0.65
                    ])),
          ),
        ),
        Row(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 4,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    // topLeft: Radius.circular(20.0),
                    // topRight: Radius.circular(20.0),
                    bottomLeft: Radius.elliptical(20, 50),
                    bottomRight: Radius.circular(10.0)),
                color: Color.fromRGBO(255, 100, 100, 1),
                boxShadow: [
                  BoxShadow(
                    // color: Colors.white.withOpacity(1.0),
                    color: Colors.black.withOpacity(1.0),
                    //spreadRadius: 5,
                    blurRadius: 8,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
            ),
            Triangle_Widget_Red(),
            TextFirstItem(),
            lap_time(),
            blink_button(),
            SizedBox(width: 10),
          ],
        ),
      ],
    );
  }

  details_list_row_widget_1() {
    return Stack(
      children: <Widget>[
        Container(
          height: 70,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromRGBO(31, 31, 31, 1),
                  Color.fromRGBO(31, 31, 31, 1),
                ],
              ),
              borderRadius: BorderRadius.all(Radius.circular(0)),
              boxShadow: [
                BoxShadow(
                  // color: Colors.blue.withOpacity(0.1),
                  blurRadius: 8,
                  offset: Offset(0, 2),
                )
              ]),
          clipBehavior: Clip.hardEdge,
        ),
        FadeTransition(
          opacity: _controllerBlink,
          child: Container(
            height: 70,
            decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.centerRight,
                    colors: [
                      Color.fromRGBO(150, 49, 51, 1).withOpacity(1.0),
                      Color.fromRGBO(32, 32, 32, 1).withOpacity(1.0),
                    ],
                    stops: [
                      0.1,
                      0.65
                    ])),
          ),
        ),
        Row(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Color.fromRGBO(255, 100, 100, 1),
              width: 4,
              height: 70,
            ),
            Triangle_Widget_Red(),
            TextFirstItem_1(),
            lap_time(),
            blink_button(),
            SizedBox(width: 10),
          ],
        ),
      ],
    );
  }

  Expanded TextFirstItem() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 18),
          SizedBox(height: 0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Guidare",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: Colors.white,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              alarm_message_red(),
            ],
          ),
        ],
      ),
    );
  }

  Expanded TextFirstItem_1() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 18),
          SizedBox(height: 0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Uso Muletto",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: Colors.white,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              alarm_message_red(),
            ],
          ),
        ],
      ),
    );
  }

  Center blink_button() {
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (BuildContext context, Widget? child) {
          return Container(
            height: 50,
            width: 175,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: animation.value,
              // boxShadow: [
              //   BoxShadow(color: Colors.green, spreadRadius: 3),
              // ],
            ),
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              //onPressed: () {},

              onTap: () => _onTimeTab(),
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => TimeWidget()),
              //   );
              // },
              child: Align(
                alignment: Alignment.center,
                child: const Text(
                  'Start',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0, 0.8),
                        blurRadius: 4,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Center Triangle_Widget_Red() {
    return Center(
        child: Column(children: <Widget>[
      _Triangle(color: Color.fromRGBO(255, 100, 100, 1))
    ]));
  }
}

Text alarm_message_red() {
  return Text(
    "Critical very late",
    style: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: Color.fromRGBO(255, 110, 110, 1),
    ),
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
  );
}

Container lap_time() {
  return Container(
    width: 149,
    child: TextButton(
      child: Text(
        '30.00',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w400,
        ),
      ),
      style: TextButton.styleFrom(
        primary: Color.fromRGBO(243, 243, 243, 1),
        //backgroundColor: Color.fromRGBO(33, 166, 123, 1),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
      ),
      onPressed: () {},
    ),
  );
}

Container details_list_row_widget3() {
  return Container(
    height: 70,
    decoration: BoxDecoration(
        color: const Color.fromRGBO(32, 32, 32, 1),
        // border: Border.all(color: Colors.white.withOpacity(0.2)),
        borderRadius: BorderRadius.all(Radius.circular(0)),
        boxShadow: [
          BoxShadow(
            // color: Colors.blue.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, 2),
          )
        ]),
    clipBehavior: Clip.hardEdge,
    child: Row(
      children: [
        Container(
          color: Color.fromRGBO(99, 235, 89, 1),
          width: 4,
          height: 70,
        ),
        Center(
            child: Column(children: <Widget>[
          _Triangle(color: Color.fromRGBO(99, 235, 89, 1))
        ])),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 18),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Movientazione Vagoni",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Colors.white,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "Keep going to deliver ",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color.fromRGBO(99, 235, 89, 1),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 149,
          child: TextButton(
            child: Text(
              '15.00',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
            ),
            style: TextButton.styleFrom(
              primary: Color.fromRGBO(243, 243, 243, 1),
              //backgroundColor: Color.fromRGBO(33, 166, 123, 1),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
            onPressed: () {},
          ),
        ),
        Container(
          width: 175,
          child: TextButton(
            child: Text(
              'Start',
              style: TextStyle(
                fontSize: 25,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 2.0),
                    blurRadius: 4,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            style: TextButton.styleFrom(
              primary: Color.fromRGBO(243, 243, 243, 1),
              //backgroundColor: Color.fromRGBO(255, 80, 85, 1),
              backgroundColor: Color.fromRGBO(33, 166, 123, 1),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
            onPressed: () {},
          ),
        ),
        SizedBox(width: 10),
      ],
    ),
  );
}

class _Triangle extends StatelessWidget {
  const _Triangle({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        painter: _ShapesPainter(color),
        child: Container(
            height: 68,
            width: 20,
            child: Center(
                child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 16),
                    child: Transform.rotate(
                        angle: math.pi / 4,
                        child: Text('',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 9,
                              fontWeight: FontWeight.w500,
                            )))))));
  }
}

class _ShapesPainter extends CustomPainter {
  final Color color;
  _ShapesPainter(this.color);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = color;
    var path = Path();
    path.lineTo(10, 35);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}


// import '../../main.dart';

// class DetailsMainInfoWidget extends StatefulWidget {
//   const DetailsMainInfoWidget({Key? key}) : super(key: key);

//   @override
//   State<DetailsMainInfoWidget> createState() => _DetailsMainInfoWidgetState();
// }

// class _DetailsMainInfoWidgetState extends State<DetailsMainInfoWidget>
//     with TickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;

//   double opacity = 1.0;

//   @override
//   void initState() {
//     super.initState();
//     _controller =
//         AnimationController(duration: Duration(milliseconds: 425), vsync: this)
//           ..repeat(reverse: true);

//     _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
//     changeOpacity();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   changeOpacity() {
//     Future.delayed(Duration(seconds: 1), () {
//       setState(() {
//         opacity = opacity == 0.0 ? 1.0 : 0.0;
//         changeOpacity();
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       //crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         details_list_row_widget(),
//         details_list_row_widget2(),
//         details_list_row_widget3(),
//       ],
//     );
//   }

//   Container details_list_row_widget() {
//     return Container(
//       height: 70,
//       decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topRight,
//             end: Alignment.bottomLeft,
//             colors: [
//               Color.fromRGBO(32, 32, 32, 1),
//               Color.fromRGBO(74, 40, 41, 1),
//               // Color.fromRGBO(233, 233, 233, 1),
//               // Color.fromRGBO(233, 233, 233, 1),
//             ],
//           ),
//           //color: const Color.fromRGBO(32, 32, 32, 1),
//           //border: Border.all(color: Colors.white.withOpacity(0.2)),
//           borderRadius: BorderRadius.all(Radius.circular(0)),
//           boxShadow: [
//             BoxShadow(
//               // color: Colors.blue.withOpacity(0.1),
//               blurRadius: 8,
//               offset: Offset(0, 2),
//             )
//           ]),
//       clipBehavior: Clip.hardEdge,
//       child: Row(
//         children: [
//           RectangleWidgetListDetail(),
//           Triangle_Widget_Red(),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(width: 18),
//                 SizedBox(height: 10),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Guidare",
//                       style: TextStyle(
//                         fontWeight: FontWeight.w400,
//                         fontSize: 24,
//                         color: Colors.white,
//                       ),
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     alarm_message_red(),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           lap_time(),
//           FadeTransition(
//             opacity: _animation,
//             child: button_start_details(context),
//           ),
//           SizedBox(width: 10),
//         ],
//       ),
//     );
//   }

//   // Container Rectangle_Widget_Red() {
//   //   return Container(
//   //     width: 4,
//   //     height: 200,
//   //     child: CustomPaint(
//   //       painter: CreateRectangleInDetails(),
//   //     ),
//   //   );
//   // }

//   Center Triangle_Widget_Red() {
//     return Center(
//         child: Column(children: <Widget>[
//       _Triangle(color: Color.fromRGBO(255, 100, 100, 1))
//     ]));
//   }
// }

// Text alarm_message_red() {
//   return Text(
//     "Critical very late",
//     style: TextStyle(
//       fontWeight: FontWeight.w400,
//       fontSize: 16,
//       color: Color.fromRGBO(255, 110, 110, 1),
//     ),
//     maxLines: 1,
//     overflow: TextOverflow.ellipsis,
//   );
// }

// Container lap_time() {
//   return Container(
//     width: 149,
//     child: TextButton(
//       child: Text(
//         '30.00',
//         style: TextStyle(
//           fontSize: 22,
//           fontWeight: FontWeight.w400,
//         ),
//       ),
//       style: TextButton.styleFrom(
//         primary: Color.fromRGBO(243, 243, 243, 1),
//         //backgroundColor: Color.fromRGBO(33, 166, 123, 1),
//         shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(15))),
//       ),
//       onPressed: () {},
//     ),
//   );
// }

// Container button_start_details(dynamic context) {
//   return Container(
//       width: 175,
//       child: TextButton(
//           child: Text(
//             'Start',
//             style: TextStyle(
//               fontSize: 25,
//               shadows: <Shadow>[
//                 Shadow(
//                   offset: Offset(0, 0.8),
//                   blurRadius: 4,
//                   color: Colors.black,
//                 ),
//               ],
//             ),
//           ),
//           style: TextButton.styleFrom(
//             primary: Color.fromRGBO(243, 243, 243, 1),
//             backgroundColor: Color.fromRGBO(255, 80, 85, 1),
//             //backgroundColor: Color.fromRGBO(33, 166, 123, 1),
//             shape: const RoundedRectangleBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(15))),
//           ),
//           //onPressed: () {},
//           // onPressed: () {
//           //   Navigator.pop(context);
//           // }),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => TimeWidget()),
//             );
//           }));
// }

// Container details_list_row_widget2() {
//   return Container(
//     height: 70,
//     decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topRight,
//           end: Alignment.bottomLeft,
//           colors: [
//             Color.fromRGBO(32, 32, 32, 1),
//             Color.fromRGBO(74, 40, 41, 1),
//           ],
//         ),
//         color: const Color.fromRGBO(32, 32, 32, 1),
//         //border: Border.all(color: Colors.white.withOpacity(0.2)),
//         borderRadius: BorderRadius.all(Radius.circular(0)),
//         boxShadow: [
//           BoxShadow(
//             // color: Colors.blue.withOpacity(0.1),
//             blurRadius: 8,
//             offset: Offset(0, 2),
//           )
//         ]),
//     clipBehavior: Clip.hardEdge,
//     child: Row(
//       children: [
//         RectangleWidgetListDetail(),
//         Center(
//             child: Column(children: <Widget>[
//           _Triangle(color: Color.fromRGBO(255, 100, 100, 1))
//         ])),
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(width: 18),
//               SizedBox(height: 10),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Uso Muletto",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 24,
//                       color: Colors.white,
//                     ),
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                   Text(
//                     "Critical very late",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 16,
//                       color: Color.fromRGBO(255, 110, 110, 1),
//                     ),
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         Container(
//           width: 149,
//           child: TextButton(
//             child: Text(
//               '20.00',
//               style: TextStyle(
//                 fontSize: 22,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//             style: TextButton.styleFrom(
//               primary: Color.fromRGBO(243, 243, 243, 1),
//               //backgroundColor: Color.fromRGBO(33, 166, 123, 1),
//               shape: const RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(15))),
//             ),
//             onPressed: () {},
//           ),
//         ),
//         Container(
//           width: 175,
//           child: TextButton(
//             child: Text(
//               'Start',
//               style: TextStyle(
//                 fontSize: 25,
//                 shadows: <Shadow>[
//                   Shadow(
//                     offset: Offset(1.0, 2.0),
//                     blurRadius: 4,
//                     color: Colors.black,
//                   ),
//                 ],
//               ),
//             ),
//             style: TextButton.styleFrom(
//               primary: Color.fromRGBO(243, 243, 243, 1),
//               backgroundColor: Color.fromRGBO(255, 80, 85, 1),
//               //backgroundColor: Color.fromRGBO(33, 166, 123, 1),
//               shape: const RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(15))),
//             ),
//             onPressed: () {},
//           ),
//         ),
//         SizedBox(width: 10),
//       ],
//     ),
//   );
// }

// class Trirangle_Widget_Red {}

// Container details_list_row_widget3() {
//   return Container(
//     height: 70,
//     decoration: BoxDecoration(
//         color: const Color.fromRGBO(32, 32, 32, 1),
//         // border: Border.all(color: Colors.white.withOpacity(0.2)),
//         borderRadius: BorderRadius.all(Radius.circular(0)),
//         boxShadow: [
//           BoxShadow(
//             // color: Colors.blue.withOpacity(0.1),
//             blurRadius: 8,
//             offset: Offset(0, 2),
//           )
//         ]),
//     clipBehavior: Clip.hardEdge,
//     child: Row(
//       children: [
//         Center(
//             child: Column(children: <Widget>[
//           _Triangle(color: Color.fromRGBO(99, 235, 89, 1))
//         ])),
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(width: 18),
//               SizedBox(height: 10),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Movientazione Vagoni",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 24,
//                       color: Colors.white,
//                     ),
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                   Text(
//                     "Keep going to deliver ",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 16,
//                       color: Color.fromRGBO(99, 235, 89, 1),
//                     ),
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         Container(
//           width: 149,
//           child: TextButton(
//             child: Text(
//               '15.00',
//               style: TextStyle(
//                 fontSize: 22,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//             style: TextButton.styleFrom(
//               primary: Color.fromRGBO(243, 243, 243, 1),
//               //backgroundColor: Color.fromRGBO(33, 166, 123, 1),
//               shape: const RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(15))),
//             ),
//             onPressed: () {},
//           ),
//         ),
//         Container(
//           width: 175,
//           child: TextButton(
//             child: Text(
//               'Start',
//               style: TextStyle(
//                 fontSize: 25,
//                 shadows: <Shadow>[
//                   Shadow(
//                     offset: Offset(1.0, 2.0),
//                     blurRadius: 4,
//                     color: Colors.black,
//                   ),
//                 ],
//               ),
//             ),
//             style: TextButton.styleFrom(
//               primary: Color.fromRGBO(243, 243, 243, 1),
//               //backgroundColor: Color.fromRGBO(255, 80, 85, 1),
//               backgroundColor: Color.fromRGBO(33, 166, 123, 1),
//               shape: const RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(15))),
//             ),
//             onPressed: () {},
//           ),
//         ),
//         SizedBox(width: 10),
//       ],
//     ),
//   );
// }

// class _Triangle extends StatelessWidget {
//   const _Triangle({
//     Key? key,
//     required this.color,
//   }) : super(key: key);
//   final Color color;
//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//         painter: _ShapesPainter(color),
//         child: Container(
//             height: 68,
//             width: 20,
//             child: Center(
//                 child: Padding(
//                     padding: const EdgeInsets.only(left: 20.0, bottom: 16),
//                     child: Transform.rotate(
//                         angle: math.pi / 4,
//                         child: Text('',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 9,
//                               fontWeight: FontWeight.w500,
//                             )))))));
//   }
// }

// class _ShapesPainter extends CustomPainter {
//   final Color color;
//   _ShapesPainter(this.color);
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint();
//     paint.color = color;
//     var path = Path();
//     path.lineTo(10, 35);
//     path.lineTo(0, size.height);
//     path.close();
//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }

