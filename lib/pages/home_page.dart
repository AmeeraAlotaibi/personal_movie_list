import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_list/models/movies.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appbar -------------------------
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 119, 14, 133),
        title: Text(
          "MOVIES",
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255), letterSpacing: 2),
        ),
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),

      // body ----------------------------
      body: SafeArea(
          child: ListView.builder(
              itemCount: movies.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: InkWell(
                    // on tap function
                    onTap: (() {
                      GoRouter.of(context).push("/movie", extra: movies[index]);
                    }),
                    child: Card(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Movie Posters
                          Container(
                            width: 120,
                            height: 180,
                            decoration: BoxDecoration(
                              boxShadow: [
                                new BoxShadow(
                                  color: Color.fromARGB(82, 0, 0, 0),
                                  blurRadius: 20,
                                  spreadRadius: 0,
                                )
                              ],
                              borderRadius: BorderRadius.circular(7),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(movies[index].poster)),
                            ),
                          ),
                          // Movie Info
                          Container(
                            padding: EdgeInsets.only(
                              left: 25,
                              top: 40,
                            ),
                            width: 225,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 14),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // movie title
                                      Flexible(
                                        child: Text(
                                          movies[index].title,
                                          overflow: TextOverflow.visible,
                                          softWrap: true,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      // movie year
                                      Text(
                                        "${movies[index].year.toString()}",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 126, 127, 128)),
                                      ),
                                    ],
                                  ),
                                ),
                                // movie genre
                                Text(
                                  "Genre: ${movies[index].genre}",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color:
                                          Color.fromARGB(255, 126, 127, 128)),
                                ),
                                // movie rating
                                Container(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star_rate,
                                          size: 16.5,
                                          color: Colors.amberAccent,
                                        ),
                                        Text(
                                          " ${movies[index].avgRating.toString()}",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              })),
    );
  }
}
