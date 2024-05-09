import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class gaugeProd extends StatelessWidget {
  const gaugeProd({super.key});

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
                          endValue: 100,
                          color: Colors.tealAccent)
                    ], pointers: <GaugePointer>[
                      NeedlePointer(
                        value: 90,
                        needleColor: Colors.white,
                      )
                    ], annotations: <GaugeAnnotation>[
                      GaugeAnnotation(
                          widget: Container(
                              child: Text('90.0',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          angle: 90,
                          positionFactor: 1)
                    ])
                  ])))),
    );
  }
}
