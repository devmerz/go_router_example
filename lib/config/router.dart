import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_app/listmovies.dart';
import 'package:go_router_app/main.dart';
import 'package:go_router_app/moviepage.dart';
import 'package:go_router_app/settings.dart';

final GoRouter router = GoRouter(routes: <GoRoute>[
  GoRoute(
      name: "home",
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return MyHomePage(title: "test go router");
      },
      routes: [
        GoRoute(
            name: "list_all_movies",
            path: 'listmovies',
            builder: (BuildContext context, GoRouterState state) {
              return ListMoviesPage();
            },
            routes: [
              GoRoute(
                  name: "detail_movie",
                  path: 'movie/:id',
                  builder: (BuildContext context, GoRouterState state) {
                    return MoviePage(id: state.params["id"]!);
                  })
            ])
      ]),
  GoRoute(
      name: "settings",
      path: '/settings',
      builder: (BuildContext context, GoRouterState state) {
        return SettingsPage();
      })
]);
