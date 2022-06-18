import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_list/pages/home_page.dart';
import 'package:movie_list/models/movies.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({super.key, required this.movies});
  final Movie movies;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appbar -------------------------
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 119, 14, 133),
        title: Text(
          "MOVIE DETAILS",
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255), letterSpacing: 2),
        ),
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),

      // body ----------------------------
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: Text(movies.title,
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold))),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Text(movies.year.toString(),
                    style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 112, 112, 112),
                        letterSpacing: 2)),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                width: 200,
                height: 300,
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
                      fit: BoxFit.fill, image: AssetImage(movies.poster)),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 25),
                  child: Text(
                    "Genre: ${movies.genre}",
                    style:
                        TextStyle(fontSize: 17.5, fontWeight: FontWeight.bold),
                  )),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Column(
                  children: [
                    Text("SUMMARY",
                        style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 112, 112, 112),
                            letterSpacing: 2)),
                  ],
                ),
              ),
              Text(movies.summary,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 38, 38, 38),
                  )),
            ],
          )),
    );
  }
}
