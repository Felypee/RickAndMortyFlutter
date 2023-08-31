import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/features/locations/domain/location_model.dart';

class LocationCard extends StatefulWidget {
  final double? cardHeight;
  final double? cardWidth;
  final LocationModel location;
  const LocationCard({
    super.key,
    this.cardHeight,
    this.cardWidth,
    required this.location,
  });

  @override
  State<LocationCard> createState() => _LocationCardState();
}

class _LocationCardState extends State<LocationCard> {
  EdgeInsetsGeometry originalMargin = const EdgeInsets.all(0.0);
  EdgeInsetsGeometry increasedMargin = const EdgeInsets.all(12.0);
  bool isMarginIncreased = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            if (!isMarginIncreased) {
              isMarginIncreased = true;
              Future.delayed(const Duration(milliseconds: 100), () {
                if (mounted) {
                  setState(() {
                    isMarginIncreased = false;
                  });
                }
              });
              context.push("/location/detail", extra: widget.location);
            }
          });
        },
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            margin: isMarginIncreased ? increasedMargin : originalMargin,
            clipBehavior: Clip.hardEdge,
            height: widget.cardHeight,
            width: widget.cardWidth,
            decoration: BoxDecoration(
              color: Theme.of(context).indicatorColor,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.location.name,
                      style: TextStyle(
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                    ),
                    Text(widget.location.type,
                        style: Theme.of(context).textTheme.bodySmall),
                  ],
                ),
              ),
            )));
  }
}
