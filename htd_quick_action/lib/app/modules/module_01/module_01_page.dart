import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:quick_actions/quick_actions.dart';
import 'module_01_controller.dart';

class Module01Page extends StatefulWidget {
  final String title;
  const Module01Page({Key key, this.title = "Module 01"}) : super(key: key);

  @override
  _Module01PageState createState() => _Module01PageState();
}

class _Module01PageState
    extends ModularState<Module01Page, Module01Controller> {
  //use 'controller' variable to access controller
  //use 'controller' variable to access controller
  String shortcut = "no action set";
  @override
  void initState() {
    super.initState();

    final QuickActions quickActions = QuickActions();
    quickActions.initialize((String shortcutType) {
      setState(() {
        if (shortcutType != null) shortcut = shortcutType;
      });
    });

    quickActions.setShortcutItems(<ShortcutItem>[
      // NOTE: This first action icon will only work on iOS.
      // In a real world project keep the same file name for both platforms.
      const ShortcutItem(
        type: 'action_one',
        localizedTitle: 'Action one',
        icon: 'AppIcon',
      ),
      // NOTE: This second action icon will only work on Android.
      // In a real world project keep the same file name for both platforms.
      const ShortcutItem(
          type: 'action_two',
          localizedTitle: 'Action two',
          icon: 'ic_launcher'),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[Text('Tela 2')],
      ),
    );
  }
}
