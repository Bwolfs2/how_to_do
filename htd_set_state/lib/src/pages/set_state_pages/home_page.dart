import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            StatefulBuilder(builder: (context, setState) {
              return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.accents[Random().nextInt(Colors.accents.length)],
                  ),
                  onPressed: () {
                    setState(() {});
                  },
                  child: const Text('Change Color'));
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                  3,
                  (index) => LoadingTimed(
                        height: 100,
                        width: 100,
                        data: '$index',
                      )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                  3,
                  (index) => LoadingTimed(
                        height: 100,
                        width: 100,
                        data: '$index',
                      )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                  3,
                  (index) => LoadingTimed(
                        height: 100,
                        width: 100,
                        data: '$index',
                      )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                  3,
                  (index) => LoadingTimed(
                        height: 100,
                        width: 100,
                        data: '$index',
                      )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                  3,
                  (index) => LoadingTimed(
                        height: 100,
                        width: 100,
                        data: '$index',
                      )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                  3,
                  (index) => LoadingTimed(
                        height: 100,
                        width: 100,
                        data: '$index',
                      )),
            ),
          ],
        ),
      ),
    );
  }
}

class LoadingTimed extends StatefulWidget {
  final double width;
  final double height;
  final String data;

  const LoadingTimed({
    Key? key,
    required this.width,
    required this.height,
    required this.data,
  }) : super(key: key);
  @override
  State<LoadingTimed> createState() => _LoadingTimedState();
}

class _LoadingTimedState extends State<LoadingTimed> {
  //FALAR SOBRE O ERRO DE DIRT

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //WidgetsBinding.instance?.addPostFrameCallback();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {});
      },
      child: SizedBox(
        width: widget.width,
        height: widget.height,
        child: FutureBuilder(
            future: Future.delayed(const Duration(seconds: 2)),
            builder: (_, data) {
              if (data.connectionState != ConnectionState.done) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              return Center(child: Text(widget.data));
            }),
      ),
    );
  }
}
