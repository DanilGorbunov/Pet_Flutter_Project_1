//import 'package:widgets/movie_details/movie_details_main_info_widget.dart';
//import 'package:widgets/movie_details/movie_details_main_screen_cast_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:fscreen/widgets/alarm_widgets/alarm_buttons_widget/aborted_alarm_button.dart';
import 'package:fscreen/widgets/appbar_main/appbar_drawer_widget.dart';
import 'package:fscreen/widgets/appbar_main/appbar_main_widget.dart';
import 'package:fscreen/widgets/main_detalis/details_main_info_widget.dart';
import 'package:fscreen/widgets/time_widget/stopwatch_timer_page.dart';
import 'package:fscreen/widgets/time_widget/header_body_in_timer.dart';

class Aborted_Button_Main_Screan extends StatefulWidget {
  //final int movieId;
  Aborted_Button_Main_Screan({
    Key? key,
    // required this.movieId,
  }) : super(key: key);

  @override
  State<Aborted_Button_Main_Screan> createState() =>
      _Aborted_Button_Main_ScreanState();
}

class _Aborted_Button_Main_ScreanState
    extends State<Aborted_Button_Main_Screan> {
  @override
  Widget build(BuildContext context) {
    DateTime datetime = DateTime.now();

    String datetime1 = DateFormat("d. MMM. yyyy").format(datetime);

    String datetime2 = DateFormat.jm().format(datetime);

    return Scaffold(
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
      body: const AbortedButtonWidget(),
    );
  }
}
