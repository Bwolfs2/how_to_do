import 'package:flutter/material.dart';

class HomePageValueNotifier extends StatefulWidget {
  const HomePageValueNotifier({Key? key}) : super(key: key);

  @override
  _HomePageValueNotifierState createState() => _HomePageValueNotifierState();
}

class _HomePageValueNotifierState extends State<HomePageValueNotifier> {
  var addValue = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          Stack(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined)),
              CircleAvatar(
                backgroundColor: Colors.red,
                radius: 10,
                child: ValueListenableBuilder<int>(
                  valueListenable: addValue,
                  builder: (context, value, child) => Text(
                    '$value',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      body: ListView(
        children: List.generate(
            10,
            (index) => Card(
                  child: ListTile(
                    leading: const CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text('Produto $index'),
                    trailing: IconButton(
                        onPressed: () {
                          addValue.value = addValue.value + 1;
                        },
                        icon: const Icon(Icons.add)),
                  ),
                )),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(onPressed: () {}, child: const Text('Menu Xx')),
          Stack(
            clipBehavior: Clip.none,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Menu Carrinho')),
              Positioned(
                top: -5,
                right: -5,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 10,
                  child: ValueListenableBuilder<int>(
                    valueListenable: addValue,
                    builder: (context, value, child) => Text(
                      '$value',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
