// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:flutter/material.dart';


// class NoteDialogs extends StatefulWidget {
//   NoteDialogs({Key? key}) : super(key: key);

//   @override
//   State<NoteDialogs> createState() => _NoteDialogsState();
// }

// class _NoteDialogsState extends State<NoteDialogs> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text('okok'),
//     );
//   }
// }

// class NoteDialog {
//   double height = 533;
//   double width = 853;
//   bool isPortrait = false;

//   bool? get kIsWeb => null;

//   Future<NoteDialogResult?> information(
//       BuildContext context, String title, String note) async {
//     width = MediaQuery.of(context).size.width;
//     height = MediaQuery.of(context).size.height;
//     isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
//     var di;
//     var isDark = di.isDark;

//     final textController = TextEditingController(text: note);

//     return showDialog(
//         context: context,
//         barrierDismissible: false,
//         builder: (BuildContext context) {
//           return StatefulBuilder(builder: (context, setState) {
//             var dialogBgGreyD;
//             var whiteD;
//             var textGreyD;
//             // ignore: prefer_typing_uninitialized_variables
//             //var textGreyD;
//             var instance;
//             var black87;
//             return 
//             SingleChildScrollView(
//               child: Dialog(
//                 insetPadding: EdgeInsets.only(
//                     left: 10,
//                     right: 10,
//                     top: isPortrait ? getHeightFromFactor(5) : 3),
//                 backgroundColor:
//                     isDark ? AppColors.dialogBgGreyD : AppColors.whiteD,
//                 child: SizedBox(
//                   height: !isPortrait && height < 400 ? 170 : 230,
//                   width: 560,
//                   child: Column(
//                     children: <Widget>[
//                       Expanded(
//                         child: Stack(
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: <Widget>[
//                                 isPortrait && width < 400
//                                     ? Container()
//                                     : Padding(
//                                         padding: EdgeInsets.only(
//                                             left: 10, right: 10, top: 5),
//                                         child: Icon(
//                                           Icons.messenger_outline_sharp,
//                                           color: isDark
//                                               ? AppColors.whiteD
//                                               : AppColors.textGreyD,
//                                         ),
//                                       ),
//                                 Padding(
//                                   padding: EdgeInsets.only(
//                                     left: 10,
//                                     right: 10,
//                                     top: !isPortrait && height < 400 ? 3 : 10,
//                                     bottom:
//                                         !isPortrait && height < 400 ? 0 : 10,
//                                   ),
//                                   child: SizedBox(
//                                     width:
//                                         isPortrait && width < 400 ? 320 : null,
//                                     child: AutoSizeText(
//                                       title,
//                                       maxLines: 2,
//                                       style: Theme.of(context)
//                                           .textTheme
//                                           .headline5!
//                                           .copyWith(
//                                             color: isDark
//                                                 ? AppColors.whiteD
//                                                 : AppColors.textGreyD,
//                                             fontSize: null,
//                                           ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             )
//                           ],
//                         ),
//                         flex: 1,
//                       ),
//                       SingleChildScrollView(
//                         child: Expanded(
//                           child: Padding(
//                             padding: EdgeInsets.only(
//                                 left: 10, right: 10, bottom: 10, top: 0),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 color: Colors.black.withOpacity(0.5),
//                                 borderRadius: BorderRadius.circular(4),
//                               ),
//                               child: TextField(
//                                 autofocus: true,
//                                 controller: textController,
//                                 keyboardType: TextInputType.multiline,
//                                 decoration: InputDecoration(
//                                   contentPadding:
//                                       const EdgeInsets.only(left: 11, top: 11),
//                                   border: InputBorder.none,
//                                   hintText: MyLocalizations.instance
//                                           ?.getText("note_hint") ??
//                                       "Note...",
//                                   hintStyle: TextStyle(
//                                     fontSize: 22.0,
//                                     color: AppColors.whiteD,
//                                     shadows: [
//                                       Shadow(
//                                         blurRadius: 0,
//                                         color: AppColors.black87,
//                                         offset: Offset(1.0, 1.0),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 style: TextStyle(
//                                   fontSize: 22.0,
//                                   color: AppColors.whiteD,
//                                   shadows: [
//                                     Shadow(
//                                       blurRadius: 0,
//                                       color: AppColors.black87,
//                                       offset: Offset(1.0, 1.0),
//                                     ),
//                                   ],
//                                 ),
//                                 maxLength: 1000,
//                                 maxLines: !isPortrait && height < 400 ? 2 : 3,
//                                 minLines: !isPortrait && height < 400 ? 2 : 3,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           Expanded(
//                             child: Padding(
//                               padding: EdgeInsets.only(
//                                   left: 10, right: 10, bottom: 10),
//                               child: ElevatedButtonWidget(
//                                 color: isDark
//                                     ? AppColors.whiteD
//                                     : AppColors.textGreyD,
//                                 height: getHeightFromFactor(11),
//                                 icon: Icon(
//                                   Icons.check_rounded,
//                                   color: isDark
//                                       ? AppColors.textGreyD
//                                       : AppColors.whiteD,
//                                 ),
//                                 text:
//                                     MyLocalizations.instance?.getText("yes") ??
//                                         "Yes",
//                                 textStyle: TextStyle(
//                                   fontSize: 22.0,
//                                   color: isDark
//                                       ? AppColors.textGreyD
//                                       : AppColors.whiteD,
//                                   shadows: isDark
//                                       ? []
//                                       : [
//                                           Shadow(
//                                             blurRadius: 0,
//                                             color: AppColors.black87,
//                                             offset: Offset(1.0, 1.0),
//                                           ),
//                                         ],
//                                 ),
//                                 callback: () => Navigator.pop(
//                                     context,
//                                     NoteDialogResult(
//                                         textController.text, true)),
//                               ),
//                             ),
//                           ),
//                           Expanded(
//                             child: Padding(
//                               padding: EdgeInsets.only(
//                                   left: 10, right: 10, bottom: 10),
//                               child: ElevatedButtonWidget(
//                                 color: isDark
//                                     ? AppColors.whiteD
//                                     : AppColors.textGreyD,
//                                 height: getHeightFromFactor(11),
//                                 callback: () => Navigator.pop(
//                                     context,
//                                     NoteDialogResult(
//                                         textController.text, false)),
//                                 icon: Icon(
//                                   Icons.clear_rounded,
//                                   color: isDark
//                                       ? AppColors.textGreyD
//                                       : AppColors.whiteD,
//                                 ),
//                                 text: MyLocalizations.instance?.getText("no") ??
//                                     "No",
//                                 textStyle: TextStyle(
//                                   fontSize: 22.0,
//                                   color: isDark
//                                       ? AppColors.textGreyD
//                                       : AppColors.whiteD,
//                                   shadows: isDark
//                                       ? []
//                                       : [
//                                           Shadow(
//                                             blurRadius: 0,
//                                             color: AppColors.black87,
//                                             offset: Offset(1.0, 1.0),
//                                           ),
//                                         ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           });
//         });
//   }

//   double getHeightFromFactor(double factor) {
//     double result = height / factor;
//     if (isPortrait || kIsWeb!) {
//       result = result / 1.5;
//     }
//     return result;
//   }
// }

// class MyLocalizations {
//   static var instance;
// }

// class AppColors {
//   static var dialogBgGreyD;

//   static var whiteD;

//   static var textGreyD;

//   static var black87;
// }

// class NoteDialogResult {
//   String note;
//   bool result;

//   NoteDialogResult(this.note, this.result);
// }
