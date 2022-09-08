//import 'package:widgets/movie_details/movie_details_main_info_widget.dart';
//import 'package:widgets/movie_details/movie_details_main_screen_cast_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:fscreen/widgets/appbar_main/appbar_drawer_widget.dart';
import 'package:fscreen/widgets/appbar_main/appbar_main_widget.dart';
import 'package:fscreen/widgets/main_detalis/details_main_info_widget.dart';

class LapsDetailsWidget extends StatefulWidget {
  final int movieId;
  LapsDetailsWidget({
    Key? key,
    required this.movieId,
  }) : super(key: key);

  @override
  State<LapsDetailsWidget> createState() => _LapsDetailsWidgetState();
}

class _LapsDetailsWidgetState extends State<LapsDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    DateTime datetime = DateTime.now();

    String datetime1 = DateFormat("d. MMM. yyyy").format(datetime);

    String datetime2 = DateFormat.jm().format(datetime);

    return SafeArea(
      child: Scaffold(
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
        appBar: AppBar_Main(context, datetime1, datetime2),

        // AppBar(
        //   title: Container(child: Text('Laps')),
        // ),
        body: Container(
          child: ColoredBox(
            color: Color.fromRGBO(45, 21, 47, 1),
            child: ListView(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(32, 32, 32, 1),
                      //border: Border.all(color: Colors.white.withOpacity(0.2)),
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
                      // Image(image: AssetImage(movie.imageName)),
                      SizedBox(width: 224),
                      SizedBox(height: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //SizedBox(height: 24),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Laps',

                                // movie.title,
                                style: TextStyle(
                                  shadows: <Shadow>[
                                    Shadow(
                                      blurRadius: 4.0,
                                      color: Colors.black,
                                      offset: Offset(0, 0.8),
                                    ),
                                  ],
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Color.fromRGBO(233, 233, 233, 1),
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 275,
                        child: Text(
                          'Time',
                          style: TextStyle(
                            shadows: <Shadow>[
                              Shadow(
                                blurRadius: 4.0,
                                color: Colors.black,
                                offset: Offset(0, 0.8),
                              ),
                            ],
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Color.fromRGBO(233, 233, 233, 1),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
                DetailsMainInfoWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
