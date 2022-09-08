

// import 'package:flutter/material.dart';

// class BlinkAnimation extends StatefulWidget {
//   @override
//   _BlinkAnimationState createState() => _BlinkAnimationState();
// }

// class _BlinkAnimationState extends State<BlinkAnimation>
//     with SingleTickerProviderStateMixin {
//   late Animation<Color?> animation;
//   late AnimationController controller;

//   @override
//   initState() {
//     super.initState();
//     controller = AnimationController(
//       duration: const Duration(milliseconds: 300),
//       vsync: this,
//     );
//     final CurvedAnimation curve =
//         CurvedAnimation(parent: controller, curve: Curves.linear);
//     animation =
//         ColorTween(begin: Colors.white, end: Colors.blue).animate(curve);
//     // Keep the animation going forever once it is started
//     animation.addStatusListener((status) {
//       // Reverse the animation after it has been completed
//       if (status == AnimationStatus.dismissed) {
//         controller.reverse();
//       } else if (status == AnimationStatus.dismissed) {
//         controller.forward();
//       }
//       setState(() {});
//     });
//     // Remove this line if you want to start the animation later
//     controller.forward();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Blink Animation'),
//       ),
//       body: Center(
//         child: AnimatedBuilder(
//           animation: animation,
//           builder: (BuildContext context, Widget? child) {
//             return Container(
//               color: animation.value,
//               padding: const EdgeInsets.all(8.0),
//               child: InkWell(
//                 onTap: () {
//                   // Start the animation or do something else on click
//                   // controller.forward();
//                   print('button does something!');
//                 },
//                 child: const Text('Start'),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }

//   @override
//   dispose() {
//     controller.dispose();
//     super.dispose();
//   }
// }
