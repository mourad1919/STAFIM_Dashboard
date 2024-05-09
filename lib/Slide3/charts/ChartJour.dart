import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_application_dash_v2/screens/styles/constants.dart';
import 'package:odoo_rpc/odoo_rpc.dart';

import '../../screens/constants/config_url.dart';

class OrdinalComboBarLineChart extends StatefulWidget {
  // final List<charts.Series<OrdinalSales, String>> seriesList;

  // OrdinalComboBarLineChart(this.seriesList);

  // factory OrdinalComboBarLineChart.withSampleData() {
  //   return OrdinalComboBarLineChart(_createSampleData());
  // }

  @override
  _OrdinalComboBarLineChartState createState() =>
      _OrdinalComboBarLineChartState();

  // static List<charts.Series<OrdinalSales, String>> _createSampleData() {
  //   List<dynamic> semaines = [];
  //   List<dynamic> dates = [];
  //   List<dynamic> realises = [];
  //   List<dynamic> planifie = [];
  //   List<dynamic> ecarts = [];
  //   Future<void> _getStaticValuesSemaine() async {
  //     final client = OdooClient(ServerUrl);
  //     await client.authenticate(Database, User, Password);
  //     print("getStaticValues");
  //     try {
  //       var odoodataSemaine = await client.callKw({
  //         'model': 'control.stat',
  //         'method': 'mega_dash_prod_hebdo',
  //         'args': [-1],
  //         'kwargs': {
  //           'context': {'bin_size': true},
  //         },
  //       });

  //       print("odoodataSemaine 2222222222");
  //       print(odoodataSemaine);
  //       print(" fin odoodataSemaine 2222222222");

  //       // Accessing values from the response
  //       // Extracting and displaying Details_poste
  //       // Extracting and assigning Details_poste to a variab
  //       for (var entry in odoodataSemaine) {
  //         semaines.add(entry['semaine'] ??
  //             ''); // Add an empty string if 'semaine' is null
  //         dates.add(
  //             entry['Date'] ?? ''); // Add an empty string if 'Date' is null
  //         realises.add(entry['Réalisé'] ?? 0); // Add 0 if 'Réalisé' is null
  //         ecarts.add(entry['Ecart'] ?? 0); // Add 0 if 'Ecart' is null
  //         planifie.add(entry['Planifié'] ??
  //             ''); // Add an empty string if 'Planifié' is null
  //       }

  //       // Now you have separate lists for each property
  //       print("Semaines: $semaines");
  //       print("Dates: $dates");
  //       print("Réalisés: $realises");
  //       print("Écarts: $ecarts");
  //       ;
  //       client.close();
  //     } catch (e) {
  //       print("Error fetching static values: $e");
  //     }
  //   }

  //   final PlanifierData = [
  //     OrdinalSales('5', 5),
  //     OrdinalSales('4}', 25),
  //     OrdinalSales('3', 100),
  //     OrdinalSales('${semaines[3]}', 75),
  //     OrdinalSales('$semaines[4]', 65),
  //     OrdinalSales('$semaines[5]', 85),
  //     OrdinalSales('$semaines[6]', 75),
  //     OrdinalSales('$semaines[7]', 75),
  //   ];

  //   final EcartData = [
  //     OrdinalSales('S01', 5),
  //     OrdinalSales('S02', -40),
  //     OrdinalSales('S03', 100),
  //     OrdinalSales('S04', 75),
  //     OrdinalSales('S05', -65),
  //     OrdinalSales('S06', 85),
  //     OrdinalSales('S07', -75),
  //     OrdinalSales('S08', -100),
  //   ];

  //   final RealiseData = [
  //     OrdinalSales('S01', 5),
  //     OrdinalSales('S02', 25),
  //     OrdinalSales('S03', 10),
  //     OrdinalSales('S04', 75),
  //     OrdinalSales('S05', 65),
  //     OrdinalSales('S06', 85),
  //     OrdinalSales('S07', 75),
  //     OrdinalSales('S08', 75),
  //   ];

