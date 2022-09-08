import 'package:countdown_progress_indicator/countdown_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fscreen/widgets/alarm_widgets/blink_button/blink_button.dart';
import 'package:fscreen/widgets/images_and_gradients_widgets/image_earth_back_stack.dart';
import 'package:fscreen/widgets/main_detalis/laps_details_widget.dart';
import 'package:fscreen/widgets/style_widgets/text_style.dart';
import 'package:fscreen/widgets/time_widget/header_body_in_timer.dart';

class AbortedButtonWidget extends StatefulWidget {
  const AbortedButtonWidget({Key? key}) : super(key: key);

  @override
  _AbortedButtonWidgetState createState() => _AbortedButtonWidgetState();
}

class _AbortedButtonWidgetState extends State<AbortedButtonWidget>
    with TickerProviderStateMixin {
  bool _isRunning = true;
  final _controller = CountDownController();
  final _controller2 = CountDownController();

  late AnimationController _controllerBlink;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controllerBlink =
        AnimationController(duration: Duration(milliseconds: 700), vsync: this)
          ..repeat(reverse: true);

    _animation = Tween<double>(begin: 10, end: 0).animate(_controllerBlink);
  }

  @override
  void dispose() {
    _controllerBlink.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(children: <Widget>[
          ImageEarthBackStack(),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      //for_kevin
                      // Color.fromRGBO(144, 81, 39, 1).withOpacity(1.00),
                      // Color.fromRGBO(26, 20, 44, 1).withOpacity(0.86),
                      //my_size
                      Color.fromRGBO(168, 94, 39, 1).withOpacity(0.98),
                      Color.fromRGBO(26, 20, 44, 1).withOpacity(0.95),
                      //test
                      // Color.fromRGBO(144, 81, 39, 1).withOpacity(0.98),
                      // Color.fromRGBO(26, 20, 44, 1).withOpacity(0.95),
                    ],
                    stops: [
                      0.0,
                      1.0
                    ])),
          ),
          FadeTransition(
            opacity: _controllerBlink,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                        //for_kevin
                        // Color.fromRGBO(144, 81, 39, 1).withOpacity(1.00),
                        // Color.fromRGBO(26, 20, 44, 1).withOpacity(0.86),
                        //my_size
                        Color.fromRGBO(15, 15, 48, 1).withOpacity(0.8),
                        Color.fromRGBO(15, 15, 48, 1).withOpacity(0.7),
                        //Color.fromRGBO(144, 81, 39, 1).withOpacity(1.0),

                        //54, 34, 61, 1
                        // old Color.fromRGBO(26, 20, 44, 1).withOpacity(1.0),
                        //  Color.fromRGBO(144, 81, 39, 1).withOpacity(1.0),
                        //test
                        // Color.fromRGBO(144, 81, 39, 1).withOpacity(0.98),
                        // Color.fromRGBO(26, 20, 44, 1).withOpacity(0.95),
                      ],
                      stops: [
                        0.0,
                        1.0
                      ])),
            ),
          ),
          body_alarm_center(context),
        ]),
      ),
    );
  }

  Center body_alarm_center(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          //mainAxisSize: MainAxisSize.min,

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: HeaderBodyInTimer(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 140),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      "ABORTED",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          shadows: <Shadow>[
                            Shadow(
                              blurRadius: 30.0,
                              color: Colors.black54,
                              offset: Offset(5.0, 5.0),
                            ),
                            Shadow(
                              color: Colors.black54,
                              blurRadius: 50.0,
                              offset: Offset(-5.0, 5.0),
                            ),
                          ],
                          fontWeight: FontWeight.w500,
                          fontSize: 150,
                          color: Color.fromRGBO(255, 156, 41, 1)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          "Aborted by  ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(0, 2.0),
                                  blurRadius: 4,
                                  color: Colors.black,
                                ),
                              ],
                              fontWeight: FontWeight.w400,
                              fontSize: 40,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ),
                      Container(
                        child: Text(
                          "You",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(0, 2.0),
                                  blurRadius: 4,
                                  color: Colors.black,
                                ),
                              ],
                              fontWeight: FontWeight.w600,
                              fontSize: 40,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 0),
              child: Container(child: AbortedReturnButton(context)),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30, left: 30),
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 30,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Row AbortedReturnButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            //border: Border.all(color: Colors.transparent),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(22.0),
                bottomRight: Radius.circular(22.0)),
            boxShadow: [
              BoxShadow(
                // color: Colors.blue.withOpacity(0.1),
                blurRadius: 8,
                offset: Offset(0, 0),
              )
            ],
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                // shadowColor: Colors.black,
                // elevation: 10,
                fixedSize: Size(240, 65),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                ),
                primary: Color.fromRGBO(33, 166, 123, 1),
                // padding: EdgeInsets.symmetric(
                //     horizontal: 50, vertical: 20),
                textStyle:
                    TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
            //onPressed: () => Navigator.of(context).pop(),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LapsDetailsWidget(
                          movieId: 2,
                        )),
              );
            },
            child: Container(
              height: 38,
              decoration: BoxDecoration(),
              child: Text(
                'Return',
                style: TextStyle(
                  shadows: <Shadow>[
                    TextShadow(),
                  ],
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  color: Color.fromRGBO(233, 233, 233, 1),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
