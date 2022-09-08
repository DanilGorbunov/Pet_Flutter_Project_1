// import 'package:flutter/material.dart';

// class Laps {
//   // class for list movies
//   final int id;
//   final String title;
//   //final String imageName;
//   //final String time;
//   //final String description;

//   Laps({
//     required this.id,
//     required this.title,
//     //required this.imageName,
//     //required this.time,
//     //required this.description,
//   });
// }

// class LapsListWidget extends StatefulWidget {
//   LapsListWidget({Key? key}) : super(key: key);

//   @override
//   State<LapsListWidget> createState() => _LapsListWidgetState();
// }

// class _LapsListWidgetState extends State<LapsListWidget> {
//   final _movies = [
//     //создаем экземпляры класса movies
//     // нельзя сделать класс константным если в нем есть неконстантные поля
//     Laps(
//       id: 1,
//       //imageName: AppImages.open.assetName,
//       title: 'Guidare',
//       // time: 'April 4, 2021',
//       // description: 'Wndn bjkbk bkbkbk kbkbk kjbkbk kjbkjbbbkk bkk',
//     ),
//     Laps(
//       id: 2,
//       //imageName: AppImages.open.assetName,
//       title: 'AMMOTIZZATORE',
//       //time: 'April 4, 2022',
//       //description: 'Dffhh dsfsdfsf kbkbk kjbkbk kjbkjbbbkk bkk',
//     ),
//     Laps(
//       id: 3,
//       title: 'ANNELO LOCKRING',
//       //time: 'April 4, 2021',
//       //description: 'Wndn bjkbk bkbkbk kbkbk kjbkbk kjbkjbbbkk bkk',
//     ),
//     Laps(
//       id: 4,
//       title: 'ANTIMUFFA',
//       //time: 'April 4, 2022',
//       //description: 'Dffhh dsfsdfsf kbkbk kjbkbk kjbkjbbbkk bkk',
//     ),
//   ];
//   var _filteredMovies = <Laps>[];

//   final _searchController = TextEditingController();

//   void _searchMovies() {
//     final query = _searchController.text;
//     if (query.isNotEmpty) {
//       _filteredMovies = _movies.where((Laps movie) {
//         return movie.title.toLowerCase().contains(query);
//       }).toList();
//     } else {
//       _filteredMovies = _movies;
//     }
//     setState(() {});
//   }

//   @override
//   void initState() {
//     super.initState();

//     _filteredMovies = _movies;
//     _searchController.addListener(_searchMovies);
//   }

//   void _onMovieTab(int index) {
//     final id = _movies[index].id;
//     Navigator.of(context).pushNamed(
//       '/main_screen/movies_details',
//       arguments: id,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         ListView.builder(
//             padding: EdgeInsets.only(top: 70),
//             keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
//             itemCount: _filteredMovies.length,
//             itemExtent: 80,
//             itemBuilder: (BuildContext context, int index) {
//               final movie = _filteredMovies[index];
//               return Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
//                 child: Stack(
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                           color: const Color.fromRGBO(32, 32, 32, 1),
//                           border:
//                               Border.all(color: Colors.white.withOpacity(0.2)),
//                           borderRadius: BorderRadius.all(Radius.circular(0)),
//                           boxShadow: [
//                             BoxShadow(
//                               // color: Colors.blue.withOpacity(0.1),
//                               blurRadius: 8,
//                               offset: Offset(0, 2),
//                             )
//                           ]),
//                       clipBehavior: Clip.hardEdge,
//                       child: Row(
//                         children: [
//                           // Image(image: AssetImage(movie.imageName)),
//                           SizedBox(width: 15),
//                           SizedBox(height: 10),
//                           Expanded(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 SizedBox(height: 24),
//                                 Text(
//                                   movie.title,
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.w400,
//                                     fontSize: 24,
//                                     color: Colors.white,
//                                   ),
//                                   maxLines: 1,
//                                   overflow: TextOverflow.ellipsis,
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             width: 125,
//                             child: TextButton(
//                               child: Text(
//                                 'Select',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               style: TextButton.styleFrom(
//                                 primary: Color.fromRGBO(243, 243, 243, 1),
//                                 backgroundColor:
//                                     Color.fromRGBO(33, 166, 123, 1),
//                                 shape: const RoundedRectangleBorder(
//                                     borderRadius:
//                                         BorderRadius.all(Radius.circular(15))),
//                               ),
//                               onPressed: () {},
//                             ),
//                           ),
//                           SizedBox(width: 10),
//                           // Container(
//                           //   margin: EdgeInsets.all(10),
//                           //   height: 50.0,
//                           //   child: RaisedButton(
//                           //     shape: RoundedRectangleBorder(
//                           //         borderRadius: BorderRadius.circular(18.0),
//                           //         side: BorderSide(
//                           //             color: Color.fromRGBO(0, 160, 227, 1))),
//                           //     onPressed: () {},
//                           //     padding: EdgeInsets.all(10.0),
//                           //     color: Color.fromRGBO(33, 166, 123, 1),
//                           //     textColor: Colors.white,
//                           //     child: Text("Select",
//                           //         style: TextStyle(fontSize: 25)),
//                           //   ),
//                           // ),
//                         ],
//                       ),
//                     ),
//                     Material(
//                       color: Colors.transparent,
//                       child: InkWell(
//                         //borderRadius: BorderRadius.circular(5),
//                         onTap: () => _onMovieTab(index),
//                       ),
//                     )
//                   ],
//                 ),
//               );
//             }),
//         Padding(
//           padding: const EdgeInsets.all(6.0),
//           // child: searchWidget(),
//         ),
//       ],
//     );
//   }

//   // TextField searchWidget() {
//   //   return TextField(
//   //     controller: _searchController,
//   //     decoration: InputDecoration(
//   //       labelText: 'Search',
//   //       filled: true, //чтобы можно было задать fillColor
//   //       fillColor: Colors.black.withAlpha(235),
//   //       border: OutlineInputBorder(),
//   //     ),
//   //   );
// }
