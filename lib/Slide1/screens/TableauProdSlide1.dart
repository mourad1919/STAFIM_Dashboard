import 'package:flutter/material.dart';
import 'package:flutter_application_dash_v2/Slide1/screens/Table_JourSlide1.dart';
import 'package:flutter_application_dash_v2/screens/charts&gauge/gaugeProd.dart';
import 'package:flutter_application_dash_v2/screens/charts&gauge/sousTable_Prod.dart';
import 'package:flutter_application_dash_v2/screens/styles/ScaleSize.dart';
import 'package:flutter_application_dash_v2/screens/styles/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class TabProdSlid1 extends StatelessWidget {
  const TabProdSlid1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              'DETAILS PRODUCTION',
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
              textScaleFactor: ScaleSize.textScaleFactorOf(context, param1: 4),
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Container(
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
                              child: LayoutBuilder(builder:
                                  (BuildContext context,
                                      BoxConstraints constraints) {
                                return Column(
                                  children: [
                                    Expanded(flex: 2, child: gaugeProd()),
                                    Expanded(
                                      flex: 1,
                                      child: Center(
                                        child: Text(
                                          " TOTAL PROD  ",
                                          textScaleFactor:
                                              ScaleSize.textScaleFactorOf(
                                                  context,
                                                  param1: 3),
                                          style: TextStyle(
                                            color: Colors
                                                .white, // Change color to whatever you desire
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              })

                              // Your child widget here
                              );
                        },
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Container(
                            color: Colors.tealAccent,

                            child:
                                Table_SP_Slide1(), // Adjusts width dynamically

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
                color: Color.fromARGB(255, 12, 12, 12),

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
                              color: Color.fromARGB(255, 0, 0, 0),
                              child: LayoutBuilder(builder:
                                  (BuildContext context,
                                      BoxConstraints constraints) {
                                return Column(
                                  children: [
                                    Text(
                                                                          "SEMAINE 2",
                                                                          textScaleFactor:
                                      ScaleSize.textScaleFactorOf(context,
                                          param1: 3),
                                                                          style: TextStyle(
                                    color: Colors
                                        .white, // Change color to whatever you desire
                                                                          ),
                                                                        ),
                                    Icon(
                                      Icons.euro,
                                      color: Colors.tealAccent,
                                      size: 48.0,
                                    ),
                                    Text(
                                                                          " SCRAP",
                                                                          textScaleFactor:
                                      ScaleSize.textScaleFactorOf(context,
                                          param1: 3),
                                                                          style: TextStyle(
                                    color: Colors
                                        .white, // Change color to whatever you desire
                                                                          ),
                                                                        ),
                                  ],
                                );
                              })

                              // Your child widget here
                              );
                        },
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Container(
                            /////haaaaaaaaaa
                            // Adjusts width dynamically
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                Expanded(
                                    child: Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text(
                                            "NBRE DE REFRENCE",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 4),
                                          ))),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text(
                                            "10",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 4),
                                          ))),
                                    ),
                                  ],
                                )),

                                /// end of first row
                                //end of second row
                                Expanded(
                                    child: Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                          color: Colors.grey.shade600,
                                          child: Center(
                                              child: Text(
                                            "VALEUR REBUT",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 4),
                                          ))),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          color: Colors.grey.shade600,
                                          child: Center(
                                              child: Text(
                                            "10",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 4),
                                          ))),
                                    ),
                                  ],
                                )), //end of third row
                              ],
                            ),
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
      ],
    );
  }
}
