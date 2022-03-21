import 'package:flutter/material.dart';
import 'package:htd_set_state/src/pages/state_notifier/home_page_state_notifier.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Set State',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePageStateNotifier(),
    );
  }
}
