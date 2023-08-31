import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/features/locations/presentation/bloc/location_bloc.dart';
import 'package:rick_and_morty/features/locations/presentation/bloc/location_event.dart';
import 'package:rick_and_morty/features/locations/presentation/bloc/location_state.dart';
import 'package:rick_and_morty/features/locations/presentation/view/widgets/location_card.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/features/locations/presentation/view/widgets/location_loader.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  final ScrollController _controller = ScrollController();
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<LocationBloc>().add(LocationEvent.getLocations());
    });
    _controller.addListener(getMoreLocations);
  }

  getMoreLocations() {
    if (_controller.position.maxScrollExtent == _controller.offset) {
      context.read<LocationBloc>().add(LocationEvent.getLocations());
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.removeListener(getMoreLocations);
  }

  @override
  Widget build(BuildContext context) {
    final status = context.watch<LocationBloc>();
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
          "Locations",
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
              child: status.state.locationStatus == LocationStatus.loading
                  ? Container()
                  : ListView.builder(
                      controller: _controller,
                      itemCount: status.state.locationList.length + 1,
                      itemBuilder: (context, index) {
                        if (index < status.state.locationList.length) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: LocationCard(
                              location: status.state.locationList[index],
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
          status.state.locationStatus == LocationStatus.loading
              ? const LocationLoader()
              : const SizedBox()
        ],
      ),
    );
  }
}
