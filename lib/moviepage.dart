import 'package:flutter/material.dart';

class MoviePage extends StatefulWidget {
  final String id;
  const MoviePage({super.key, required this.id});

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.id),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
                "En esta pantalla de mostraré el detalle de la pelicula con ID = ${widget.id}"),
          )
        ],
      ),
    );
  }
}
