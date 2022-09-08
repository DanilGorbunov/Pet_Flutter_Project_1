// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:connect/Features/Core/Themes/light_dark_themes.dart';
// import 'package:connect/Features/Roles/Presentation/bloc/drawer_cubit.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:intl/intl.dart';

// class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
//   String languageCode;
//   String title;
//   GlobalKey<ScaffoldState> scaffoldKey;
//   DrawerCubit drawerCubit;
//   bool warningIsShowing;
//   VoidCallback? warningMethod;
//   Color drawerIconColor;
//   Color leadingColor;
//   String leadingName;
//   TextStyle leadingTextStyle;
//   bool showSearch;
//   String? searchHintText;
//   ValueChanged<String>? getDataFromSearch;
//   int leadingWidth;
//   Container leading;
//   List<Widget>? actions;
//   bool automaticallyImplyLeading;

//   AppBarWidget({
//     required this.languageCode,
//     required this.automaticallyImplyLeading,
//     required this.title,
//     required this.scaffoldKey,
//     required this.drawerCubit,
//     required this.warningIsShowing,
//     this.warningMethod,
//     required this.drawerIconColor,
//     required this.leadingColor,
//     required this.leadingName,
//     required this.leadingTextStyle,
//     required this.showSearch,
//     this.searchHintText,
//     this.getDataFromSearch,
//     required this.leadingWidth,
//     required this.leading,
//     required this.actions,
//   });

//   @override
//   State<StatefulWidget> createState() => _AppBarWidgetState();

//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => throw UnimplementedError();
// }

// class _AppBarWidgetState extends State<AppBarWidget>
//     with TickerProviderStateMixin {
//   Icon actionIcon = Icon(Icons.search);

//   late final portrait = MediaQuery.of(context).orientation;
//   late final bool is24HoursFormat =
//       MediaQuery.of(context).alwaysUse24HourFormat;
//   late final tag = Localizations.maybeLocaleOf(context)?.toLanguageTag();
//   late final date =
//       DateFormat("d. MMM. yyyy", tag).format(DateTime.now()); // Dec 31, 2000
//   late final time =
//       DateFormat.jm(tag).format(DateTime.now()); // 12/31, 11:00 PM
//   late Widget? appBarTitle =
//       TitleAppBarWidget(portrait, date, is24HoursFormat, time);

//   // Widget? appBarTitle = new Container(
//   //   "Search Sample",
//   //   style: new TextStyle(color: Colors.white),
//   // );

//   bool search = true;

//   AnimationController? animation;
//   // Animation<double>? _fadeInFadeOut;

//   @override
//   void initState() {
//     //animation for warning
//     animation = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 2),
//     );
//     // _fadeInFadeOut = Tween<double>(begin: 0.0, end: 1).animate(animation!);

//     animation!.addStatusListener((status) {
//       if (status == AnimationStatus.completed) {
//         animation!.reverse();
//       } else if (status == AnimationStatus.dismissed) {
//         animation!.forward();
//       }
//     });
//     animation!.forward();

//     super.initState();
//   }

//   @override
//   void dispose() {
//     if (animation != null) animation!.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     final portrait = MediaQuery.of(context).orientation;
//     final bool is24HoursFormat = MediaQuery.of(context).alwaysUse24HourFormat;
//     // var tag = Localizations.maybeLocaleOf(context)?.toLanguageTag();
//     // var date = DateFormat("d. MMM. yyyy", tag).format(DateTime.now()); // Dec 31, 2000
//     // var time = DateFormat.jm(tag).format(DateTime.now()); // 12/31, 11:00 PM
//     //  appBarTitle = TitleAppBarWidget(portrait, date, is24HoursFormat, time);

