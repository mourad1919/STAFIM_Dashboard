import 'package:flutter/material.dart';
import 'package:flutter_application_dash_v2/Slide3/charts/ChartJour.dart';
import 'package:flutter_application_dash_v2/Slide3/charts/ChartMois.dart';
import 'package:flutter_application_dash_v2/screens/containers/Table_jour.dart';
import 'package:flutter_application_dash_v2/screens/containers/boxObjectivemois.dart';
import 'package:flutter_application_dash_v2/screens/styles/constants.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/containers/table_semaine.dart';
import '../screens/styles/app_colors.dart';

class Slide3 extends StatelessWidget {
  const Slide3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: newcolor,
        image: DecorationImage(
          image: AssetImage('assets/33.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Container(
                  // Adjusts width dynamically
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          margin: EdgeInsets.only(
                              bottom: 40, top: 15, right: 10, left: 10),
                          child: Table_S(),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          color: Colors.white,
                          margin: EdgeInsets.only(
                              bottom: 10, top: 25, right: 5, left: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("Production de la semaine",
                                      style: GoogleFonts.roboto(
                                          color: newcolor,
                                          fontSize: 26,
                                          fontWeight: FontWeight.w600)),
                                  Spacer(),
                                  Container(
                                    height: 20,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: newcolor,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: defaultPadding),
                                    child: Text(
                                      'Ecart',
                                      style: GoogleFonts.roboto(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 20,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.contentColorCyan,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: defaultPadding),
                                    child: Text(
                                      'Planifier',
                                      style: GoogleFonts.roboto(
                                          color: newcolor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 20,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.deepOrange,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: defaultPadding),
                                    child: Text(
                                      'Réalise',
                                      style: GoogleFonts.roboto(
                                          color: newcolor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: defaultPadding,
                              ),
                              Expanded(
                                child: OrdinalComboBarLineChart(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ), // Your child widget here
                );
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                margin: EdgeInsets.only(bottom: 4, top: 1, right: 10, left: 10),
                child: boxObjectivedumois()),
          ),
          Expanded(
            flex: 2,
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Container(
                  // Adjusts width dynamically
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                          child: Center(
                            child: Container(
                                padding: EdgeInsets.only(top: 15, bottom: 15),
                                child: Table_J()),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                          margin: EdgeInsets.only(
                              bottom: 10, top: 25, right: 5, left: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('Chart Production Par Jour',
                                      style: GoogleFonts.roboto(
                                          color: newcolor,
                                          fontSize: 26,
                                          fontWeight: FontWeight.w600)),
                                  Spacer(),
                                  Container(
                                    height: 20,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: newcolor,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: defaultPadding),
                                    child: Text(
                                      'Ecart',
                                      style: GoogleFonts.roboto(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 20,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.contentColorCyan,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: defaultPadding),
                                    child: Text(
                                      'Planifier',
                                      style: GoogleFonts.roboto(
                                          color: newcolor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 20,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.deepOrange,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: defaultPadding),
                                    child: Text(
                                      'Réalise',
                                      style: GoogleFonts.roboto(
                                          color: newcolor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: defaultPadding,
                              ),
                              Expanded(
                                child: BarChartSample4(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ), // Your child widget here
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
