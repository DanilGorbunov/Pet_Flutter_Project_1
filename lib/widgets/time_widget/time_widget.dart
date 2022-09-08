//import 'package:widgets/movie_details/movie_details_main_info_widget.dart';
//import 'package:widgets/movie_details/movie_details_main_screen_cast_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:fscreen/widgets/appbar_main/appbar_drawer_widget.dart';
import 'package:fscreen/widgets/appbar_main/appbar_main_widget.dart';
import 'package:fscreen/widgets/main_detalis/details_main_info_widget.dart';
import 'package:fscreen/widgets/time_widget/stopwatch_timer_page.dart';
import 'package:fscreen/widgets/time_widget/header_body_in_timer.dart';

class TimeWidget extends StatefulWidget {
  //final int movieId;
  TimeWidget({
    Key? key,
    // required this.movieId,
  }) : super(key: key);

  @override
  State<TimeWidget> createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  @override
  Widget build(BuildContext context) {
    DateTime datetime = DateTime.now();

    String datetime1 = DateFormat("d. MMM. yyyy").format(datetime);

    String datetime2 = DateFormat.jm().format(datetime);

    return Scaffold(
      //resizeToAvoidBottomPadding: false,
      backgroundColor: const Color.fromRGBO(45, 21, 47, 1),
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.55,
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromRGBO(32, 32, 32, 1),
              border: Border.all(color: Colors.black.withOpacity(0.2)),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.1),
                  blurRadius: 30,
                  offset: Offset(0, 2),
                )
              ]),
          width: 100,
          child: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: const Color.fromRGBO(32, 32, 32, 1),
            ),
            child: DrawerWidgetAppBar(),
          ),
        ),
      ),
      appBar: AppBar_Main(context, datetime1, datetime2),
      body: TimerWidget(),
    );
  }
}
//   Drawer DrawerWidget(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         // Important: Remove any padding from the ListView.
//         padding: EdgeInsets.zero,
//         children: [
//           const DrawerHeader(
//             decoration: BoxDecoration(
//               color: const Color.fromRGBO(51, 54, 54, 1),
//               // image: DecorationImage(
//               //     image: AssetImage("lib/images/im1.jpg"),
//               //     fit: BoxFit.cover)),
//               image: DecorationImage(
//               
//                 fit: BoxFit.fill,
//               ),
//             ),
//             child: Text(
//               '',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 30,
//                 color: Color.fromRGBO(233, 233, 233, 1),
//               ),
//             ),
//           ),
//           ListTile(
//             leading: Icon(
//               Icons.loop,
//               color: Color.fromRGBO(233, 233, 233, 1),
//             ),
//             title: const Text(
//               'Laps',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 30,
//                 color: Color.fromRGBO(233, 233, 233, 1),
//               ),
//             ),
//             onTap: () {
//               Navigator.of(context).pushNamed(
//                 '/main_screen',
//               );
//               // Update the state of the app
//               // ...
//               // Then close the drawer
//               // Navigator.pop(context);
//             },
//           ),
//           const Divider(
//             color: Color.fromRGBO(54, 54, 54, 1),
//           ),
//           ListTile(
//             leading: Icon(
//               Icons.settings,
//               color: Color.fromRGBO(233, 233, 233, 1),
//             ),
//             title: const Text(
//               'Settings',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 30,
//                 color: Color.fromRGBO(233, 233, 233, 1),
//               ),
//             ),
//             onTap: () {
//               // Update the state of the app
//               // ...
//               // Then close the drawer
//               Navigator.pop(context);
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
