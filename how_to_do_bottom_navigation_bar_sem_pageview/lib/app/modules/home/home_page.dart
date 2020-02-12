import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:how_to_do_bottom_navigation_bar_sem_pageview/app/modules/calls/calls_module.dart';
import 'package:how_to_do_bottom_navigation_bar_sem_pageview/app/modules/chat/chat_module.dart';
import 'package:how_to_do_bottom_navigation_bar_sem_pageview/app/modules/home/home_controller.dart';
import 'package:how_to_do_bottom_navigation_bar_sem_pageview/app/modules/status/status_module.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  var lisPages = [
    () => ChatModule(),
    () => StatusModule(),
    () => CallsModule()
  ];

 // var lisPages = [
 //   () => ChatModule(),
 //   () => StatusModule(),
 //   () => CallsModule()
 // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (_) {
        return lisPages[controller.selectedIndex]();
         //return lisPages[controller.selectedIndex];
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: Observer(
        builder: (BuildContext context) {
          return BubbleBottomBar(
            currentIndex: controller.selectedIndex,
            onTap: (index) => controller.changePage(index),
            fabLocation: BubbleBottomBarFabLocation.end,
            hasNotch: true,
            opacity: .2,
            items: <BubbleBottomBarItem>[
              BubbleBottomBarItem(
                icon: Icon(
                  Icons.chat,
                  color: Colors.red,
                ),
                backgroundColor: Colors.red,
                title: Text("Chat"),
                activeIcon: Icon(Icons.chat),
              ),
              BubbleBottomBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.green,
                ),
                backgroundColor: Colors.green,
                title: Text("Status"),
                activeIcon: Icon(Icons.favorite),
              ),
              BubbleBottomBarItem(
                icon: Icon(
                  Icons.chat,
                  color: Colors.blue,
                ),
                backgroundColor: Colors.blue,
                title: Text("Calls"),
                activeIcon: Icon(Icons.phone),
              ),
            ],
          );
        },
      ),
    );
  }
}
