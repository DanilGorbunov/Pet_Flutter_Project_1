import 'dart:ui';

import 'package:countdown_progress_indicator/countdown_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fscreen/widgets/alarm_widgets/alarm_buttons_widget/aborted_alarm_button.dart';
import 'package:fscreen/widgets/alarm_widgets/alarm_buttons_widget/aborted_button_main_screen.dart';
import 'package:fscreen/widgets/images_and_gradients_widgets/image_earth_back_stack.dart';
import 'package:fscreen/widgets/time_widget/header_body_in_timer.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return new MaterialApp(
      home: new Scaffold(),
    );
  }
}

class TimerWidget extends StatefulWidget {
  const TimerWidget({Key? key}) : super(key: key);

  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  double height = 340;
  double width = 430;
  bool isPortrait = false;
  int heightReasonForm = 100;

  bool _isRunning = true;
  final _controller = CountDownController();
  //final _controller2 = CountDownController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainBodyWidget(context),
    );
  }

  Widget MainBodyWidget(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ImageEarthBackStack(),
              GradientFotTimeWidget(),
            ],
          ),
          SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            padding: EdgeInsets.all(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BodyPauseCenter(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> showInformationDialog(BuildContext context) async {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    heightReasonForm = 100;
    return await showDialog(
        context: context,
        builder: (context) {
          //bool isChecked = false;
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            // child: AlertDialog(
            //   contentPadding: EdgeInsets.all(10.0),
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.all(
            //       Radius.circular(10.0),
            //     ),
            //   ),
            //   content: Stack(
            //     overflow: Overflow.visible,
            //     children: <Widget>[
            //       PopUpFormAsk(),
            //       Positioned(
            //         right: -30.0,
            //         top: -30.0,
            //         child: InkResponse(
            //           onTap: () {
            //             Navigator.of(context).pop();
            //           },
            //           child: CircleAvatar(
            //             child: Icon(
            //               Icons.close,
            //               color: Colors.white,
            //             ),
            //             backgroundColor: Colors.red,
            //             maxRadius: 20.0,
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            child: AlertDialog(
              //elevation: 0.0,
              contentPadding: EdgeInsets.all(0.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              backgroundColor: Colors.white,

              // height: 300;
              content: SizedBox(
                height: !isPortrait && height < 400 ? 235 : 265,
                // // height: height,
                width: 760,
                child: Stack(
                  children: <Widget>[
                    PopUpContainerUnderForm(),
                    PopUpReasonForm(),
                    PopUpFormAsk(),
                    PopUpButtonOK(context),
                    Container(
                      width: 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          color: Colors.white,
                          gradient: LinearGradient(
                              begin: FractionalOffset.topCenter,
                              end: FractionalOffset.bottomCenter,
                              colors: [
                                //for_kevin
                                // Color.fromRGBO(69, 79, 161, 1).withOpacity(1.00),
                                // Color.fromRGBO(26, 20, 44, 1).withOpacity(0.88),
                                //my_size
                                Color.fromRGBO(43, 214, 162, 1)
                                    .withOpacity(0.98),
                                Color.fromRGBO(50, 176, 227, 1)
                                    .withOpacity(0.95),
                              ],
                              stops: [
                                0.0,
                                1.0
                              ])),
                    ),
                    PopUpButtonClose(context),
                  ],
                ),
              ),
            ),
          );
        });
  }

  GradientFotTimeWidget() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [
                //for_kevin
                // Color.fromRGBO(69, 79, 161, 1).withOpacity(1.00),
                // Color.fromRGBO(26, 20, 44, 1).withOpacity(0.88),
                //my_size
                Color.fromRGBO(76, 29, 44, 1).withOpacity(0.98),
                Color.fromRGBO(13, 13, 45, 1).withOpacity(0.95),
              ],
              stops: [
                0.0,
                1.0
              ])),
    );
  }

  PopUpContainerUnderForm() {
    return SizedBox(
      // width: 200.0,
      height: 300.0,
      child: Container(
        width: double.infinity,
        height: 340,
        decoration: BoxDecoration(
          color: Color.fromRGBO(32, 32, 32, 1),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }

  // Positioned(
  //   right: 40.0,
  //   top: 20.0,
  //   child: InkResponse(
  //     onTap: () {
  //       Navigator.of(context).pop();
  //     },
  //     child: CircleAvatar(
  //       child: Icon(Icons.close),
  //       backgroundColor: Colors.red,
  //     ),
  //   ),
  // ),

  PopUpReasonForm() {
    return Container(
      child: Form(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 66.0, left: 25, right: 15),
            child: Positioned(
              child: SizedBox(
                height: 150,
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  style: TextStyle(color: Colors.white, fontSize: 22),
                  //autofocus: true,
                  maxLines: heightReasonForm ~/ 21,
                  // maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  //               decoration: InputDecoration(
                  // fillColor: Colors.blueAccent,
                  // filled: true,
                  //   hintText: "Type  ",
                  //   border: InputBorder.none,
                  // ),
                  decoration: InputDecoration(
                    //border: InputBorder.none,
                    // focusedBorder: InputBorder.none,
                    //enabledBorder: InputBorder.none,
                    //errorBorder: InputBorder.none,
                    //disabledBorder: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromRGBO(16, 16, 16, 1),
                    hintText: 'Reason...',
                    contentPadding: EdgeInsets.all(10.0),
                    hintStyle: TextStyle(
                        fontSize: 22.0,
                        color: Color.fromRGBO(136, 136, 136, 1)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }

  // PopUpButtonClose(BuildContext context) {
  //   return Align(
  //     alignment: Alignment(1.09, -1.30),
  //     child: TextButton(
  //       onPressed: () {
  //         Navigator.pop(context);
  //       },
  //       child: Text('OK'),
  //     ),
  //   );
  // }

  // PopUpButtonClose(BuildContext context) {
  //   return Align(
  //     alignment: Alignment(1.15, -1.30),
  //     child: Positioned(
  //       right: 0.0,
  //       child: GestureDetector(
  //         onTap: () {
  //           Navigator.of(context).pop();
  //         },
  //         child: Align(
  //           alignment: Alignment.topRight,
  //           child: CircleAvatar(
  //             radius: 24.0,
  //             backgroundColor: Colors.white,
  //             child: Icon(Icons.close, color: Colors.red),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  PopUpButtonClose(BuildContext context) {
    return Align(
      alignment: Alignment(1.08, -1.28),
      child: FloatingActionButton(
        // When the button is pressed,
        // give focus to the text field using myFocusNode.
        onPressed: () => Navigator.of(context).pop(),
        tooltip: 'Focus Second Text Field',
        child: const Icon(Icons.close, size: 50),
        backgroundColor: Color.fromRGBO(32, 32, 32, 1),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
// InkWell(
//                         onTap: () {
//                         Navigator.pop(context);
//                         },
//                         child: Container(
//                         width: double.infinity,
//                         height: 50,
//                         decoration: BoxDecoration(
//                             color: Colors.blue[300],
//                             borderRadius: BorderRadius.only(
//                             bottomLeft: Radius.circular(12),
//                             bottomRight: Radius.circular(12),
//                             ),
//                         ),
//                         child: Align(
//                             alignment: Alignment.center,
//                             child: Text(
//                             "Okay let's go!",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w600),
//                             ),
//                         ),
//                         ),

  Container PopUpButtonOK(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 204.0, right: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Color.fromRGBO(100, 128, 252, 1),
                fixedSize: Size(150, 45),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(12.0),
                ),
                primary: Color.fromRGBO(100, 128, 252, 1),
              ),
              onPressed: () {
                if (_isRunning) {
                  Navigator.pop(context, 'You need pause');
                  //_controller.pause();
                  setState(() {
                    _isRunning = !_isRunning;
                    if (!_isRunning) {
                      _controller.pause();
                    }
                    setState(() {});
                  });
                } else {
                  _controller.resume();
                }
              },
              child: const Text(
                'Ok',
                style: TextStyle(
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(0, 0.8),
                      blurRadius: 4,
                      color: Colors.black,
                    ),
                  ],
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: Color.fromRGBO(233, 233, 233, 1),
                ),
              ),
              // child: Text('Ok'),
              // onPressed: () {
              //   Navigator.of(context).pop();
              // },
            ),
          ),
        ],
      ),
    );
  }

  Container PopUpFormAsk() {
    return Container(
      //width: double.infinity,
      height: 50,
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        color: Color.fromRGBO(54, 54, 54, 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 22.0),
          child: Text(
            "Why are you taking a break?",
            style: TextStyle(
                color: Colors.white, fontSize: 27, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }

  BodyPauseCenter(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Center(
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
            padding: EdgeInsets.only(
              //!isPortrait && height < 400 ? 3 : 10,
              top: !isPortrait ? 140 : 220,
              bottom: 0,
            ),
            // child: !isPortrait ? BodyTimer() : BodyTimerPortrait(),
            child: BodyTimer(),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: !isPortrait ? 30 : 80,
              bottom: 10,
            ),
            child: Container(
              child: RowTimerButtons(context),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  bottom: 30,
                  left: 30,
                  top: !isPortrait ? 00 : 120,
                ),
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 30,
                ),
              ),
            ],
          ), //Cente
        ],
      ),
    );
  }

  BodyTimer() {
    return Container(
      //alignment: Alignment.space,

      child: Padding(
        padding: EdgeInsets.only(
          top: 0,
          bottom: 75,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "Delivery Duration",
                textAlign: TextAlign.center,
                style: TextStyle(
                    shadows: <Shadow>[
                      Shadow(
                        blurRadius: 4.0,
                        color: Colors.black,
                        offset: Offset(0, 0.8),
                      ),
                      Shadow(
                        color: Colors.black54,
                        blurRadius: 50.0,
                        offset: Offset(-5.0, 5.0),
                      ),
                    ],
                    fontWeight: FontWeight.w500,
                    fontSize: 35,
                    color: Color.fromRGBO(233, 233, 233, 1)),
              ),
            ),
            SizedBox(
              height: 200,
              width: 740,
              child: CountDownProgressIndicator(
                //text: 'Delivery Duration',
                controller: _controller,
                valueColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                initialPosition: 0,

                timeTextStyle: TextStyle(
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
                  color: Color.fromRGBO(233, 233, 233, 1),
                  fontSize: 140,
                  //fontSize: 140,
                ),
                labelTextStyle: TextStyle(
                  color: Color.fromRGBO(233, 233, 233, 1),
                  fontSize: 40,
                ),

                duration: 1800,

                timeFormatter: (seconds) {
                  return Duration(seconds: seconds)
                      .toString()
                      .split('.')[0]
                      .padLeft(8, '0');
                },
                // text: 'sdggs',
                onComplete: () => null,
              ),
            ),
          ],
        ),
      ),
    );
  }

  BodyTimerPortrait() {
    return Container(
      //alignment: Alignment.space,

      child: Padding(
        padding: EdgeInsets.only(
          top: 110,
          bottom: 75,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "Delivery Duration",
                textAlign: TextAlign.center,
                style: TextStyle(
                    shadows: <Shadow>[
                      Shadow(
                        blurRadius: 4.0,
                        color: Colors.black,
                        offset: Offset(0, 0.8),
                      ),
                      Shadow(
                        color: Colors.black54,
                        blurRadius: 50.0,
                        offset: Offset(-5.0, 5.0),
                      ),
                    ],
                    fontWeight: FontWeight.w500,
                    fontSize: 35,
                    color: Color.fromRGBO(233, 233, 233, 1)),
              ),
            ),
            SizedBox(
              height: 200,
              width: 740,
              child: CountDownProgressIndicator(
                //text: 'Delivery Duration',
                controller: _controller,
                valueColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                initialPosition: 0,

                timeTextStyle: TextStyle(
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
                  color: Color.fromRGBO(233, 233, 233, 1),
                  fontSize: 140,
                  //fontSize: 140,
                ),
                labelTextStyle: TextStyle(
                  color: Color.fromRGBO(233, 233, 233, 1),
                  fontSize: 40,
                ),

                duration: 1800,

                timeFormatter: (seconds) {
                  return Duration(seconds: seconds)
                      .toString()
                      .split('.')[0]
                      .padLeft(8, '0');
                },
                // text: 'sdggs',
                onComplete: () => null,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row RowTimerButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.transparent),
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
                fixedSize: Size(200, 60),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                ),
                primary: Color.fromRGBO(229, 139, 34, 1),
                // padding: EdgeInsets.symmetric(
                //     horizontal: 50, vertical: 20),
                textStyle:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            // onPressed: () => Navigator.of(context).pop(),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Aborted_Button_Main_Screan()),
              );
            },
            child: Container(
              height: 30,
              decoration: BoxDecoration(),
              child: Text(
                'Abort',
                style: TextStyle(
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(0, 0.8),
                      blurRadius: 4,
                      color: Colors.black,
                    ),
                  ],
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: Color.fromRGBO(233, 233, 233, 1),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 20),
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.transparent),
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
                fixedSize: Size(200, 60),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                ),
                primary: Color.fromRGBO(100, 128, 252, 1),
                // padding: EdgeInsets.symmetric(
                //     horizontal: 50, vertical: 20),
                textStyle:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            onPressed: () => {
              if (!_isRunning)
                {
                  _controller.resume(),
                  setState(() {
                    _isRunning = !_isRunning;
                  })
                }
              else
                {
                  showInformationDialog(context),
                }
            },
            child: Container(
              height: 30,
              decoration: BoxDecoration(),
              child: Text(
                _isRunning ? 'Pause' : 'Continue',
                style: TextStyle(
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(0, 0.8),
                      blurRadius: 4,
                      color: Colors.black,
                    ),
                  ],
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: Color.fromRGBO(233, 233, 233, 1),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 20),
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.transparent),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(22.0),
                bottomRight: Radius.circular(22.0)),
            boxShadow: [
              BoxShadow(
                blurRadius: 8,
                offset: Offset(0, 0),
              )
            ],
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 60),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                ),
                primary: Color.fromRGBO(33, 166, 123, 1),
                textStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            onPressed: () => Navigator.of(context).pop(),
            child: Container(
              //width: 50,
              height: 30,
              decoration: BoxDecoration(),
              child: Text(
                'Delivered',
                style: TextStyle(
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(0, 0.8),
                      blurRadius: 4,
                      color: Colors.black,
                    ),
                  ],
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: Color.fromRGBO(233, 233, 233, 1),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
