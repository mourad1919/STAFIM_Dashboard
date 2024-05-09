import 'dart:async';

import 'package:flutter/material.dart';
import 'package:odoo_rpc/odoo_rpc.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../constants/config_url.dart';

class gaugeObj_M extends StatefulWidget {
  const gaugeObj_M({Key? key}) : super(key: key);

  @override
  _gaugeObj_MState createState() => _gaugeObj_MState();
}

class _gaugeObj_MState extends State<gaugeObj_M> {
  dynamic mois;
  dynamic planifie;
  dynamic realise;
  dynamic taux = 0.0;

  @override
  void initState() {
    super.initState();
    _getStaticValuesObjectifMois();
  }

  
  Future<void> _getStaticValuesObjectifMois() async {
    final client = OdooClient(ServerUrl);
    await client.authenticate(Database, User, Password);
    print("getStaticValuesObjectifMois");
    try {
      var odoodataMois = await client.callKw({
        'model': 'control.stat',
        'method': 'objectif_mois',
        'args': [-1],
        'kwargs': {
          'context': {'bin_size': true},
        },
      });

      setState(() {
        print("objectif_mois");
        print(odoodataMois);
        print(" fin objectif_mois");
        print("objectif_mois");
        print(odoodataMois);
        print(" fin objectif_mois");

        // Extract values from the result and assign them to variables
        mois = odoodataMois[0]['Mois'];
        planifie = odoodataMois[0]['Planifié'];
        realise = odoodataMois[0]['Réalisé'];
        taux =
            (double.tryParse(odoodataMois[0]['Taux'].toString()) ?? 0.0) * 100;

        // Update the tableData
      });
      client.close();
    } catch (e) {
      print("Error fetching static values: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(
              child: Container(
                  color: Color.fromARGB(255, 12, 12, 12),
                  child: SfRadialGauge(axes: <RadialAxis>[
                    RadialAxis(minimum: 0, maximum: 100, ranges: <GaugeRange>[
                      GaugeRange(
                          startValue: 0, endValue: 50, color: Colors.red),
                      GaugeRange(
                          startValue: 50,
                          endValue: 75,
                          color: Colors.yellowAccent),
                      GaugeRange(
                          startValue: 75,
                          endValue: 100,
                          color: Colors.tealAccent)
                    ], pointers: <GaugePointer>[
                      NeedlePointer(
                        value: taux,
                        needleColor: Colors.white,
                      )
                    ], annotations: <GaugeAnnotation>[
                      GaugeAnnotation(
                          widget: Container(
                              child: Text('$taux%',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          angle: 90,
                          positionFactor: 0.9)
                    ])
                  ])))),
    );
  }
}