//     return BlocProvider<DrawerCubit>(
//         create: (BuildContext context) => widget.drawerCubit,
//         child: BlocBuilder<ThemeProvider, bool>(builder: (context, isDark) {
//           return AppBar(
//             automaticallyImplyLeading: false,
//             leading: leadingAppBarBuildBlocProvider(portrait),
//             //title: TitleAppBarWidget(portrait, date, is24HoursFormat, time),
//             title: appBarTitle!,
//             toolbarHeight: 70,
//             leadingWidth: (portrait == Orientation.portrait) ? 50 : 230,
//             actions: <Widget>[
//               if (widget.showSearch && search)
//                 Padding(
//                   padding: const EdgeInsets.only(right: 15.0),
//                   child: Center(
//                     child: Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.all(Radius.circular(20)),
//                           color: Color.fromRGBO(90, 90, 90, 1),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black54,
//                               spreadRadius: 1,
//                               blurRadius: 2,
//                               offset: const Offset(0, 3),
//                             )
//                           ]),
//                       child: IconButton(
//                           //icon: actionIcon,
//                           icon: Padding(
//                             padding:
//                                 const EdgeInsets.only(right: 0.0, bottom: 0),
//                             child: RotatedBox(
//                               quarterTurns: 1,
//                               child: Icon(
//                                 Icons.search,
//                                 color: isDark
//                                     ? Color.fromRGBO(255, 255, 255, 1)
//                                     : Colors.black,
//                                 size: 35,
//                               ),
//                             ),
//                           ),
//                           //color: Colors.white,

//                           onPressed: () {
//                             search = false;
//                             setState(() {
//                               // if (actionIcon.icon == Icons.search) {
//                               appBarTitle = Expanded(
//                                 child: Container(
//                                   height: 50,
//                                   child: Expanded(
//                                     child: Center(
//                                       child: Padding(
//                                         padding: EdgeInsets.symmetric(
//                                             horizontal: 20),
//                                         child: Container(
//                                           decoration: BoxDecoration(
//                                               color: Color(0xFF000000)
//                                                   .withOpacity(0.25),
//                                               borderRadius:
//                                                   BorderRadius.circular(15.0)),
//                                           child: TextField(
//                                               style: TextStyle(
//                                                 fontSize: 23.0,
//                                                 color: isDark
//                                                     ? Color(0xFFBFBFBF)
//                                                     : Colors.black,
//                                                 fontWeight: FontWeight.w500,
//                                               ),
//                                               onChanged: (text) {
//                                                 widget.getDataFromSearch!(text);
//                                               },
//                                               decoration: InputDecoration(
//                                                 border: InputBorder.none,
//                                                 prefixIcon: Icon(Icons.search,
//                                                     color: isDark
//                                                         ? Color(0xFFBFBFBF)
//                                                         : Colors.black),
//                                                 suffixIcon: IconButton(
//                                                   onPressed: () {
//                                                     setState(() {
//                                                       search = true;
//                                                     });
//                                                     //appBarTitle = getTitle(width);
//                                                     appBarTitle =
//                                                         TitleAppBarWidget(
//                                                             portrait,
//                                                             date,
//                                                             is24HoursFormat,
//                                                             time);
//                                                   },
//                                                   icon: Icon(Icons.close,
//                                                       color: isDark
//                                                           ? Color(0xFFBFBFBF)
//                                                           : Colors.black),
//                                                 ),
//                                                 hintText:
//                                                  
//                                                 //hintText: widget.searchHintText!,
//                                                 fillColor: Color.fromRGBO(
//                                                     16, 16, 16, 1),
//                                                 enabledBorder:
//                                                     new OutlineInputBorder(
//                                                   borderSide: BorderSide(
//                                                       color: Color.fromRGBO(
//                                                           16, 16, 16, 1)),
//                                                   borderRadius:
//                                                       BorderRadius.circular(15),
//                                                 ),

//                                                 filled: true,
//                                                 contentPadding:
//                                                     EdgeInsets.only(top: 12.0),

//                                                 hintStyle: TextStyle(
//                                                   fontSize: 23.0,
//                                                   color: isDark
//                                                       ? Colors.white
//                                                       : Colors.white,
//                                                   //color: isDark ? Color(0xFFBFBFBF) : Colors.black,
//                                                   fontWeight: FontWeight.w500,
//                                                 ),
//                                               )),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               );
//                               // } else {
//                               //   actionIcon = Icon(Icons.search);
//                               //   appBarTitle =  TitleAppBarWidget(portrait, date, is24HoursFormat, time);
//                               //   //_searchController.clear();
//                               // }
//                             });
//                             //search = true;
//                           }),
//                     ),
//                   ),
//                 ),

