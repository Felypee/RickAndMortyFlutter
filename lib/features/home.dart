import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: [
            Image.asset("assets/rickandmorty.png"),
            const Text(
              "Choose what you want to see",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            GeneralCard(
              route: "/character",
              name: "Characters",
              cardHeight: size.height * 0.07,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            GeneralCard(
              route: "/location",
              name: "Locations",
              cardHeight: size.height * 0.07,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            GeneralCard(
              route: "/episode",
              name: "Episodes",
              cardHeight: size.height * 0.07,
            )
          ],
        ),
      ),
    );
  }
}

class GeneralCard extends StatefulWidget {
  final double? cardHeight;
  final double? cardWidth;
  final String route;
  final String name;

  const GeneralCard({
    super.key,
    this.cardHeight,
    this.cardWidth,
    required this.route,
    required this.name,
  });

  @override
  State<GeneralCard> createState() => _GeneralCardState();
}

class _GeneralCardState extends State<GeneralCard> {
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
              context.push(widget.route);
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
              child: Text(
                widget.name,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            )));
  }
}
