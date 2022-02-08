import 'dart:math';

import 'package:flutter/material.dart';

class HomePageAnimated extends StatefulWidget {
  const HomePageAnimated({Key? key}) : super(key: key);

  @override
  _HomePageAnimatedState createState() => _HomePageAnimatedState();
}

class _HomePageAnimatedState extends State<HomePageAnimated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {});
          },
          child: const Icon(Icons.refresh)),
      body: Column(
        children: List.generate(
          5,
          (index) => AnimatedCardWidget(
            index: index,
          ),
        ),
      ),
    );
  }
}

class AnimatedCardWidget extends StatefulWidget {
  final int index;
  const AnimatedCardWidget({Key? key, required this.index}) : super(key: key);

  @override
  _AnimatedCardWidgetState createState() => _AnimatedCardWidgetState();
}

class _AnimatedCardWidgetState extends State<AnimatedCardWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {});
      },
      child: TweenAnimationBuilder<double>(
        tween: Tween<double>(begin: -1000, end: 0),
        duration: Duration(seconds: widget.index + 1),
        builder: (context, data, child) {
          return Transform.translate(
            offset: Offset(data, 0),
            child: child,
          );
        },
        child: Center(
          child: Card(
            color: Colors.accents[Random().nextInt(Colors.accents.length)],
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .8,
              height: 150,
            ),
          ),
        ),
      ),
    );
  }
}
