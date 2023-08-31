import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/character_bloc.dart';
import 'package:rick_and_morty/features/characters/service/character_service.dart';
import 'package:rick_and_morty/features/episodes/presentation/bloc/episodes_bloc.dart';
import 'package:rick_and_morty/features/episodes/service/episodes_service.dart';
import 'package:rick_and_morty/features/locations/presentation/bloc/location_bloc.dart';
import 'package:rick_and_morty/features/locations/service/location_service.dart';
import 'package:rick_and_morty/utils/dio_config.dart';
import 'package:rick_and_morty/utils/router.dart';
import 'package:rick_and_morty/utils/theme.dart';

void main() {
  DioClient.configure("https://rickandmortyapi.com/api");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CharacterBloc>(
          create: (BuildContext
                  context) => //I can install get it to inject the service
              CharacterBloc(repo: CharacterService()),
        ),
        BlocProvider<LocationBloc>(
          create: (BuildContext
                  context) => //I can install get it to inject the service
              LocationBloc(repo: LocationService()),
        ),
        BlocProvider<EpisodesBloc>(
          create: (BuildContext
                  context) => //I can install get it to inject the service
              EpisodesBloc(repo: EpisodesService()),
        ),
      ],
      child: MaterialApp.router(
        title: 'rickandmorty',
        theme: theme,
        routerConfig: router,
      ),
    );
  }
}
