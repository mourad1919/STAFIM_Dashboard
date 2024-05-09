import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_dash_v2/screens/charts&gauge/chartDPVX.dart';
import 'package:flutter_application_dash_v2/screens/charts&gauge/chartDVX.dart';
import 'package:flutter_application_dash_v2/screens/charts&gauge/gaugeObj_mois.dart';

import 'package:flutter_application_dash_v2/screens/styles/constants.dart';
import 'package:google_fonts/google_fonts.dart';

import '../charts&gauge/sousTable_objMois.dart';
import '../styles/ScaleSize.dart';

class boxObjectivedumois extends StatelessWidget {
  const boxObjectivedumois({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        flex: 1,
        child: Container(
          alignment: Alignment.center,
          child: Text(
            'Objective du mois',
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
            textScaleFactor: ScaleSize.textScaleFactorOf(context, param1: 3),
          ),
        ),
      ),
      Expanded(
        flex: 2,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Container(
              color: Colors.transparent,

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
                          child: gaugeObj_M(),
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
          flex: 3,
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return Container(
                color: Color.fromARGB(0, 221, 11, 11),

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
                            margin: EdgeInsets.only(bottom: 70),
                            // Adjusts width dynamically
                            color: Color.fromARGB(255, 12, 12, 12),
                            child: SousTableObj(),
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
