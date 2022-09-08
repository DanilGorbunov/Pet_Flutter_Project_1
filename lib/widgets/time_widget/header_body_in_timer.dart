import 'package:flutter/material.dart';

class HeaderBodyInTimer extends StatefulWidget {
  HeaderBodyInTimer({Key? key}) : super(key: key);

  @override
  State<HeaderBodyInTimer> createState() => _HeaderBodyInTimerState();
}

class _HeaderBodyInTimerState extends State<HeaderBodyInTimer> {
  @override
  Widget build(BuildContext context) {
    {
      return Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(32, 32, 32, 1),
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0)),
          boxShadow: [
            BoxShadow(
              // color: Colors.blue.withOpacity(0.1),
              blurRadius: 8,
              offset: Offset(0, 2),
            )
          ],
        ),
        clipBehavior: Clip.hardEdge,
        child: Column(
          children: [
            Row(
              children: [
                // Image(image: AssetImage(movie.imageName)),
                SizedBox(width: 60),
                //SizedBox(height: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //SizedBox(height: 24),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Lap',
                            // movie.title,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Color.fromRGBO(233, 233, 233, 1),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 230,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Duration',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Color.fromRGBO(233, 233, 233, 1),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  child: Align(
                    child: Text(
                      'Started at',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Color.fromRGBO(233, 233, 233, 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 30),
                // Container(
                //   margin: EdgeInsets.all(10),
                //   height: 50.0,
                //   child: RaisedButton(
                //     shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(18.0),
                //         side: BorderSide(
                //             color: Color.fromRGBO(0, 160, 227, 1))),
                //     onPressed: () {},
                //     padding: EdgeInsets.all(10.0),
                //     color: Color.fromRGBO(33, 166, 123, 1),
                //     textColor: Colors.white,
                //     child: Text("Select",
                //         style: TextStyle(fontSize: 25)),
                //   ),
                // ),
              ],
            ),
            Row(
              children: [
                // Image(image: AssetImage(movie.imageName)),
                SizedBox(width: 50),
                //SizedBox(height: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //SizedBox(height: 24),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Guidare',
                            // movie.title,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 27,
                              color: Color.fromRGBO(233, 233, 233, 1),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 230,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '30:00',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 27,
                        color: Color.fromRGBO(233, 233, 233, 1),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '9:31 AM',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 27,
                        color: Color.fromRGBO(233, 233, 233, 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 30),
                // Container(
                //   margin: EdgeInsets.all(10),
                //   height: 50.0,
                //   child: RaisedButton(
                //     shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(18.0),
                //         side: BorderSide(
                //             color: Color.fromRGBO(0, 160, 227, 1))),
                //     onPressed: () {},
                //     padding: EdgeInsets.all(10.0),
                //     color: Color.fromRGBO(33, 166, 123, 1),
                //     textColor: Colors.white,
                //     child: Text("Select",
                //         style: TextStyle(fontSize: 25)),
                //   ),
                // ),
              ],
            ),
          ],
        ),
      );
    }
  }
}
