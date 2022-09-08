// import 'package:flutter/material.dart';

// class StatefulDialog extends StatefulWidget {
//   @override
//   _StatefulDialogState createState() => _StatefulDialogState();
// }

// class _StatefulDialogState extends State<StatefulDialog> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   final TextEditingController _textEditingController = TextEditingController();


//   Future<void> showInformationDialog(BuildContext context) async {
//     return await showDialog(
//         context: context,
//         builder: (context) {
//           bool isChecked = false;
//           return StatefulBuilder(builder: (context, setState) {
//             return AlertDialog(
//               content: Form(
//                   key: _formKey,
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       TextFormField(
//                         controller: _textEditingController,
//                         validator: (value) {
//                           return value!.isNotEmpty ? null : "Enter any text";
//                         },
//                         decoration:
//                             InputDecoration(hintText: "Please Enter Text"),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text("Choice Box"),
//                           Checkbox(
//                               value: isChecked,
//                               onChanged: (checked) {
//                                 setState(() {
//                                   isChecked = checked!;
//                                 });
//                               })
//                         ],
//                       )
//                     ],
//                   )),
//               title: Text('Stateful Dialog'),
//               actions: <Widget>[
//                 InkWell(
//                   child: Text('OK   '),
//                   onTap: () {
//                     if (_formKey.currentState!.validate()) {
//                       // Do something like updating SharedPreferences or User Settings etc.
//                       Navigator.of(context).pop();
//                     }
//                   },
//                 ),
//               ],
//             );
//           });
//         });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Center(
//           child: FlatButton(
//               color: Colors.deepOrange,
//               onPressed: () async {
//                 await showInformationDialog(context);
//               },
//               child: Text(
//                 "Stateful Dialog",
//                 style: TextStyle(color: Colors.white, fontSize: 16),
//               )),
//         ),
//       ),
//     );
//   }
// }



// // import 'package:auto_size_text/auto_size_text.dart';
// // import 'package:flutter/material.dart';

// // class ElevatedButtonWidget extends StatelessWidget {
// //   final VoidCallback? callback;
// //   final double height;
// //   final double? width;
// //   final Icon icon;
// //   final String text;
// //   final Color? color;
// //   final TextStyle? textStyle;

// //   const ElevatedButtonWidget({
// //     Key? key,
// //     required this.callback,
// //     required this.height,
// //     this.width,
// //     required this.icon,
// //     required this.text,
// //     this.color,
// //     this.textStyle,
// //   }) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       alignment: Alignment.center,
// //       child: SizedBox(
// //         width: width != null ? width : double.infinity,
// //         height: height,
// //         child: ElevatedButton(
// //           style: ElevatedButton.styleFrom(
// //             primary: color != null ? color : Color(0xFF282B35),
// //           ),
// //           onPressed: callback,
// //           child: Stack(
// //             children: <Widget>[
// //               Align(
// //                 alignment: Alignment.centerLeft,
// //                 child: icon,
// //               ),
// //               Container(
// //                 height: height,
// //                 child: Center(
// //                   child: Padding(
// //                     padding: EdgeInsets.only(left: 10.0, bottom: 1.0),
// //                     child: AutoSizeText(
// //                       text,
// //                       style: textStyle != null
// //                           ? textStyle
// //                           : TextStyle(
// //                               fontSize: 22.0,
// //                               color: Color(0xFFFFFFFF),
// //                               shadows: [
// //                                 Shadow(
// //                                   blurRadius: 0,
// //                                   color: Color(0x80000000),
// //                                   offset: Offset(1.0, 1.0),
// //                                 ),
// //                               ],
// //                             ),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
