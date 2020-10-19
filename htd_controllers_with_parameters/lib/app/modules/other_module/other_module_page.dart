import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'other_module_controller.dart';

class OtherModulePage extends StatefulWidget {
  final String title;
  const OtherModulePage({Key key, this.title = "OtherModule"})
      : super(key: key);

  @override
  _OtherModulePageState createState() => _OtherModulePageState();
}

class _OtherModulePageState
    extends ModularState<OtherModulePage, OtherModuleController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Observer(
          builder: (_) {
            return Column(
              children: <Widget>[
                Text(controller.data ?? ''),
                Text(controller.params ?? '')
              ],
            );
          },
        ));
  }
}