//               // actions: <Widget>[
//               //   if (widget.showSearch && search)
//               //     IconButton(
//               //         icon: Icon(Icons.search, color: isDark ? Colors.yellowAccent : Colors.black,),
//               //         onPressed: () {
//               //           setState(() {
//               //
//               //             print('Search is working');
//               //             //search = false;
//               //             appBarTitle = Expanded(
//               //                 child: Center(
//               //                     child: Padding(
//               //                       padding: EdgeInsets.symmetric(horizontal: 20),
//               //                       child: Container(
//               //                         decoration: BoxDecoration(color: Color(0xFF000000).withOpacity(0.25), borderRadius: BorderRadius.circular(5.0)),
//               //                         child:
//               //                         TextField(
//               //                             style: TextStyle(
//               //                               fontSize: 23.0,
//               //                               color: isDark ? Color(0xFFBFBFBF) : Colors.black,
//               //                               fontWeight: FontWeight.w500,
//               //                             ),
//               //                             onChanged: (text) {
//               //                              // widget.getDataFromSearch!(text);
//               //                             },
//               //                             decoration: InputDecoration(
//               //                               border: InputBorder.none,
//               //                               prefixIcon: Icon(Icons.search, color: isDark ? Color(0xFFBFBFBF) : Colors.black),
//               //                               suffixIcon: IconButton(
//               //                                 onPressed: () {
//               //                                   setState(() {
//               //                                     search = true;
//               //                                   });
//               //                                   appBarTitle = getTitle(width);
//               //                                 },
//               //                                 icon: Icon(Icons.close, color: isDark ? Color(0xFFBFBFBF) : Colors.black),
//               //                               ),
//               //                               //hintText: widget.searchHintText!,
//               //                               hintStyle: TextStyle(
//               //                                 fontSize: 23.0,
//               //                                 color: isDark ? Colors.white : Colors.white,
//               //                                 //color: isDark ? Color(0xFFBFBFBF) : Colors.black,
//               //                                 fontWeight: FontWeight.w500,
//               //                               ),
//               //                             )
//               //                         ),
//               //                       ),
//               //                     )
//               //                 )
//               //             );
//               //             search = true;
//               //           });
//               //
//               //         })
//             ],
//           );
//         }));
//   }

//   TitleAppBarWidget(
//       Orientation portrait, String date, bool is24HoursFormat, String time) {
//     return Container(
//       child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
//         Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//           if (portrait != Orientation.portrait) ...[
//             StreamBuilder(
//               stream: Stream.periodic(const Duration(seconds: 1)),
//               builder: (context, snapshot) {
//                 return Text(
//                   date,
//                   // DateFormat.yMd(widget.languageCode).format(DateTime.now()),
//                   style: Theme.of(context).textTheme.headline1,
//                   maxLines: 1,
//                   textAlign: TextAlign.start,
//                 );
//               },
//             ),
//             SizedBox(height: 3),
//             if (portrait != Orientation.portrait)
//               StreamBuilder(
//                 stream: Stream.periodic(const Duration(seconds: 1)),
//                 builder: (context, snapshot) {
//                   return Text(
//                     is24HoursFormat
//                         ? time
//                         // ? DateFormat.Hm(widget.languageCode).format(DateTime.now())
//                         : DateFormat("h:mm a").format(DateTime.now()),
//                     style: Theme.of(context).textTheme.headline1,
//                     maxLines: 1,
//                     textAlign: TextAlign.start,
//                   );
//                 },
//               ),
//             // if (appBarTitle == null)
//             //   getTitle(width)
//             // else
//             //   appBarTitle!,
//             //
//             // //warning icon
//             // if(widget.warningIsShowing)
//             //   Align(
//             //       alignment: Alignment.topRight,
//             //       child: GestureDetector(
//             //           onTap: widget.warningMethod,
//             //           child: FadeTransition(
//             //             opacity: _fadeInFadeOut!,
//             //             child: SvgPicture.asset("lib/res/svg/ic_warning.svg"),
//             //           )
//             //       )
//             //   )

