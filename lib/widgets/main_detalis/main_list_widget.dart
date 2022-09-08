import 'package:flutter/material.dart';

class Movie {
  // class for list movies
  final int id;
  final String title;
  //final String imageName;
  //final String time;
  //final String description;

  Movie({
    required this.id,
    required this.title,
    //required this.imageName,
    //required this.time,
    //required this.description,
  });
}

class MainListWidget extends StatefulWidget {
  MainListWidget({Key? key}) : super(key: key);

  @override
  State<MainListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MainListWidget> {
  final _movies = [
    //создаем экземпляры класса movies
    // нельзя сделать класс константным если в нем есть неконстантные поля
    Movie(
      id: 1,
      //imageName: AppImages.open.assetName,
      title: 'Alluminio',
      // time: 'April 4, 2021',
      // description: 'Wndn bjkbk bkbkbk kbkbk kjbkbk kjbkjbbbkk bkk',
    ),
    Movie(
      id: 2,
      //imageName: AppImages.open.assetName,
      title: 'Ammortizatore',
      //time: 'April 4, 2022',
      //description: 'Dffhh dsfsdfsf kbkbk kjbkbk kjbkjbbbkk bkk',
    ),
    Movie(
      id: 3,
      title: 'Annelo Lockring',
      //time: 'April 4, 2021',
      //description: 'Wndn bjkbk bkbkbk kbkbk kjbkbk kjbkjbbbkk bkk',
    ),
    Movie(
      id: 4,
      title: 'Antimuffa',
      //time: 'April 4, 2022',
      //description: 'Dffhh dsfsdfsf kbkbk kjbkbk kjbkjbbbkk bkk',
    ),
    Movie(
      id: 5,
      //imageName: AppImages.open.assetName,
      title: 'Alluminio',
      // time: 'April 4, 2021',
      // description: 'Wndn bjkbk bkbkbk kbkbk kjbkbk kjbkjbbbkk bkk',
    ),
    Movie(
      id: 6,
      //imageName: AppImages.open.assetName,
      title: 'Ammortizatore',
      //time: 'April 4, 2022',
      //description: 'Dffhh dsfsdfsf kbkbk kjbkbk kjbkjbbbkk bkk',
    ),
    Movie(
      id: 7,
      title: 'Annelo Lockring',
      //time: 'April 4, 2021',
      //description: 'Wndn bjkbk bkbkbk kbkbk kjbkbk kjbkjbbbkk bkk',
    ),
    Movie(
      id: 8,
      title: 'Antimuffa',
      //time: 'April 4, 2022',
      //description: 'Dffhh dsfsdfsf kbkbk kjbkbk kjbkjbbbkk bkk',
    ),
    Movie(
      id: 9,
      //imageName: AppImages.open.assetName,
      title: 'Alluminio',
      // time: 'April 4, 2021',
      // description: 'Wndn bjkbk bkbkbk kbkbk kjbkbk kjbkjbbbkk bkk',
    ),
    Movie(
      id: 10,
      //imageName: AppImages.open.assetName,
      title: 'Ammortizatore',
      //time: 'April 4, 2022',
      //description: 'Dffhh dsfsdfsf kbkbk kjbkbk kjbkjbbbkk bkk',
    ),
    Movie(
      id: 11,
      title: 'Annelo Lockring',
      //time: 'April 4, 2021',
      //description: 'Wndn bjkbk bkbkbk kbkbk kjbkbk kjbkjbbbkk bkk',
    ),
    Movie(
      id: 12,
      title: 'Antimuffa',
      //time: 'April 4, 2022',
      //description: 'Dffhh dsfsdfsf kbkbk kjbkbk kjbkjbbbkk bkk',
    ),
    Movie(
      id: 13,
      //imageName: AppImages.open.assetName,
      title: 'Alluminio',
      // time: 'April 4, 2021',
      // description: 'Wndn bjkbk bkbkbk kbkbk kjbkbk kjbkjbbbkk bkk',
    ),
    Movie(
      id: 14,
      //imageName: AppImages.open.assetName,
      title: 'Ammortizatore',
      //time: 'April 4, 2022',
      //description: 'Dffhh dsfsdfsf kbkbk kjbkbk kjbkjbbbkk bkk',
    ),
  ];
  var _filteredMovies = <Movie>[];

  final _searchController = TextEditingController();

  void _searchMovies() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredMovies = _movies.where((Movie movie) {
        return movie.title.toLowerCase().contains(query);
      }).toList();
    } else {
      _filteredMovies = _movies;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    _filteredMovies = _movies;
    _searchController.addListener(_searchMovies);
  }

  void _onMovieTab(int index) {
    final id = _movies[index].id;
    Navigator.of(context).pushNamed(
      '/main_screen/main_details',
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
            padding: EdgeInsets.only(top: 70),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            itemCount: _filteredMovies.length,
            itemExtent: 80,
            itemBuilder: (BuildContext context, int index) {
              final movie = _filteredMovies[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(32, 32, 32, 1),
                          border:
                              Border.all(color: Colors.white.withOpacity(0.2)),
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          boxShadow: [
                            BoxShadow(
                              // color: Colors.blue.withOpacity(0.1),
                              blurRadius: 8,
                              offset: Offset(0, 2),
                            )
                          ]),
                      clipBehavior: Clip.hardEdge,
                      child: Row(
                        children: [
                          // Image(image: AssetImage(movie.imageName)),
                          SizedBox(width: 15),
                          SizedBox(height: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 24),
                                Text(
                                  movie.title,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 24,
                                    color: Colors.white,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 175,
                            //height: 55,
                            child: TextButton(
                              child: Text(
                                'Select',
                                style: TextStyle(
                                  fontSize: 25,
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(1.0, 2.0),
                                      blurRadius: 4,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                              style: TextButton.styleFrom(
                                primary: Color.fromRGBO(243, 243, 243, 1),
                                backgroundColor:
                                    Color.fromRGBO(33, 166, 123, 1),
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(width: 10),
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
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        //borderRadius: BorderRadius.circular(5),
                        onTap: () => _onMovieTab(index),
                      ),
                    )
                  ],
                ),
              );
            }),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: searchWidget(),
        ),
      ],
    );
  }

  TextField searchWidget() {
    return TextField(
      style: TextStyle(color: Colors.white),
      controller: _searchController,
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle:
            TextStyle(fontSize: 20.0, color: Color.fromRGBO(233, 233, 233, 1)),
        focusColor: Color.fromRGBO(108, 120, 45, 1),
        filled: true, //чтобы можно было задать fillColor
        fillColor: Color.fromRGBO(54, 54, 54, 1),
        border: new OutlineInputBorder(
          borderSide: new BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
