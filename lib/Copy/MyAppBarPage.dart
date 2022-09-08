// import 'dart:collection';
// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:connect/Features/Core/Themes/light_dark_themes.dart';
// import 'package:connect/Features/Core/Widgets/action_drawer.dart';
// import 'package:connect/Features/Core/Widgets/app_bar_widget.dart';
// import 'package:connect/Features/Core/Widgets/dialogs/close_app_dialog.dart';
// import 'package:connect/Features/Core/entities/drawer_children.dart';
// import 'package:connect/Features/Roles/Presentation/bloc/drawer_cubit.dart';
// import 'package:connect/Features/laps/widget/main_detalis/body_main_menu.dart';
// import 'package:connect/res/strings/MyLocalizationDelegate.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_phoenix/flutter_phoenix.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:universal_io/io.dart';
// import '../injection_container.dart';

// //Todo when changed to HashMap - Delete
// class Movie {
//   final int id;
//   final String title;

//   Movie({
//     required this.id,
//     required this.title,
//   });
// }

// class AppBarPage extends StatefulWidget {
//   GlobalKey<ScaffoldState> scaffoldKey;
//   static const String route = "/laps";
//   String title;
//   Color leadingColor;
//   String leadingName;
//   TextStyle leadingTextStyle;
//   final bool showSearch;
//   final String? searchHintText;
//   late String languageCode;
//   late bool warningIsShowing;
//   VoidCallback? warningMethod;
//   Color drawerIconColor;
//   int leadingWidth;
//   DrawerCubit drawerCubit;
//   ValueChanged<String>? getDataFromSearch;

//   AppBarPage({
//     Key? key,
//     required this.leadingColor,
//     required this.leadingName,
//     required this.drawerCubit,
//     required this.title,
//     required this.scaffoldKey,
//     required this.leadingWidth,
//     required this.leadingTextStyle,
//     required this.showSearch,
//     this.searchHintText,
//     this.getDataFromSearch,
//     required this.languageCode,
//     required this.warningIsShowing,
//     required this.drawerIconColor,
//     required List<Widget> actions,
//   }) : super(key: key);

//   final List<String> list = List.generate(100, (index) => "Text $index");

//   @override
//   State<AppBarPage> createState() => _AppBarPageState();
// }

// Color getIconDrawerColor(bool portrait, bool isDrak) {
//   if (portrait && isDrak)
//     return Colors.white;
//   else
//     return Colors.white;
// }

// class _AppBarPageState extends State<AppBarPage> with TickerProviderStateMixin {
//   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
//   String title = "Laps";
//   DrawerCubit _drawerCubit = sl<DrawerCubit>();
//   AnimationController? animation;
//   Animation<double>? _fadeInFadeOut;
//   Icon actionIcon = new Icon(
//     Icons.search,
//     color: Colors.white,
//   );
//   final key = new GlobalKey<ScaffoldState>();
//   final TextEditingController _searchQuery = new TextEditingController();
//   List<String>? list;
//   bool? IsSearching;
//   String searchText = "";
//   bool search = true;

//   SearchListState() {
//     _searchQuery.addListener(() {
//       if (_searchQuery.text.isEmpty) {
//         setState(() {
//           IsSearching = false;
//           searchText = "";
//         });
//       } else {
//         setState(() {
//           IsSearching = true;
//           searchText = _searchQuery.text;
//         });
//       }
//     });
//   }

//   //TODO change this list to HashMap
//   HashMap map1 = new HashMap<int, String>();

//   final _laps = [
//     Movie(
//       id: 1,
//       title: 'Alluminio',
//     ),
//     Movie(
//       id: 2,
//       title: 'Ammortizatore',
//     ),
//     Movie(
//       id: 3,
//       title: 'Annelo Lockring',
//     ),
//     Movie(
//       id: 4,
//       title: 'Antimuffa',
//     ),
//     Movie(
//       id: 5,
//       title: 'Alluminio',
//     ),
//     Movie(
//       id: 6,
//       title: 'Ammortizatore',
//     ),
//     Movie(
//       id: 7,
//       title: 'Annelo Lockring',
//     ),
//     Movie(
//       id: 8,
//       title: 'Antimuffa',
//     ),
//     Movie(
//       id: 9,
//       title: 'Alluminio',
//     ),
//     Movie(
//       id: 10,
//       title: 'Ammortizatore',
//     ),
//     Movie(
//       id: 11,
//       title: 'Annelo Lockring',
//     ),
//     Movie(
//       id: 12,
//       title: 'Antimuffa',
//     ),
//   ];
//   var _filteredLaps = <Movie>[];

