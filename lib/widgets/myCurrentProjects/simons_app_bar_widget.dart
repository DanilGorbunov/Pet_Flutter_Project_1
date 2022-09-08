// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:connect/Features/Core/Themes/light_dark_themes.dart';
// import 'package:connect/Features/Core/colors/AppColors.dart';
// import 'package:connect/Features/Roles/Presentation/bloc/drawer_cubit.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:intl/intl.dart';


// import '../../injection_container.dart';

// class AppBarWidget extends StatefulWidget implements PreferredSizeWidget{
//    String languageCode;
//    String title;
//    GlobalKey<ScaffoldState> scaffoldKey;
//    DrawerCubit drawerCubit;
//    bool warningIsShowing;
//    VoidCallback? warningMethod;
//    Color drawerIconColor;
//    Color leadingColor;
//    String leadingName;
//    TextStyle leadingTextStyle;
//    bool showSearch;
//    String? searchHintText;
//    ValueChanged<String>? getDataFromSearch;
//    int leadingWidth;
//    Container leading;
//    List<Widget>? actions;
//    bool automaticallyImplyLeading;

//   AppBarWidget(
//       {required this.languageCode,
//         required this.automaticallyImplyLeading,
//       required this.title,
//       required this.scaffoldKey,
//       required this.drawerCubit,
//       required this.warningIsShowing,
//       this.warningMethod,
//       required this.drawerIconColor,
//       required this.leadingColor,
//       required this.leadingName,
//       required this.leadingTextStyle,
//       required this.showSearch,
//       this.searchHintText,
//       this.getDataFromSearch,
//         required this.leadingWidth,
//         required this.leading,
//         required this.actions,
//       });

//   @override
//   State<StatefulWidget> createState() => _AppBarWidgetState();

//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => throw UnimplementedError();
// }

// class _AppBarWidgetState extends State<AppBarWidget> with TickerProviderStateMixin{

//   late final portrait = MediaQuery.of(context).orientation;
//   late final bool is24HoursFormat = MediaQuery.of(context).alwaysUse24HourFormat;
//   bool search = true;

//   AnimationController? animation;

//   @override
//   void initState() {
//     //animation for warning
//     animation = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 2),
//     );

//     animation!.addStatusListener((status) {
//       if(status == AnimationStatus.completed){
//         animation!.reverse();
//       }else if(status == AnimationStatus.dismissed){
//         animation!.forward();
//       }
//     });
//     animation!.forward();

//     super.initState();
//   }

//   @override
//   void dispose() {
//     if(animation != null)
//       animation!.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     final portrait = MediaQuery.of(context).orientation;
//     final bool is24HoursFormat = MediaQuery.of(context).alwaysUse24HourFormat;
//     // var tag = Localizations.maybeLocaleOf(context)?.toLanguageTag();
//     //var date = DateFormat("d. MMM. yyyy", tag).format(DateTime.now()); // Dec 31, 2000
//     //var time = DateFormat.jm(tag).format(DateTime.now()); // 12/31, 11:00 PM
//    // DateTime datetime1 = DateFormat.Hm(widget.languageCode).format(DateTime.now());
//     //DateTime datetime2 = DateFormat.Hm(widget.languageCode).format(DateTime.now());
//     Widget? appBarTitle = TitleAppBarWidget(portrait, is24HoursFormat);
//     // Widget? appBarTitle = getTitle(width);


//     return BlocProvider<DrawerCubit>(

//         create: (BuildContext context) => widget.drawerCubit,
//         child: BlocBuilder<ThemeProvider, bool>(builder: (context, isDark) {

//           return AppBar(

