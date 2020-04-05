import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_login_page_navigation/app/modules/calls/calls_module.dart';
import 'package:htd_login_page_navigation/app/modules/chat/chat_module.dart';
import 'package:htd_login_page_navigation/app/modules/home/home_controller.dart';
import 'package:htd_login_page_navigation/app/modules/status/status_module.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        children: [ChatModule(), StatusModule(), CallsModule()],
      ),
      floatingActionButton: Container(
        child: Observer(
          builder: (BuildContext context) {
            if (controller.isLogged) {
              return FloatingActionButton(
                backgroundColor: Colors.green,
                onPressed: () {
                  controller.login();
                },
                child: Icon(Icons.person_add),
              );
            }

            return FloatingActionButton(
              backgroundColor: Colors.red,
              onPressed: () {
                controller.logoff();
              },
              child: Icon(Icons.person_add),
            );
          },
        ),
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
