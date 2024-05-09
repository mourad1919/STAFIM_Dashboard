import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_dash_v2/screens/styles/app_colors.dart';
import 'package:flutter_application_dash_v2/screens/styles/constants.dart';
import 'package:odoo_rpc/odoo_rpc.dart';

import '../../screens/constants/config_url.dart';

class BarChartSample4 extends StatefulWidget {
  BarChartSample4({super.key});

  final Color dark = newcolor;

  final Color normal = AppColors.contentColorOrange;
  final Color light = AppColors.contentColorCyan;

  @override
  State<StatefulWidget> createState() => BarChartSample4State();
}

class BarChartSample4State extends State<BarChartSample4> {
  List<Map<dynamic, dynamic>> tableData = [];
  @override
  void initState() {
    _getStaticValues(); // Corrected the function name
    super.initState();
  }

  Future<void> _getStaticValues() async {
    final client = OdooClient(ServerUrl);
    await client.authenticate(Database, User, Password);
    print("getStaticValues");
    try {
      var odoodataHabi = await client.callKw({
        'model': 'control.stat',
        'method': 'mega_dash_prod_jour',
        'args': [-1],
        'kwargs': {
          'context': {'bin_size': true},
        },
      });

      setState(() {
        print("odoodataHabi 3333333333");
        print(odoodataHabi);
        print(" fin odoodataHabi 333333333333333");
        tableData = List.from(odoodataHabi);
        // Accessing values from the response
        // Extracting and displaying Details_poste
        // Extracting and assigning Details_poste to a variab
      });
      client.close();
    } catch (e) {
      print("Error fetching static values: $e");
    }
  }
  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 14);
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Lundi';
        break;
      case 1:
        text = 'Mardi';
        break;
      case 2:
        text = 'Mercredi';
        break;
      case 3:
        text = 'Jeudi';
        break;
      case 4:
        text = 'Vendredi';
        break;
      case 5:
        text = 'Samedi';
        break;
      default:
        text = 'Dimanche';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    if (value == meta.max) {
      return Container();
    }
    const style = TextStyle(
      fontSize: 10,
    );
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(
        meta.formattedValue,
        style: style,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AspectRatio(
        aspectRatio: 1.88,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final barsSpace = 48.0 * constraints.maxWidth / 400;
              final barsWidth = 20.0 * constraints.maxWidth / 400;
              return BarChart(
                BarChartData(
                  alignment: BarChartAlignment.start,
                  barTouchData: BarTouchData(
                    enabled: false,
                  ),
                  titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 28,
                        getTitlesWidget: bottomTitles,
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 40,
                        getTitlesWidget: leftTitles,
                      ),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),
                  gridData: FlGridData(
                    show: true,
                    checkToShowHorizontalLine: (value) => value % 10 == 0,
                    getDrawingHorizontalLine: (value) => FlLine(
                      color: AppColors.borderColor.withOpacity(0.1),
                      strokeWidth: 1,
                    ),
                    drawVerticalLine: false,
                  ),
                  borderData: FlBorderData(
                    show: true,
                  ),
                  groupsSpace: barsSpace,
                  barGroups: getData(barsWidth, barsSpace),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  List<BarChartGroupData> getData(double barsWidth, double barsSpace) {
    return [
      BarChartGroupData(
        x: 0,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 40,
            rodStackItems: [
              BarChartRodStackItem(0, 30, widget.dark),
              BarChartRodStackItem(20, 40, widget.light),
              BarChartRodStackItem(0, 30, widget.normal),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 1,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 25,
            rodStackItems: [
              BarChartRodStackItem(0, 11, widget.dark),
              BarChartRodStackItem(11, 18, widget.dark),
              BarChartRodStackItem(18, 31, widget.dark),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 27,
            rodStackItems: [
              BarChartRodStackItem(0, 21, widget.dark),
              BarChartRodStackItem(21, 21, widget.dark),
              BarChartRodStackItem(21, 27, widget.normal),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 12,
            rodStackItems: [
              BarChartRodStackItem(0, 5, widget.dark),
              BarChartRodStackItem(5, 9, widget.normal),
              BarChartRodStackItem(9, 12, widget.light),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 4,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 14,
            rodStackItems: [
              BarChartRodStackItem(0, 7, widget.dark),
              BarChartRodStackItem(7, 12, widget.normal),
              BarChartRodStackItem(12, 14, widget.light),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 5,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 19,
            rodStackItems: [
              BarChartRodStackItem(0, 5, widget.normal),
              BarChartRodStackItem(5, 12, widget.dark),
              BarChartRodStackItem(12, 19, widget.light),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 6,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 22,
            rodStackItems: [
              BarChartRodStackItem(0, 10, widget.dark),
              BarChartRodStackItem(10, 17, widget.normal),
              BarChartRodStackItem(17, 22, widget.light),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
    ];
  }
}