//             automaticallyImplyLeading: false,
//             leading: leadingAppBarBuildBlocProvider(portrait),
//             title: appBarTitle,
//             toolbarHeight: 70,
//             leadingWidth: (portrait == Orientation.portrait) ? 50 : 230,
//               actions: <Widget>[
//               if (widget.showSearch && search)
//                 IconButton(
//                     icon: Icon(Icons.search, color: isDark ? Colors.white : Colors.black,),
//                     onPressed: () {
//                       setState(() {
//                         search = false;
//                         appBarTitle = Expanded(
//                             child: Center(
//                                 child: Padding(
//                                   padding: EdgeInsets.symmetric(horizontal: 20),
//                                   child: Container(
//                                     decoration: BoxDecoration(color: Color(0xFF000000).withOpacity(0.25), borderRadius: BorderRadius.circular(5.0)),
//                                     child:
//                                       TextField(
//                                         style: TextStyle(
//                                           fontSize: 23.0,
//                                           color: isDark ? Color(0xFFBFBFBF) : Colors.black,
//                                           fontWeight: FontWeight.w500,
//                                         ),
//                                         onChanged: (text) {
//                                           widget.getDataFromSearch!(text);
//                                         },
//                                         decoration: InputDecoration(
//                                           border: InputBorder.none,
//                                           prefixIcon: Icon(Icons.search, color: isDark ? Color(0xFFBFBFBF) : Colors.black),
//                                           suffixIcon: IconButton(
//                                             onPressed: () {
//                                               setState(() {
//                                                 search = true;
//                                               });
//                                               appBarTitle = getTitle(width);
//                                             },
//                                             icon: Icon(Icons.close, color: isDark ? Color(0xFFBFBFBF) : Colors.black),
//                                           ),
//                                           hintText: widget.searchHintText!,
//                                           hintStyle: TextStyle(
//                                             fontSize: 23.0,
//                                             //color: isDark ? Colors.white : Colors.white,
//                                             color: isDark ? Color(0xFFBFBFBF) : Colors.black,
//                                             fontWeight: FontWeight.w500,
//                                           ),
//                                         )
//                                     ),
//                                   ),
//                                 )
//                             )
//                         );
//                         search = true;
//                       });

//                     })

//             ],
//           );
//         })
//     );
//   }

//   // var dateTime = DateFormat("yyyy-MM-dd HH:mm:ss").parse(dateUtc, true);
//   // var dateLocal = dateTime.toLocal();



//   TitleAppBarWidget(Orientation portrait, bool is24HoursFormat) {
//     return Container(
//       child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             //date
//             Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   if (portrait != Orientation.portrait)
//                           ...[StreamBuilder(
//                       stream: Stream.periodic(const Duration(seconds: 1)),
//                       builder: (context, snapshot) {
//                       return Text(

                          
//                       DateFormat.yMMMMd(widget.languageCode ).format(DateTime.now()),
//                       style:Theme.of(context).textTheme.headline1!.copyWith(
//                         fontWeight: FontWeight.w300,
//                         fontSize: 20,
//                         color: isDark ? AppColors.whiteFFF : AppColors.black54,
//                       ),
//                       maxLines: 1,
//                       textAlign: TextAlign.start,
//                       );
//                       },
//                       ),
//                   ],
//                     SizedBox(height: 3),
//             //time
//                   if (portrait != Orientation.portrait)
//                     StreamBuilder(
//                       stream: Stream.periodic(const Duration(seconds: 1)),
//                       builder: (context, snapshot) {
//                         return Text(

//                           is24HoursFormat
//                               ? DateFormat.Hm(widget.languageCode).format(DateTime.now())
//                               : DateFormat("h:mm a").format(DateTime.now()),
//                               // ? DateFormat.Hm(widget.languageCode).format(DateTime.now())
//                               // : DateFormat("h:mm a").format(DateTime.now()),
//                           style:      Theme.of(context).textTheme.headline1!.copyWith(
//                             fontWeight: FontWeight.w400,
//                             fontSize: 25,
//                             color: isDark ? AppColors.whiteFFF : AppColors.black54,
//                         ),
//                           maxLines: 1,
//                           textAlign: TextAlign.start,

//                         );
//                       },
//                     ),
//                 ]
//             ),
//           ]),
//     );
//   }

