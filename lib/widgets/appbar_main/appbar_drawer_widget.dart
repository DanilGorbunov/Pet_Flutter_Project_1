import 'package:flutter/material.dart';
import 'package:fscreen/widgets/alarm_widgets/paused_widget/paused_server_main_screen.dart';

class DrawerWidgetAppBar extends StatefulWidget {
  DrawerWidgetAppBar({Key? key}) : super(key: key);

  @override
  State<DrawerWidgetAppBar> createState() => _DrawerWidgetAppBar();
}

class _DrawerWidgetAppBar extends State<DrawerWidgetAppBar> {
  @override
  Widget build(BuildContext context) {
    return DrawerWidget(context);
  }
}

Drawer DrawerWidget(BuildContext context) {
  return Drawer(
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 300,
                height: 80,
                child: const DrawerHeader(
                  decoration: BoxDecoration(
                    //color: const Color.fromRGBO(51, 54, 54, 1),
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Text(
                    '',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromRGBO(233, 233, 233, 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        const Divider(
          color: Color.fromRGBO(112, 139, 255, 1),
        ),
        ListTile(
          leading: Icon(
            Icons.loop,
            color: Color.fromRGBO(233, 233, 233, 1),
          ),
          title: const Text(
            'Laps',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Color.fromRGBO(233, 233, 233, 1),
            ),
          ),
          onTap: () {
            Navigator.of(context).pushNamed(
              '/main_screen',
            );
            // Update the state of the app
            // ...
            // Then close the drawer
            // Navigator.pop(context);
          },
        ),
        const Divider(
          color: Color.fromRGBO(112, 139, 255, 1),
        ),
        ListTile(
          leading: Icon(
            Icons.pause,
            color: Color.fromRGBO(233, 233, 233, 1),
          ),
          title: const Text(
            'Paused',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Color.fromRGBO(233, 233, 233, 1),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PausedServerMainScreen(),
              ),
            );
          },

          // onTap: () {
          //   // Update the state of the app
          //   // ...
          //   // Then close the drawer
          //   Navigator.pop(context);
          // },
        ),
        const Divider(
          color: Color.fromRGBO(112, 139, 255, 1),
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: Color.fromRGBO(233, 233, 233, 1),
          ),
          title: const Text(
            'Settings',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Color.fromRGBO(233, 233, 233, 1),
            ),
          ),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        const Divider(
          color: Color.fromRGBO(112, 139, 255, 1),
        ),
      ],
    ),
  );
}
