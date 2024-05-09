import 'package:flutter/material.dart';
import 'package:flutter_application_dash_v2/screens/charts&gauge/chartDPVX.dart';
import 'package:flutter_application_dash_v2/screens/charts&gauge/chartDVX.dart';
import 'package:flutter_application_dash_v2/screens/styles/ScaleSize.dart';

import 'package:google_fonts/google_fonts.dart';

class ChartDVX1DPVXSlide2 extends StatelessWidget {
  const ChartDVX1DPVXSlide2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        flex: 1,
        child: Container(
          alignment: Alignment.center,
          child: Text(
            'INDICATEURS',
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
            textScaleFactor: ScaleSize.textScaleFactorOf(context, param1: 4),
          ),
        ),
      ),
      Expanded(
        flex: 5,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Container(
              color: Colors.transparent,

              // Adjusts width dynamically
              margin: EdgeInsets.all(10),

              ///// background Color
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        ///midlle box objectif
                        return Container(
                          // Adjusts width dynamically
                          color: Color.fromARGB(255, 12, 12, 12),
                          child: LineChartSample1(),
                          // Your child widget here
                        );
                      },
                    ),
                  ),
                ],
              ),

              // Your child widget here
            );
          },
        ),
      ),
      Expanded(
          flex: 5,
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return Container(
                color: Color.fromARGB(0, 221, 11, 11),
                // Adjusts width dynamically
                ///// background Color
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          ///midlle box objectif
                          return Container(
                            // Adjusts width dynamically
                            color: Color.fromARGB(255, 12, 12, 12),
                            child: LineChartSample2(),
                            // Your child widget here
                          );
                        },
                      ),
                    ),
                  ],
                ));
          }))
    ]);
  }
}
