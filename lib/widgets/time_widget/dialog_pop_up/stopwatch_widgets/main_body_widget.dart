// import 'package:flutter/material.dart';


// class MainBodyWidget extends StatefulWidget {
//   MainBodyWidget({Key? key}) : super(key: key);

//   @override
//   State<MainBodyWidget> createState() => _MainBodyWidgetState();
// }

// class _MainBodyWidgetState extends State<MainBodyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: Stack(
//         children: <Widget>[
//           Stack(
//             children: <Widget>[
//               ImageEarthBackStack(),
//               GradientForTime(),
//             ],
//           ),
//           SingleChildScrollView(
//             keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
//             padding: EdgeInsets.all(0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 BodyPauseWidget(context),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
