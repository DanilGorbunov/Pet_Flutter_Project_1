import 'package:flutter/material.dart';
import 'package:fscreen/widgets/search/button_search_widget.dart';
import 'package:decorated_icon/decorated_icon.dart';

AppBar AppBar_Main(BuildContext context, String datetime1, String datetime2) {
  return AppBar(
    leadingWidth: 155,
    leading: Container(
      width: 100,
      height: 100,
      child: Builder(
        builder: (BuildContext context) {
          return Container(
            // width: 20,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      offset: Offset(0, 0.8)),
                ],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                color: Color.fromRGBO(108, 120, 45, 1),
                border: Border.all(
                  color: Color.fromRGBO(108, 120, 45, 1),
                  width: 0,
                )),
            child: TextButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              child: Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: IconButton(
                      padding: const EdgeInsets.all(4.0),
                      //alignment: Alignment.center,
                      icon: DecoratedIcon(
                        Icons.menu_rounded,
                        color: Colors.lightBlue.shade50,
                        size: 45.0,
                        shadows: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Colors.black,
                            offset: Offset(0, 0.8),
                          ),
                        ],
                      ),
                      // icon: const Icon(
                      //   Icons.menu_rounded,
                      //   color: Color.fromRGBO(255, 255, 255, 1),
                      //   // color: Color.fromRGBO(108, 120, 45, 1),
                      //   size: 44, // Changing Drawer Icon Size
                      // ),
                      // Icon(Icons.menu),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      //tooltip: MaterialLocalizations.of(context)
                      //   .openAppDrawerTooltip,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    child: const Text(
                      'Laps',
                      style: TextStyle(
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(0, 0.8),
                            blurRadius: 4,
                            color: Colors.black,
                          ),
                        ],
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  //SizedBox(width: 35),

                  // SizedBox(width: 35),
                ],
                //SizedBox(width: 35),
              ),
            ),
          );
        },
      ),
    ),
    actions: <Widget>[
      Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: IconButton(
            onPressed: () {
              // var widget;
              // showSearch(context: context, delegate: Search(widget.list));
            },
            icon: Icon(Icons.search),
          ),
        ),
      )
    ],
    backgroundColor: Color.fromRGBO(51, 54, 54, 1),
    toolbarHeight: 75.0,
    title: Row(
      //mainAxisAlignment: MainAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            datetime1,
            style: TextStyle(
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(0, 0.8),
                  blurRadius: 4,
                  color: Colors.black,
                ),
              ],
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 3),
          Text(
            datetime2,
            style: TextStyle(
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(0, 0.8),
                  blurRadius: 4,
                  color: Colors.black,
                ),
              ],
              fontSize: 25.0,
            ),
          )
        ]),
      ],
    ),
  );
}
