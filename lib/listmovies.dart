import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListMoviesPage extends StatefulWidget {
  const ListMoviesPage({super.key});

  @override
  State<ListMoviesPage> createState() => _ListMoviesPageState();
}

class _ListMoviesPageState extends State<ListMoviesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Todas las peliculas")),
        body: Column(
          children: [
            const Center(
              child: Text("Aca se mostrará un listado de todas las peliculas"),
            ),
            ElevatedButton(
                onPressed: () =>
                    context.goNamed("detail_movie", params: {"id": "122"}),
                child: const Text("Ir al detalle de 1 pelicula"))
          ],
        ));
  }
}
