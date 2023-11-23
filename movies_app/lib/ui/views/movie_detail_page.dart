import 'package:flutter/material.dart';
import 'package:movies_app/data/models/movies.dart';

class MovieDetailPage extends StatefulWidget {
  Movies movie;

  MovieDetailPage({required this.movie});

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.movie.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly
          ,
          children: [
            Image.asset("images/${widget.movie.image}"),
            Text("${widget.movie.price} ₺",style: TextStyle(fontSize: 50)),
          ],
        ),
      ),
    );
  }
}