//             // Text(
//             //   datetime1,
//             //   style: TextStyle(
//             //     color: Color.fromRGBO(255, 255, 255, 1),
//             //     fontWeight: FontWeight.w300,
//             //     shadows: <Shadow>[
//             //       Shadow(
//             //         offset: Offset(0, 0.8),
//             //         blurRadius: 4,
//             //         color: Colors.black,
//             //       ),
//             //     ],
//             //     fontSize: 20.0,
//             //   ),
//             // ),

//             // Text(
//             //   datetime2,
//             //   style: TextStyle(
//             //     shadows: <Shadow>[
//             //       Shadow(
//             //         offset: Offset(0, 0.8),
//             //         blurRadius: 4,
//             //         color: Colors.black,
//             //       ),
//             //     ],
//             //     fontSize: 25.0,
//             //   ),
//             // )
//           ]
//         ]),
//         //date

//         //dot between date and time
//         // if (portrait != Orientation.portrait)
//         //   Center(
//         //     child: Container(
//         //       padding: EdgeInsets.symmetric(horizontal: 10),
//         //       child: Icon(
//         //         Icons.close,
//         //         size: 5,
//         //         color: Color(0xFFBFBFBF),
//         //       ),
//         //     ),
//         //   ),

//         //time

//         //title
//       ]),
//     );
//   }

//   BlocProvider<DrawerCubit> leadingAppBarBuildBlocProvider(
//       Orientation portrait) {
//     return BlocProvider<DrawerCubit>(
//         create: (BuildContext context) => widget.drawerCubit,
//         child: portrait == Orientation.portrait
//             ?
//             //if screen is portrait show only icon
//             BlocBuilder<DrawerCubit, bool>(builder: (context, isOpen) {
//                 return IconButton(
//                   icon: isOpen
//                       ? Icon(
//                           Icons.arrow_back_rounded,
//                           size: 40,
//                           color: widget.drawerIconColor,
//                         )
//                       : Icon(
//                           Icons.menu_rounded,
//                           size: 40,
//                           color: widget.drawerIconColor,
//                         ),
//                   onPressed: () {
//                     setState(() {
//                       if (widget.scaffoldKey.currentState!.isDrawerOpen ==
//                           false) {
//                         widget.scaffoldKey.currentState!.openDrawer();
//                       } else {
//                         widget.scaffoldKey.currentState!.openEndDrawer();
//                       }
//                     });
//                   },
//                 );
//               })
//             //if screen is landscape show icon with text
//             : Container(
//                 decoration: BoxDecoration(
//                     color: widget.leadingColor,
//                     borderRadius: BorderRadius.only(
//                         topRight: Radius.circular(8),
//                         bottomRight: Radius.circular(8))),
//                 child: Row(
//                   children: [
//                     Center(child: BlocBuilder<DrawerCubit, bool>(
//                         builder: (context, isOpen) {
//                       return IconButton(
//                         padding: EdgeInsets.only(left: 8),
//                         icon: isOpen
//                             ? Icon(
//                                 Icons.arrow_back_rounded,
//                                 size: 40,
//                                 color: widget.drawerIconColor,
//                               )
//                             : Icon(
//                                 Icons.menu_rounded,
//                                 size: 40,
//                                 color: widget.drawerIconColor,
//                               ),
//                         onPressed: () {
//                           setState(() {
//                             if (widget.scaffoldKey.currentState!.isDrawerOpen ==
//                                 false) {
//                               widget.scaffoldKey.currentState!.openDrawer();
//                             } else {
//                               widget.scaffoldKey.currentState!.openEndDrawer();
//                             }
//                           });
//                         },
//                       );
//                     })),
//                     Expanded(
//                       child: Center(
//                         child: Padding(
//                           padding: EdgeInsets.only(right: 30),
//                           child: AutoSizeText(
//                             widget.leadingName,
//                             maxLines: 1,
//                             style: widget.leadingTextStyle,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ));
//   }

//   Widget getTitle(double width) {
//     return BlocBuilder<ThemeProvider, bool>(builder: (context, isDark) {
//       return Expanded(
//         child: Container(
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: width < 550 ? 0 : 20),
//             child: SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Padding(
//                 padding: EdgeInsets.only(bottom: 1.5),
//                 child: AutoSizeText(
//                   widget.title,
//                   style: Theme.of(context).textTheme.headline2,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       );
//     });
//   }
// }