//   TextEditingController _searchController = TextEditingController();
//   TextEditingController _controller = TextEditingController();
//   TextEditingController fieldText = TextEditingController();
//   List<FocusNode> _focusNodes = [
//     FocusNode(),
//     FocusNode(),
//     FocusNode(),
//     FocusNode(),
//   ];
//   Icon customIcon = const Icon(Icons.search);
//   Widget customSearchBar = const Text('My Personal ');

//   void clearText() {
//     fieldText.clear();
//   }

//   void _searchLaps() {
//     final query = _searchController.text;
//     if (query.isNotEmpty) {
//       _filteredLaps = _laps.where((Movie laps) {
//         return laps.title.toLowerCase().contains(query);
//       }).toList();
//     } else {
//       _filteredLaps = _laps;
//     }
//     setState(() {});
//   }

//   @override
//   void initState() {
//     animation = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 2),
//     );
//     _fadeInFadeOut = Tween<double>(begin: 0.0, end: 1).animate(animation!);

//     animation!.addStatusListener((status) {
//       if (status == AnimationStatus.completed) {
//         animation!.reverse();
//       } else if (status == AnimationStatus.dismissed) {
//         animation!.forward();
//       }
//     });
//     animation!.forward();
//     _focusNodes.forEach((node) {
//       node.addListener(() {
//         setState(() {});
//       });
//     });
//     super.initState();

//     IsSearching = false;
//     _filteredLaps = _laps;
//     _searchController.addListener(_searchLaps);
//     _controller.addListener(clearText);
//   }

//   void _onLapsTab(int index) {
//     final id = _laps[index].id;
//     Navigator.of(context).pushNamed(
//       '/main_screen/laps_details',
//       arguments: id,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final languageCode = Localizations.localeOf(context).languageCode;
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
//     WidgetsFlutterBinding.ensureInitialized();

//     SystemChrome.setPreferredOrientations([
//       DeviceOrientation.portraitUp,
//       DeviceOrientation.landscapeLeft,
//       DeviceOrientation.portraitDown,
//       DeviceOrientation.landscapeRight,
//     ]);

//     final isPortrait =
//         MediaQuery.of(context).orientation == Orientation.portrait;
//     Color mainColorGreen = Color.fromRGBO(108, 120, 45, 1);

//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: const Color.fromRGBO(45, 21, 47, 1),
//         appBar: PreferredSize(
//           preferredSize: Size.fromHeight(70),
//           child: AppBarWidget(
//             leading: Container(),
//             leadingWidth: (isPortrait == Orientation.portrait) ? 50 : 150,
//             automaticallyImplyLeading: true,
//             languageCode: languageCode,
//             title: title,
//             scaffoldKey: _scaffoldKey,
//             drawerCubit: _drawerCubit,
//             warningIsShowing: false,
//             drawerIconColor: getIconDrawerColor(isPortrait, isDark),
//             leadingColor: mainColorGreen,
//             leadingName: title,
//             leadingTextStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
//                   color: Colors.white,
//                   fontSize: 30,
//                   fontWeight: FontWeight.w600,
//                 ),
//             showSearch: true,
//             actions: [],
//           ),
//         ),
//         body: Scaffold(
//           key: _scaffoldKey,
//           drawer: ActionDrawer(
//               isDark: isDark,
//               drawerCubit: _drawerCubit,
//               drawerChildren: getChildrenForDrawer(isDark)),
//           body: mainPageBody(),
//         ),
//       ),
//     );
//   }

