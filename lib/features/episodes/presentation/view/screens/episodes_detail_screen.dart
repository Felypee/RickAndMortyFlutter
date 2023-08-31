import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:rick_and_morty/features/episodes/domain/episodes_model.dart';

class EpisodeDetail extends StatelessWidget {
  final EpisodesModel episode;
  const EpisodeDetail({super.key, required this.episode});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            context.pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: 35,
            color: Theme.of(context).indicatorColor,
          ),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    episode.name,
                    style: TextStyle(
                      fontSize: 40,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Text(episode.episode,
                      style: TextStyle(
                        fontSize: 30,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w600,
                      )),
                  Text("On air since ${episode.airDate}",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).primaryColor)),
                  Text("Number of character: ${episode.charactersNumber}",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w200,
                          color: Theme.of(context).primaryColor)),
                  Lottie.asset("assets/space.json")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