//   // TitleAppBarWidget(Orientation portrait, bool is24HoursFormat) {
//   //   return Container(
//   //     child: Row(
//   //               crossAxisAlignment: CrossAxisAlignment.center,
//   //               children: [
//   //                      //date
//   //                 if (portrait != Orientation.portrait)
//   //                   ...[StreamBuilder(
//   //                     stream: Stream.periodic(const Duration(seconds: 1)),
//   //                     builder: (context, snapshot) {
//   //                       return Text(
//   //                         DateFormat.yMd(widget.languageCode).format(DateTime.now()),
//   //                         style: Theme.of(context).textTheme.headline1,
//   //                         maxLines: 1,
//   //                         textAlign: TextAlign.start,
//   //                       );
//   //                     },
//   //                   ),
//   //                     //dot between date and time
//   //                     if (portrait != Orientation.portrait)
//   //                       Center(
//   //                         child: Container(
//   //                           padding: EdgeInsets.symmetric(horizontal: 5),
//   //                           child: Icon(
//   //                             Icons.circle,
//   //                             size: 5,
//   //                             color: Color(0xFFBFBFBF),
//   //                           ),
//   //                         ),
//   //                       ),
//   //
//   //                     SizedBox(height: 3),
//   //                     //time
//   //                 if (portrait != Orientation.portrait)
//   //                   StreamBuilder(
//   //                     stream: Stream.periodic(const Duration(seconds: 1)),
//   //                     builder: (context, snapshot) {
//   //                       return Text(
//   //                         is24HoursFormat
//   //                            ? DateFormat.Hm(widget.languageCode).format(DateTime.now())
//   //                             : DateFormat("h:mm a").format(DateTime.now()),
//   //                         style: Theme.of(context).textTheme.headline1,
//   //                         maxLines: 1,
//   //                         textAlign: TextAlign.start,
//   //                       );
//   //                     },
//   //                   ),
//   //                 ],
//   //               ]),
//   //   );
//   // }

//   BlocProvider<DrawerCubit> leadingAppBarBuildBlocProvider(Orientation portrait) {
//     return BlocProvider<DrawerCubit>(
//             create: (BuildContext context) => widget.drawerCubit,
//             child: portrait == Orientation.portrait ?
//               //if screen is portrait show only icon
//             BlocBuilder<DrawerCubit, bool>(builder: (context, isOpen) {
//                 return IconButton(
//                   icon: isOpen ? Icon(Icons.arrow_back_rounded, size: 40, color: widget.drawerIconColor,)
//                       : Icon(Icons.menu_rounded, size: 40, color: widget.drawerIconColor,),
//                   onPressed: () {
//                     setState(() {
//                       if (widget.scaffoldKey.currentState!.isDrawerOpen == false) {
//                         widget.scaffoldKey.currentState!.openDrawer();
//                       } else {
//                         widget.scaffoldKey.currentState!.openEndDrawer();
//                       }
//                     });
//                   },
//                 );
//               })
//               //if screen is landscape show icon with text
//               : Container(
//                 decoration: BoxDecoration(
//                     color: widget.leadingColor,
//                     borderRadius: BorderRadius.only(topRight: Radius.circular(8), bottomRight: Radius.circular(8))
//                 ),
//                 child: Row(
//                   children: [
//                     Center(
//                         child: BlocBuilder<DrawerCubit, bool>(builder: (context, isOpen) {
//                           return IconButton(
//                             padding: EdgeInsets.only(left: 8),
//                             icon: isOpen ? Icon(Icons.arrow_back_rounded, size: 40, color: widget.drawerIconColor,)
//                                 : Icon(Icons.menu_rounded, size: 40, color: widget.drawerIconColor,),
//                             onPressed: () {
//                               setState(() {
//                                 if (widget.scaffoldKey.currentState!.isDrawerOpen == false) {
//                                   widget.scaffoldKey.currentState!.openDrawer();
//                                 } else {
//                                   widget.scaffoldKey.currentState!.openEndDrawer();
//                                 }
//                               });
//                             },
//                           );
//                         })),
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
//               )
//           );
//   }

//   Widget getTitle(double width){
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
