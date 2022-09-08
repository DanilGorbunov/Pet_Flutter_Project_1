import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/services.dart';
import 'package:fscreen/widgets/alarm_widgets/paused_widget/paused_server_main_screen.dart';
import 'package:fscreen/widgets/appbar_main/appbar_drawer_widget.dart';
import 'package:fscreen/widgets/appbar_main/appbar_main_widget.dart';
import 'package:fscreen/widgets/main_detalis/laps_details_widget.dart';
import 'package:fscreen/widgets/main_detalis/main_list_widget.dart';
import 'package:fscreen/widgets/search/button_search_widget.dart';
import 'package:fscreen/widgets/time_widget/stopwatch_timer_page.dart';
import 'package:fscreen/widgets/time_widget/time_widget.dart';

void main() {
  runApp(const MyApp());

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laps',
      debugShowCheckedModeBanner: false,

      //home: AppBarPage(),
      routes: {
        //'/auth': (context) => AuthWidget(),
        //'/': (context) => AuthWidget(),
        //dsad - delet arrow button from main page
        '/main_screen': (context) => AppBarPage(),
        '/main_screen/main_details': (context) {
          final arguments = ModalRoute.of(context)?.settings.arguments;
          if (arguments is int) {
            return LapsDetailsWidget(movieId: arguments);
          } else {
            return LapsDetailsWidget(movieId: 0);
          }
        },

        '/main_screen/main_details/time_processing': (context) => TimeWidget(),
      },
      //home: AuthWidget(),
      initialRoute: '/main_screen',
    );
  }
}

class AppBarPage extends StatefulWidget {
  AppBarPage({Key? key}) : super(key: key);

  final List<String> list = List.generate(100, (index) => "Text $index");

  @override
  State<AppBarPage> createState() => _AppBarPageState();
}

class _AppBarPageState extends State<AppBarPage> {
  @override
  Widget build(BuildContext context) {
    DateTime datetime = DateTime.now();

    String datetime1 = DateFormat("d. MMM. yyyy").format(datetime);

    String datetime2 = DateFormat.jm().format(datetime);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromRGBO(45, 21, 47, 1),
        drawer: SizedBox(
          width: MediaQuery.of(context).size.width * 0.55,
          child: Container(
            width: 100,
            child: Theme(
              data: Theme.of(context).copyWith(
                canvasColor: const Color.fromRGBO(32, 32, 32, 1),
              ),
              child: DrawerWidgetAppBar(),
            ),
          ),
        ),
        // drawer: SizedBox(
        //   width: MediaQuery.of(context).size.width * 0.55,
        //   child: Container(
        //     width: 100,
        //     child: Theme(
        //       data: Theme.of(context).copyWith(
        //         canvasColor: const Color.fromRGBO(32, 32, 32, 1),
        //       ),
        //       child: Drawer(
        //         child: ListView(
        //           // Important: Remove any padding from the ListView.
        //           padding: EdgeInsets.zero,
        //           children: [
        //             const DrawerHeader(
        //               decoration: BoxDecoration(
        //                 color: const Color.fromRGBO(51, 54, 54, 1),
        //                 // image: DecorationImage(
        //                 //     image: AssetImage("lib/images/im1.jpg"),
        //                 //     fit: BoxFit.cover)),
        //                 image: DecorationImage(
        //
        //                   fit: BoxFit.fill,
        //                 ),
        //               ),
        //               child: Text(
        //                 '',
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.bold,
        //                   fontSize: 30,
        //                   color: Color.fromRGBO(233, 233, 233, 1),
        //                 ),
        //               ),
        //             ),
        //             ListTile(
        //               leading: Icon(
        //                 Icons.loop,
        //                 color: Color.fromRGBO(233, 233, 233, 1),
        //               ),
        //               title: const Text(
        //                 'Laps',
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.bold,
        //                   fontSize: 30,
        //                   color: Color.fromRGBO(233, 233, 233, 1),
        //                 ),
        //               ),
        //               onTap: () {
        //                 Navigator.of(context).pushNamed(
        //                   '/main_screen',
        //                 );
        //                 // Update the state of the app
        //                 // ...
        //                 // Then close the drawer
        //                 // Navigator.pop(context);
        //               },
        //             ),
        //             const Divider(
        //               color: Color.fromRGBO(54, 54, 54, 1),
        //             ),
        //             ListTile(
        //               leading: Icon(
        //                 Icons.pause,
        //                 color: Color.fromRGBO(233, 233, 233, 1),
        //               ),
        //               title: const Text(
        //                 'Paused',
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.bold,
        //                   fontSize: 30,
        //                   color: Color.fromRGBO(233, 233, 233, 1),
        //                 ),
        //               ),
        //               onTap: () {
        //                 Navigator.push(
        //                   context,
        //                   MaterialPageRoute(
        //                     builder: (context) => PausedServerMainScreen(),
        //                   ),
        //                 );
        //               },
        //               // onTap: () {
        //               //   // Update the state of the app
        //               //   // ...
        //               //   // Then close the drawer
        //               //   Navigator.pop(context);
        //               // },
        //             ),
        //             const Divider(
        //               color: Color.fromRGBO(54, 54, 54, 1),
        //             ),
        //             ListTile(
        //               leading: Icon(
        //                 Icons.settings,
        //                 color: Color.fromRGBO(233, 233, 233, 1),
        //               ),
        //               title: const Text(
        //                 'Settings',
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.bold,
        //                   fontSize: 30,
        //                   color: Color.fromRGBO(233, 233, 233, 1),
        //                 ),
        //               ),
        //               onTap: () {
        //                 // Update the state of the app
        //                 // ...
        //                 // Then close the drawer
        //                 Navigator.pop(context);
        //               },
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        appBar: AppBar_Main(context, datetime1, datetime2),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromRGBO(76, 29, 44, 1),
                  Color.fromRGBO(13, 13, 45, 1),
                ],
              ),
              color: const Color.fromRGBO(32, 32, 32, 1),
              border: Border.all(color: Colors.white.withOpacity(0.2)),
              borderRadius: BorderRadius.all(Radius.circular(0)),
              boxShadow: [
                BoxShadow(
                  blurRadius: 8,
                  offset: Offset(0, 2),
                )
              ]),
          child: MainListWidget(),
        ),
      ),
    );
  }
}
