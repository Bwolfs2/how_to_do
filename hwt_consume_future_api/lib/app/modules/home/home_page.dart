import 'package:flutter/material.dart';
import 'package:flutter_chart/flutter_chart.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hwt_consume_future_api/app/modules/home/home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  ///line
  Widget _buildChartLine(context) {
    var chartLine = ChartLine(
      chartBeans: [
        ChartBean(x: '1 mês', y: 2.0),
        ChartBean(x: '2 meses', y: 3.0),
        ChartBean(x: '3 meses', y: 2.5),
        ChartBean(x: '4 meses', y: 2.9),
      ],
      size: Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height / 5 * 1.6),
      isCurve: true,
      lineWidth: 1,
      lineColor: Colors.yellow,
      fontColor: Colors.black,
      xyColor: Colors.black.withOpacity(.1),
      shaderColors: [
        Color(0xffB8AFCF),
        Color(0xffD1CEE0),
      ],
      fontSize: 12,
      yNum: 3,
      isAnimation: true,
      isReverse: false,
      isCanTouch: true,
      isShowPressedHintLine: true,
      pressedPointRadius: 4,
      pressedHintLineWidth: 0.5,
      pressedHintLineColor: Colors.black,
      duration: Duration(milliseconds: 1000),
      backgroundColor: Colors.white,
    );
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
      semanticContainer: true,
      color: Colors.yellow.withOpacity(0.4),
      child: chartLine,
      clipBehavior: Clip.antiAlias,
    );
  }

  @override
  Widget build(BuildContext context) {
    ///line

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          Observer(builder: (_) {
            return Column(
              children: <Widget>[
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: AnimatedLineChart(
                //     AreaLineChart.fromDateTimeMaps([
                //       createLine2()
                //     ], [
                //       Colors.red.shade900
                //     ], [
                //       'C'
                //     ], gradients: [
                //       Pair(Colors.yellow.shade400, Colors.red.shade700)
                //     ]),
                //     key: UniqueKey(),
                //   ), //Unique key to force animations
                // ),
                _buildChartLine(context),
                Expanded(
                  child: ListView.builder(
                    itemCount: controller.pokemons.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        onTap: () {
                          Modular.to.pushNamed("/detail",
                              arguments: {"pkm": controller.pokemons[index]});
                        },
                        title: Text(controller.pokemons[index].name),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              controller.pokemons[index].sprites.frontDefault),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          }),
          Observer(builder: (_) {
            if (!controller.isLoading) {
              return Container();
            }

            return Positioned.fill(
                child: Container(
              child: CircularProgressIndicator(),
              color: Colors.black38,
              alignment: Alignment.center,
            ));
          })
        ],
      ),
    );
  }
}
