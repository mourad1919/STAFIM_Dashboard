import 'package:flutter/material.dart';
import 'package:flutter_application_dash_v2/screens/charts&gauge/gaugeProd.dart';
import 'package:flutter_application_dash_v2/screens/charts&gauge/sousTable_Prod.dart';
import 'package:flutter_application_dash_v2/screens/styles/constants.dart';
import 'package:google_fonts/google_fonts.dart';

import '../styles/ScaleSize.dart';

class TabProd extends StatelessWidget {
  const TabProd({super.key});

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
              textScaleFactor: ScaleSize.textScaleFactorOf(context, param1: 3),
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Container(
                color: Colors.transparent,

                height: 250, // Adjusts height dynamically
                width: 550, // Adjusts width dynamically
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
                                                  param1: 1.5),
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
                            color: Colors.red,
                            height: 320, // Adjusts height dynamically
                            width: 50,
                            //child: Table_SP(), // Adjusts width dynamically

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

                height: 250, // Adjusts height dynamically
                width: 550, // Adjusts width dynamically
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
                                              param1: 1.5),
                                      style: TextStyle(
                                        color: Colors
                                            .white, // Change color to whatever you desire
                                      ),
                                    ),
                                    Icon(
                                      Icons.euro,
                                      color: Colors.tealAccent,
                                      size: 36.0,
                                    ),
                                    Text(
                                      " SCRAP",
                                      textScaleFactor:
                                          ScaleSize.textScaleFactorOf(context,
                                              param1: 1.5),
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
                                              child: Text("NBRE DE REFRENCE",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)))),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text("10",
                                                  style: TextStyle(
                                                      color: newcolor,
                                                      fontWeight:
                                                          FontWeight.bold)))),
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
                                              child: Text("VALEUR REBUT",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)))),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          color: Colors.grey.shade600,
                                          child: Center(
                                              child: Text("10",
                                                  style: TextStyle(
                                                      color: newcolor,
                                                      fontWeight:
                                                          FontWeight.bold)))),
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
