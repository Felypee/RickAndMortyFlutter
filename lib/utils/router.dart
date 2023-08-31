import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/features/characters/domain/character_model.dart';
import 'package:rick_and_morty/features/characters/presentation/view/screens/characters_detail_screen.dart';
import 'package:rick_and_morty/features/characters/presentation/view/screens/characters_screen.dart';
import 'package:rick_and_morty/features/episodes/domain/episodes_model.dart';
import 'package:rick_and_morty/features/episodes/presentation/view/screens/episodes_detail_screen.dart';
import 'package:rick_and_morty/features/episodes/presentation/view/screens/episodes_screen.dart';
import 'package:rick_and_morty/features/home.dart';
import 'package:rick_and_morty/features/locations/domain/location_model.dart';
import 'package:rick_and_morty/features/locations/presentation/view/screens/locations_detail_screen.dart';
import 'package:rick_and_morty/features/locations/presentation/view/screens/locations_screen.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Home();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'character',
          builder: (BuildContext context, GoRouterState state) {
            return const Character();
          },
        ),
        GoRoute(
          path: 'character/detail',
          builder: (BuildContext context, GoRouterState state) {
            return CharacterDetail(
              character: state.extra as CharacterModel,
            );
          },
        ),
        GoRoute(
          path: 'location',
          builder: (BuildContext context, GoRouterState state) {
            return const Location();
          },
        ),
        GoRoute(
          path: 'location/detail',
          builder: (BuildContext context, GoRouterState state) {
            return LocationDetail(
              location: state.extra as LocationModel,
            );
          },
        ),
        GoRoute(
          path: 'episode',
          builder: (BuildContext context, GoRouterState state) {
            return const Episode();
          },
        ),
        GoRoute(
          path: 'episode/detail',
          builder: (BuildContext context, GoRouterState state) {
            return EpisodeDetail(
              episode: state.extra as EpisodesModel,
            );
          },
        )
      ],
    ),
  ],
);