  //   return [
  //     charts.Series<OrdinalSales, String>(
  //       id: 'Planifier',
  //       colorFn: (_, __) => charts.MaterialPalette.cyan.shadeDefault,
  //       domainFn: (OrdinalSales sales, _) => sales.year,
  //       measureFn: (OrdinalSales sales, _) => sales.sales,
  //       data: PlanifierData,
  //     ),
  //     charts.Series<OrdinalSales, String>(
  //       id: 'Ecart',
  //       colorFn: (_, __) => charts.MaterialPalette.black,
  //       domainFn: (OrdinalSales sales, _) => sales.year,
  //       measureFn: (OrdinalSales sales, _) => sales.sales,
  //       data: EcartData,
  //     ),
  //     charts.Series<OrdinalSales, String>(
  //       id: 'Realisé',
  //       colorFn: (_, __) => charts.MaterialPalette.deepOrange.shadeDefault,
  //       domainFn: (OrdinalSales sales, _) => sales.year,
  //       measureFn: (OrdinalSales sales, _) => sales.sales,
  //       data: RealiseData,
  //     )..setAttribute(charts.rendererIdKey, 'customLine'),
  //   ];
  // }
}

class _OrdinalComboBarLineChartState extends State<OrdinalComboBarLineChart> {
  List<Map<String, dynamic>> fetchedData = [];
  List<Map<String, dynamic>> tableDataSemaine = [];
  List<charts.Series<OrdinalSales, String>> seriesList = [];

  @override
  void initState() {
    super.initState();
    _getStaticValuesSemaine();
  }

  Future<void> _getStaticValuesSemaine() async {
    final client = OdooClient(ServerUrl);
    await client.authenticate(Database, User, Password);
    print("getStaticValues");
    try {
      var odoodataSemaine = await client.callKw({
        'model': 'control.stat',
        'method': 'mega_dash_prod_hebdo',
        'args': [-1],
        'kwargs': {
          'context': {'bin_size': true},
        },
      });

      print("odoodataSemaine 2222222222");
      print(odoodataSemaine);
      print(" fin odoodataSemaine 2222222222");

      List<OrdinalSales> planifierData = [];
      List<OrdinalSales> ecartData = [];
      List<OrdinalSales> realiseData = [];

      // Accessing values from the response
      for (var entry in odoodataSemaine) {
        var semaine = entry['semaine'] ?? '';
        var planifieValue = entry['Planifié'] ?? '';
        var ecartValue = entry['Ecart'] ?? 0;
        var realiseValue = entry['Réalisé'] ?? 0;

        planifierData.add(OrdinalSales(semaine, planifieValue));
        ecartData.add(OrdinalSales(semaine, ecartValue));
        realiseData.add(OrdinalSales(semaine, realiseValue));
      }

      setState(() {
        seriesList = [
          charts.Series<OrdinalSales, String>(
            id: 'Planifier',
            colorFn: (_, __) => charts.MaterialPalette.cyan.shadeDefault,
            domainFn: (OrdinalSales sales, _) => sales.year,
            measureFn: (OrdinalSales sales, _) => sales.sales,
            data: planifierData,
          ),
          charts.Series<OrdinalSales, String>(
            id: 'Ecart',
            colorFn: (_, __) => charts.MaterialPalette.black,
            domainFn: (OrdinalSales sales, _) => sales.year,
            measureFn: (OrdinalSales sales, _) => sales.sales,
            data: ecartData,
          ),
          charts.Series<OrdinalSales, String>(
            id: 'Realisé',
            colorFn: (_, __) => charts.MaterialPalette.deepOrange.shadeDefault,
            domainFn: (OrdinalSales sales, _) => sales.year,
            measureFn: (OrdinalSales sales, _) => sales.sales,
            data: realiseData,
          )..setAttribute(charts.rendererIdKey, 'customLine'),
        ];
      });

      client.close();
    } catch (e) {
      print("Error fetching static values: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: seriesList.isEmpty
            ? Center(child: CircularProgressIndicator())
            : charts.OrdinalComboChart(
                seriesList,
                defaultRenderer: charts.BarRendererConfig(
                  groupingType: charts.BarGroupingType.grouped,
                ),
                customSeriesRenderers: [
                  charts.LineRendererConfig(
                    customRendererId: 'customLine',
                    includeLine: true, // Include line segments
                    includePoints: true, // Include point segments
                    strokeWidthPx: 2.0, // Set the width of the line segments
                  ),
                ],
                primaryMeasureAxis: charts.NumericAxisSpec(
                  renderSpec: charts.GridlineRendererSpec(
                    labelStyle: charts.TextStyleSpec(
                      color: charts.Color.black,
                    ),
                  ),
                ),
                domainAxis: charts.OrdinalAxisSpec(
                  renderSpec: charts.GridlineRendererSpec(
                    labelStyle: charts.TextStyleSpec(
                      color: charts.Color.black,
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}

class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}
