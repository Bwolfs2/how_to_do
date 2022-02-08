import 'package:flutter/material.dart';

class HomePageComplexValueNotifier extends StatefulWidget {
  const HomePageComplexValueNotifier({Key? key}) : super(key: key);

  @override
  _HomePageValueNotifierState createState() => _HomePageValueNotifierState();
}

class _HomePageValueNotifierState extends State<HomePageComplexValueNotifier> {
  var indexAddProducts = ValueNotifier<List<int>>([]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          Stack(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_basket_outlined)),
              CircleAvatar(
                backgroundColor: Colors.red,
                radius: 10,
                child: ValueListenableBuilder<List<int>>(
                  valueListenable: indexAddProducts,
                  builder: (context, value, child) => Text(
                    '${value.length}',
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
                    trailing: StatefulBuilder(
                      builder: (context, setState) => IconButton(
                          onPressed: () {
                            if (indexAddProducts.value.contains(index)) {
                              indexAddProducts.value.remove(index);
                            } else {
                              indexAddProducts.value.add(index);
                            }
                            indexAddProducts.notifyListeners();
                            setState(() {});
                          },
                          icon: indexAddProducts.value.contains(index)
                              ? const Icon(
                                  Icons.remove,
                                  color: Colors.green,
                                )
                              : const Icon(
                                  Icons.add,
                                  color: Colors.red,
                                )),
                    ),
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
                  child: ValueListenableBuilder<List<int>>(
                    valueListenable: indexAddProducts,
                    builder: (context, value, child) => Text(
                      '${value.length}',
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