//   Container mainPageBody() {
//     return Container(
//       decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topRight,
//             end: Alignment.bottomLeft,
//             colors: [
//               Color.fromRGBO(76, 29, 44, 1),
//               Color.fromRGBO(13, 13, 45, 1),
//             ],
//           ),
//           color: const Color.fromRGBO(32, 32, 32, 1),
//           borderRadius: BorderRadius.all(Radius.circular(0)),
//           boxShadow: [
//             BoxShadow(
//               blurRadius: 8,
//               offset: Offset(0, 2),
//             )
//           ]),
//       child: Stack(
//         children: [
//           ListView.builder(
//               padding: EdgeInsets.only(top: 40),
//               keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
//               itemCount: _filteredLaps.length,
//               itemExtent: 80,
//               itemBuilder: (BuildContext context, int index) {
//                 final laps_into = _filteredLaps[index];
//                 return Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
//                   child: Stack(
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                             color: const Color.fromRGBO(32, 32, 32, 1),
//                             borderRadius: BorderRadius.all(Radius.circular(0)),
//                             boxShadow: [
//                               BoxShadow(
//                                 blurRadius: 8,
//                                 offset: Offset(0, 2),
//                               )
//                             ]),
//                         clipBehavior: Clip.hardEdge,
//                         child: Row(
//                           children: [
//                             SizedBox(width: 15),
//                             SizedBox(height: 10),
//                             Expanded(
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   SizedBox(height: 24),
//                                   Text(
//                                     laps_into.title,
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.w400,
//                                       fontSize: 24,
//                                       color: Colors.white,
//                                     ),
//                                     maxLines: 1,
//                                     overflow: TextOverflow.ellipsis,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               width: 175,
//                               height: 50,
//                               child: TextButton(
//                                 child: Text(
//                                   'Select',
//                                   style: TextStyle(
//                                     shadows: <Shadow>[
//                                       Shadow(
//                                         offset: Offset(0, 0.8),
//                                         blurRadius: 4,
//                                         color: Colors.black,
//                                       ),
//                                     ],
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 25,
//                                     color: Color.fromRGBO(233, 233, 233, 1),
//                                   ),
//                                 ),
//                                 style: TextButton.styleFrom(
//                                   primary: Color.fromRGBO(243, 243, 243, 1),
//                                   backgroundColor:
//                                       Color.fromRGBO(0, 200, 123, 1),
//                                   shape: const RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.all(
//                                           Radius.circular(15))),
//                                 ),
//                                 onPressed: () {},
//                               ),
//                             ),
//                             SizedBox(width: 10),
//                           ],
//                         ),
//                       ),
//                       Material(
//                         color: Colors.transparent,
//                         child: InkWell(
//                           onTap: () => _onLapsTab(index),
//                         ),
//                       )
//                     ],
//                   ),
//                 );
//               }),
//           Column(
//             children: [
//               BodyMainMenuWidget(),
//             ],
//           ),
//         ],
//       ),
//       //MainListWidget(),
//     );
//   }

//   Widget? getTitle(double width) {
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

//   List<DrawerChildren> getChildrenForDrawer(bool isDark) {
//     List<DrawerChildren> children = [];
//     //children for exiting app
//     children.add(
//       DrawerChildren(
//         icon: Icon(Icons.clear_rounded, size: 30),
//         text: kIsWeb
//             ? MyLocalizations.instance?.getText("logout_web") ?? "Log out"
//             : MyLocalizations.instance?.getText("exit_app") ??
//                 "Exit Application",
//         callback: () async {
//           if (kIsWeb) {
//             SharedPreferences preferences =
//                 await SharedPreferences.getInstance();
//             await preferences.clear();
//             Phoenix.rebirth(context);
//           } else if (Platform.isAndroid) {
//             CloseAppDialog dialog = CloseAppDialog();
//             dialog.showCloseAppDialog(context);
//           } else if (Platform.isIOS) {
//             exit(0);
//           }
//         },
//       ),
//     );

//     return children;
//   }

//   @override
//   void debugFillProperties(DiagnosticPropertiesBuilder properties) {
//     super.debugFillProperties(properties);
//     properties.add(DiagnosticsProperty('map1', map1));
//   }
// }
