// import 'package:flutter/material.dart';
// import 'dart:math' as math;

// class Triangle extends StatefulWidget {
//   const Triangle({
//     Key? key,
//     required this.color,
//   }) : super(key: key);
//   final Color color;

//   @override
//   State<Triangle> createState() => TriangleState();
// }

// class TriangleState extends State<Triangle> {
//   @override
//   Widget build(BuildContext context) {
//     var math;
//     return CustomPaint(
//         painter: _ShapesPainter(widget.color),
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


// // import 'package:flutter/material.dart';

// // class _Triangle extends StatelessWidget {
// //   const _Triangle({
// //     Key? key,
// //     required this.color,
// //   }) : super(key: key);
// //   final Color color;
// //   @override
// //   Widget build(BuildContext context) {
// //     var math;
// //     return CustomPaint(
// //         painter: _ShapesPainter(color),
// //         child: Container(
// //             height: 68,
// //             width: 20,
// //             child: Center(
// //                 child: Padding(
// //                     padding: const EdgeInsets.only(left: 20.0, bottom: 16),
// //                     child: Transform.rotate(
// //                         angle: math.pi / 4,
// //                         child: Text('',
// //                             style: TextStyle(
// //                               color: Colors.white,
// //                               fontSize: 9,
// //                               fontWeight: FontWeight.w500,
// //                             )))))));
// //   }
// // }

// // class _ShapesPainter extends CustomPainter {
// //   final Color color;
// //   _ShapesPainter(this.color);
// //   @override
// //   void paint(Canvas canvas, Size size) {
// //     final paint = Paint();
// //     paint.color = color;
// //     var path = Path();
// //     path.lineTo(10, 35);
// //     path.lineTo(0, size.height);
// //     path.close();
// //     canvas.drawPath(path, paint);
// //   }

// //   @override
// //   bool shouldRepaint(CustomPainter oldDelegate) => false;
// // }
