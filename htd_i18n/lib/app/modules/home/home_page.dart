import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';
import 'package:localization/localization.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  int selectedIndex = 0;
  PopupMenuItem<int> popupMenuItem(String text, int value) {
    return PopupMenuItem<int>(
      child: Row(
        children: <Widget>[
          Container(
            child: Text(
              "$text",
              style: TextStyle(
                color: selectedIndex == value ? Colors.green : Colors.black,
              ),
            ),
            width: 200,
          ),
          Spacer(),
          Icon(Icons.done),
        ],
      ),
      value: value,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home-page-title".i18n()),
        actions: [
          PopupMenuButton<int>(
            offset: Offset(100, 100),
            icon: Icon(
              Icons.filter_list,
              color: Color(0xffFFFF8B),
            ),
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<int>>[
                popupMenuItem("Português", 0),
                popupMenuItem("English", 1),
                popupMenuItem("German", 2),
                popupMenuItem("Spanish", 3),
              ];
            },
            onSelected: (_selectedIndex) async {
              switch (_selectedIndex) {
                case 0:
                  //Change to Pt Lang
                  await Localization.configuration(
                      translationLocale: "assets/language",
                      defaultLang: "pt_BR");
                  break;
                case 1:
                  //Change to Eng Lang
                  await Localization.configuration(
                      translationLocale: "assets/language",
                      defaultLang: "us_EN");
                  break;
                case 2:
                  //Change to German Lang
                  await Localization.configuration(
                      translationLocale: "assets/language",
                      defaultLang: "de_DE");
                  break;
                case 3:
                  //Change to Spanish Lang
                  await Localization.configuration(
                      translationLocale: "assets/language",
                      defaultLang: "es_ES");
                  break;
              }

              setState(() {
                selectedIndex = _selectedIndex;
              });
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "user-label".i18n(),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "parametered-label".i18n(["João", "Maria", "14"]),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
