import 'package:flutter/material.dart';
import 'package:movies_app/data/models/movies.dart';
import 'package:movies_app/ui/views/movie_detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<Movies>> moviesUpload() async {
    var moviesList = <Movies>[];
    var movie1 = Movies(id: 1, name: "Django", image: "django.png", price: 24);
    var movie2 = Movies(
        id: 2, name: "Interstellar", image: "interstellar.png", price: 24);
    var movie3 =
        Movies(id: 3, name: "Inception", image: "inception.png", price: 24);
    var movie4 = Movies(
        id: 4,
        name: "The Hateful Eight",
        image: "thehatefuleight.png",
        price: 24);
    var movie5 =
        Movies(id: 5, name: "The Pianist", image: "thepianist.png", price: 24);
    var movie6 =
        Movies(id: 6, name: "Anadoluda", image: "anadoluda.png", price: 24);

    moviesList.add(movie1);
    moviesList.add(movie2);
    moviesList.add(movie3);
    moviesList.add(movie4);
    moviesList.add(movie5);
    moviesList.add(movie6);
    return moviesList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
      ),
      body: FutureBuilder<List<Movies>>(
        future: moviesUpload(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var moviesList = snapshot.data;
            return GridView.builder(
              itemCount: moviesList!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.8,
              ),
              itemBuilder: (context, index) {
                var movie = moviesList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MovieDetailPage(movie: movie,),));
                  },
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("images/${movie.image}"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("${movie.price} ₺", style: TextStyle(fontSize: 24),),
                            ElevatedButton(onPressed: () {
                                print("${movie.name} add to sepet");
                            }, child: Text("Add"))
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center();
          }
        },
      ),
    );
  }
}
