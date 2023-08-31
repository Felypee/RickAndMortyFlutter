import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/features/characters/domain/character_model.dart';

class CharacterDetail extends StatelessWidget {
  final CharacterModel character;
  const CharacterDetail({super.key, required this.character});

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
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Hero(
            tag: "characterProfilePicture${character.id}",
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: CachedNetworkImage(
                imageUrl: character.urlImage,
                height: size.height * 0.7,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  character.name,
                  style: TextStyle(
                    fontSize: 40,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Text(character.state,
                    style: TextStyle(
                      fontSize: 30,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w600,
                    )),
                Text(character.gender,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).primaryColor)),
                Text("Currently in ${character.location}",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                        color: Theme.of(context).primaryColor)),
                Text(character.species,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                        color: Theme.of(context).primaryColor)),
                Text("From ${character.origin}",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).primaryColor)),
                Text("Appeared in ${character.episodesNumber} episodes",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w100,
                        color: Theme.of(context).primaryColor)),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
