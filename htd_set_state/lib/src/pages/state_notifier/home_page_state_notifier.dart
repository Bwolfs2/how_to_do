import 'package:flutter/material.dart';
import 'package:htd_set_state/src/pages/state_notifier/home_state_notifier_controller.dart';

class HomePageStateNotifier extends StatefulWidget {
  const HomePageStateNotifier({Key? key}) : super(key: key);

  @override
  _HomePageStateNotifierState createState() => _HomePageStateNotifierState();
}

class _HomePageStateNotifierState extends State<HomePageStateNotifier> {
  var addValue = ValueNotifier<int>(0);

  var controler = HomeStateNotifierController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      controler.getData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controler.getData();
        },
        child: const Icon(Icons.refresh),
      ),
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
      body: ValueListenableBuilder<HomeState>(
        valueListenable: controler,
        builder: (context, state, child) {
          if (state is Loading || state is InitState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is Loaded) {
            return ListView(
              children: List.generate(
                state.data.length,
                (index) => Card(
                  child: ListTile(
                    leading: const CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text(state.data[index]),
                    trailing: IconButton(
                        onPressed: () {
                          addValue.value = addValue.value + 1;
                        },
                        icon: const Icon(Icons.add)),
                  ),
                ),
              ),
            );
          }

          return const Center(
            child: Text("No State Found!!!"),
          );
        },
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
