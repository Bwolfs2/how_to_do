import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repository/my_repository.dart';
import 'bloc/home_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(context.read<MyRepository>())
        ..add(
          InitialHomeEvent(),
        ),
      //MultiBlocProvider(
      //  providers: [
      //    BlocProvider<HomeBloc>(
      //      create: (context) => HomeBloc(
      //        context.read<MyRepository>(),
      //      )..add(InitialHomeEvent()),
      //    ),
      //  ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            Widget widget = Container();

            if (state is LoadedHomeState) {
              widget = ListView.builder(
                  itemCount: state.data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(state.data[index]),
                    );
                  });
            }

            return AnimatedSwitcher(duration: const Duration(milliseconds: 300), child: widget);
          },
        ),
      ),
    );
  }
}
