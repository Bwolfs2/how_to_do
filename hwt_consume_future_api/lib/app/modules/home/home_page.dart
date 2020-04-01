import 'package:fcharts/fcharts.dart';
import 'package:fl_animated_linechart/chart/area_line_chart.dart';
import 'package:fl_animated_linechart/common/pair.dart';
import 'package:fl_animated_linechart/fl_animated_linechart.dart';
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
  // Widget _buildChartLine(context) {
  //   var chartLine = ChartLine(
  //     chartBeans: [
  //       ChartBean(x: '12-01', y: 30),
  //       ChartBean(x: '12-02', y: 25),
  //       ChartBean(x: '12-03', y: 20),
  //       ChartBean(x: '12-04', y: 22),
  //       ChartBean(x: '12-05', y: 21),
  //       ChartBean(x: '12-06', y: 18),
  //       ChartBean(x: '12-07', y: 18),
  //     ],
  //     size: Size(MediaQuery.of(context).size.width,
  //         MediaQuery.of(context).size.height / 5 * 1.6),
  //     isCurve: true,
  //     lineWidth: 1,
  //     lineColor: Colors.yellow,
  //     fontColor: Colors.black,
  //     xyColor: Colors.black.withOpacity(.1),
  //     shaderColors: [
  //       Colors.red.withOpacity(0.3),
  //       Colors.yellow.withOpacity(0.1)
  //     ],
  //     fontSize: 12,
  //     yNum: 5,
  //     isAnimation: true,
  //     isReverse: false,
  //     isCanTouch: true,
  //     isShowPressedHintLine: true,
  //     pressedPointRadius: 4,
  //     pressedHintLineWidth: 0.5,
  //     pressedHintLineColor: Colors.black,
  //     duration: Duration(milliseconds: 1000),
  //     backgroundColor: Colors.white,
  //   );
  //   return Card(
  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  //     margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
  //     semanticContainer: true,
  //     color: Colors.yellow.withOpacity(0.4),
  //     child: chartLine,
  //     clipBehavior: Clip.antiAlias,
  //   );
  // }

  // Map<DateTime, double> createLine2() {
  //   Map<DateTime, double> data = {};
  //   data[DateTime.now().subtract(Duration(minutes: 40))] = 13.0;
  //   data[DateTime.now().subtract(Duration(minutes: 30))] = 24.0;
  //   data[DateTime.now().subtract(Duration(minutes: 22))] = 39.0;
  //   data[DateTime.now().subtract(Duration(minutes: 20))] = 29.0;
  //   data[DateTime.now().subtract(Duration(minutes: 15))] = 27.0;
  //   data[DateTime.now().subtract(Duration(minutes: 12))] = 9.0;
  //   data[DateTime.now().subtract(Duration(minutes: 5))] = 35.0;
  //   return data;
  // }

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
                // _buildChartLine(context),
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
