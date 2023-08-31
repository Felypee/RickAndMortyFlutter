import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/features/episodes/presentation/bloc/episodes_bloc.dart';
import 'package:rick_and_morty/features/episodes/presentation/bloc/episodes_event.dart';
import 'package:rick_and_morty/features/episodes/presentation/bloc/episodes_state.dart';
import 'package:rick_and_morty/features/episodes/presentation/view/widgets/episodes_card.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/features/episodes/presentation/view/widgets/episodes_loader.dart';

class Episode extends StatefulWidget {
  const Episode({super.key});

  @override
  State<Episode> createState() => _EpisodeState();
}

class _EpisodeState extends State<Episode> {
  final ScrollController _controller = ScrollController(keepScrollOffset: true);
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<EpisodesBloc>().add(EpisodeEvent.getEpisodes());
    });
    _controller.addListener(getMoreEpisodes);
  }

  getMoreEpisodes() {
    if (_controller.position.maxScrollExtent == _controller.offset) {
      context.read<EpisodesBloc>().add(EpisodeEvent.getEpisodes());
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.removeListener(getMoreEpisodes);
  }

  @override
  Widget build(BuildContext context) {
    final status = context.watch<EpisodesBloc>();
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
        title: const Text(
          "Episodes",
          style: TextStyle(
            fontSize: 42,
          ),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: status.state.episodeStatus == EpisodeStatus.loading
                  ? Container()
                  : ListView.builder(
                      controller: _controller,
                      itemCount: status.state.episodeList.length + 1,
                      itemBuilder: (context, index) {
                        if (index < status.state.episodeList.length) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: EpisodeCard(
                              episode: status.state.episodeList[index],
                            ),
                          );
                        } else {
                          return Center(
                              child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: CircularProgressIndicator(
                              color: Theme.of(context).indicatorColor,
                            ),
                          ));
                        }
                      }),
            ),
          ),
          status.state.episodeStatus == EpisodeStatus.loading
              ? const EpisodesLoader()
              : const SizedBox()
        ],
      ),
    );
  }
}
