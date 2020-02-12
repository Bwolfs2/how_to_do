import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_drawer_navigation/app/modules/home/home_module.dart';
import 'package:htd_drawer_navigation/app/modules/items/items_module.dart';

import '../root_controller.dart';

class DrawerWidget extends StatelessWidget {
  final controller = Modular.get<RootController>();

  ListTile _getTile(
      {@required String title, @required Function() action, IconData icon}) {
    return ListTile(
      leading: icon == null ? null : Icon(icon),
      title: Text(
        title,
        style: TextStyle(fontSize: 20),
      ),
      onTap: () {
        //Troca de pagina
        //change page
        controller.changePage = action;
        //Fecha o Drawer
        //Close the Drawer
        Modular.to.pop();
      },
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 16,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: []
        //..addAll apenas para separar em Blocos
        ..addAll([
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://avatars1.githubusercontent.com/u/4654514?v=4"),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                  image: AssetImage("assets/material_design.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(.4), BlendMode.darken),
                )),
            accountName: Text("Bwolf"),
            accountEmail: Row(
              children: <Widget>[
                Text("bwolf@flutterando.com.br"),
                Spacer(),
                IconButton(
                    icon: Icon(
                      Icons.mode_edit,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Modular.to.pop();
                      Modular.to.pushNamed("/perfil");
                    })
              ],
            ),
          ),
          // _getTile(icon: Icons.home, action: () => HomeModule(), title: "Home"),
          // _getTile(icon: Icons.home, action: () => ItemsModule(), title: "items"),
        ])
        //..addAll apenas para separar em Blocos, mas nao é necessario poderia ser colocado tudo fixo embaixo do UserAccountsDrawerHeader
        //..addAll is only to separate into blocks, but it is not necessary everything could be placed under the UserAccountsDrawerHeader
        ..addAll([
          _getTile(icon: Icons.home, action: () => HomeModule(), title: "Home"),
          _getTile(
              icon: Icons.home, action: () => ItemsModule(), title: "items"),
        ])
        //..addAll apenas para separar em Blocos
        ..addAll(
          [
            //Coloca o Sair no fim da Drawer
            //Put the Exit in the end of drawer
            Spacer(),
            Container(
              color: Colors.red.withOpacity(.8),
              child: ListTile(
                title: Center(
                  child: Text(
                    "Sair",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                onTap: () {
                  Modular.to.pop();
                },
              ),
            )
          ],
        ),
    );
  }
}
