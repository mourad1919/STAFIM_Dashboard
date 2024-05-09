import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_dash_v2/screens/styles/ScaleSize.dart';
import 'package:flutter_application_dash_v2/screens/styles/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odoo_rpc/odoo_rpc.dart';

import '../screens/constants/config_url.dart';

class PqgTable2Slide2 extends StatefulWidget {
  const PqgTable2Slide2({Key? key}) : super(key: key);

  @override
  _PqgTable2Slide2State createState() => _PqgTable2Slide2State();
}

class _PqgTable2Slide2State extends State<PqgTable2Slide2> {
  void initState() {
    super.initState();
      _getStaticValuesObjectifResultatPQG();
  }

  // Declare variables here
  dynamic cvtnbrRealisation = 0,
      cvtgoodLive = 0,
      cvttauxBonDirect = 0,
      cvtnbrDefautTotal = 0,
      cvtanomalyWorkstationGoal = 0,
      cvttauxDefaut = 0;
  dynamic CVT2nbrRealisation = 0,
      CVT2goodLive = 0,
      CVT2tauxBonDirect = 0,
      CVT2nbrDefautTotal = 0,
      CVT2anomalyWorkstationGoal = 0,
      CVT2tauxDefaut = 0;
  // Declare variables for other postes de controle...
  dynamic SCAnbrRealisation = 0,
      SCAgoodLive = 0,
      SCAtauxBonDirect = 0,
      SCAnbrDefautTotal = 0,
      SCAanomalyWorkstationGoal = 0,
      SCAtauxDefaut = 0;
  dynamic ACOMnbrRealisation = 0,
      ACOMgoodLive = 0,
      ACOMtauxBonDirect = 0,
      ACOMnbrDefautTotal = 0,
      ACOManomalyWorkstationGoal = 0,
      ACOMtauxDefaut = 0;

  

  void extractValues(List<dynamic> resultList) {
    for (var item in resultList) {
      var posteDeControle = item['poste de controle'];

      if (posteDeControle == 'CVT1') {
        // If the "poste de controle" is CVT, extract the desired attributes
        cvtnbrRealisation = item['nbr_realisation'];
        cvtgoodLive = item['good_live'];
        cvttauxBonDirect = item['taux_bon_direct'];
        cvtnbrDefautTotal = item['nbr_defaut_total'];
        cvtanomalyWorkstationGoal = item['anomaly_workstation_goal'];
        cvttauxDefaut = item['taux_defaut'];

        // Print or use the values as needed
        print('Poste de Controle CVT - Nbr Realisation: $cvtnbrRealisation');
        print('Poste de Controle CVT - Good Live: $cvtgoodLive');
        print('Poste de Controle CVT - Taux Bon Direct: $cvttauxBonDirect');
        print('Poste de Controle CVT - Nbr Defaut Total: $cvtnbrDefautTotal');
        print(
            'Poste de Controle CVT - Anomaly Workstation Goal: $cvtanomalyWorkstationGoal');
        print('Poste de Controle CVT - Taux Defaut: $cvttauxDefaut');
      }
      if (posteDeControle == 'CVT2') {
        // If the "poste de controle" is CVT, extract the desired attributes
        CVT2nbrRealisation = item['nbr_realisation'];
        CVT2goodLive = item['good_live'];
        CVT2tauxBonDirect = item['taux_bon_direct'];
        CVT2nbrDefautTotal = item['nbr_defaut_total'];
        CVT2anomalyWorkstationGoal = item['anomaly_workstation_goal'];
        CVT2tauxDefaut = item['taux_defaut'];

        // Print or use the values as needed
        print('Poste de Controle CVT2 - Nbr Realisation: $CVT2nbrRealisation');
        print('Poste de Controle CVT2 - Good Live: $CVT2goodLive');
        print('Poste de Controle CVT2 - Taux Bon Direct: $CVT2tauxBonDirect');
        print('Poste de Controle CVT2 - Nbr Defaut Total: $CVT2nbrDefautTotal');
        print(
            'Poste de Controle CVT - Anomaly Workstation Goal: $CVT2anomalyWorkstationGoal');
        print('Poste de Controle CVT - Taux Defaut: $CVT2tauxDefaut');
      }
      if (posteDeControle == 'SCA') {
        // If the "poste de controle" is CVT, extract the desired attributes
        SCAnbrRealisation = item['nbr_realisation'];
        SCAgoodLive = item['good_live'];
        SCAtauxBonDirect = item['taux_bon_direct'];
        SCAnbrDefautTotal = item['nbr_defaut_total'];
        SCAanomalyWorkstationGoal = item['anomaly_workstation_goal'];
        SCAtauxDefaut = item['taux_defaut'];

        // Print or use the values as needed
        print('Poste de Controle SCA - Nbr Realisation: $SCAnbrRealisation');
        print('Poste de Controle SCA - Good Live: $SCAgoodLive');
        print('Poste de Controle SCA - Taux Bon Direct: $SCAtauxBonDirect');
        print('Poste de Controle SCA - Nbr Defaut Total: $SCAnbrDefautTotal');
        print(
            'Poste de Controle SCA - Anomaly Workstation Goal: $SCAanomalyWorkstationGoal');
        print('Poste de Controle SCA - Taux Defaut: $SCAtauxDefaut');
      }
      if (posteDeControle == 'ACOM') {
        // If the "poste de controle" is CVT, extract the desired attributes
        ACOMnbrRealisation = item['nbr_realisation'];
        ACOMgoodLive = item['good_live'];
        ACOMtauxBonDirect = item['taux_bon_direct'];
        ACOMnbrDefautTotal = item['nbr_defaut_total'];
        ACOManomalyWorkstationGoal = item['anomaly_workstation_goal'];
        ACOMtauxDefaut = item['taux_defaut'];

        // Print or use the values as needed
        print('Poste de Controle ACOM - Nbr Realisation: $ACOMnbrRealisation');
        print('Poste de Controle ACOM - Good Live: $ACOMgoodLive');
        print('Poste de Controle ACOM - Taux Bon Direct: $ACOMtauxBonDirect');
        print('Poste de Controle ACOM - Nbr Defaut Total: $ACOMnbrDefautTotal');
        print(
            'Poste de Controle ACOM - Anomaly Workstation Goal: $ACOManomalyWorkstationGoal');
        print('Poste de Controle ACOM - Taux Defaut: $ACOMtauxDefaut');
      }

      // Perform further operations with these values as needed
    }
  }

  Future<void> _getStaticValuesObjectifResultatPQG() async {
    final client = OdooClient(ServerUrl);
    await client.authenticate(Database, User, Password);
    print("ObjectifResultatPQG");
    try {
      var odoodataPQG = await client.callKw({
        'model': 'control.stat',
        'method': 'get_stat_par_poste',
        'args': [-1],
        'kwargs': {
          'context': {'bin_size': true},
        },
      });

      setState(() {
        print("ObjectifResultatPQG");
        print(odoodataPQG);
        extractValues(odoodataPQG);

        print(" fin ObjectifResultatPQG");
      });
      client.close();
    } catch (e) {
      print("Error fetching static values: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              'RESULTAT MESURE QUALITE',
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
              textScaleFactor: ScaleSize.textScaleFactorOf(context, param1: 4),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Container(
                color: Colors.transparent,

                // Adjusts width dynamically
                ///// background Color
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
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
                                    Text(
                                                                          "DVX",
                                                                          textScaleFactor:
                                      ScaleSize.textScaleFactorOf(context,
                                          param1: 4),
                                                                          style: TextStyle(
                                    color: Colors
                                        .white, // Change color to whatever you desire
                                                                          ),
                                                                        ),
                                    Text(
                                                                          "$CVT2tauxDefaut",
                                                                          textScaleFactor:
                                      ScaleSize.textScaleFactorOf(context,
                                          param1: 4),
                                                                          style: TextStyle(
                                    color: Colors
                                        .orangeAccent, // Change color to whatever you desire
                                                                          ),
                                                                        ),
                                    Text(
                                                                          " Objective: $CVT2anomalyWorkstationGoal",
                                                                          textScaleFactor:
                                      ScaleSize.textScaleFactorOf(context,
                                          param1: 4),
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
                      flex: 2,
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Container(
                            color: Color.fromARGB(255, 12, 12, 12),

                            // Adjusts width dynamically
                            child: Column(
                              children: [
                                Expanded(
                                    child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade500,
                                          child: Center(
                                              child: Text(
                                            "1",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 4),
                                          ))),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text(
                                            "NB.VH",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 3),
                                          ))),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text(
                                            "$CVT2nbrRealisation",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 4),
                                          ))),
                                    ),
                                  ],
                                )),

                                /// end of first row
                                Expanded(
                                    child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text(
                                            "2",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 4),
                                          ))),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade300,
                                          child: Center(
                                              child: Text(
                                            "NB. Défauts",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 3),
                                          ))),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade300,
                                          child: Center(
                                              child: Text(
                                            "${CVT2nbrDefautTotal + cvtnbrDefautTotal}",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 4),
                                          ))),
                                    ),
                                  ],
                                )), //end of second row
                                Expanded(
                                    child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade500,
                                          child: Center(
                                              child: Text(
                                            "3",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 4),
                                          ))),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text(
                                            "NB. Bon Direct",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 3),
                                          ))),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text(
                                            "$CVT2goodLive",
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
                    Expanded(
                      flex: 1,
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Column(children: [
                            ///yokeed dyma fergh o yekhou loun el background
                            Expanded(
                              flex: 4,
                              child: Container(),
                            ),

                            ///pourcentage container
                            Expanded(
                              flex: 2,
                              child: Container(
                                  color: Colors.grey.shade400,
                                  child: Center(
                                      child: Text(
                                    "$CVT2tauxBonDirect",
                                    textScaleFactor:
                                        ScaleSize.textScaleFactorOf(context,
                                            param1: 4),
                                  ))),
                            )
                          ]);
                        },
                      ),
                    )
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
                color: Colors.transparent,

                // Adjusts width dynamically
                margin: EdgeInsets.all(10),

                ///// background Color
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
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
                                    Text(
                                                                          "DPVX",
                                                                          textScaleFactor:
                                      ScaleSize.textScaleFactorOf(context,
                                          param1: 4),
                                                                          style: TextStyle(
                                    color: Colors
                                        .white, // Change color to whatever you desire
                                                                          ),
                                                                        ),
                                    Text(
                                                                          "$SCAtauxDefaut",
                                                                          textScaleFactor:
                                      ScaleSize.textScaleFactorOf(context,
                                          param1: 4),
                                                                          style: TextStyle(
                                    color: Colors
                                        .tealAccent, // Change color to whatever you desire
                                                                          ),
                                                                        ),
                                    Text(
                                                                          " Objective: $SCAanomalyWorkstationGoal",
                                                                          textScaleFactor:
                                      ScaleSize.textScaleFactorOf(context,
                                          param1: 4),
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
                      flex: 2,
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Container(
                            color: Color.fromARGB(255, 12, 12, 12),
                            // Adjusts width dynamically

                            child: Column(
                              children: [
                                Expanded(
                                    child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade500,
                                          child: Center(
                                              child: Text(
                                            "1",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 4),
                                          ))),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text(
                                            "NB.VH",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 3),
                                          ))),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text(
                                            "$SCAnbrRealisation",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 4),
                                          ))),
                                    ),
                                  ],
                                )),

                                /// end of first row
                                Expanded(
                                    child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text(
                                            "2",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 4),
                                          ))),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade300,
                                          child: Center(
                                              child: Text(
                                            "NB. Défauts",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 3),
                                          ))),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade300,
                                          child: Center(
                                              child: Text(
                                            "$SCAnbrDefautTotal",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 4),
                                          ))),
                                    ),
                                  ],
                                )), //end of second row
                                Expanded(
                                    child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade500,
                                          child: Center(
                                              child: Text(
                                            "3",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 4),
                                          ))),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text(
                                            "NB. Bon Direct",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 3),
                                          ))),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text(
                                            "$SCAgoodLive",
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
                    Expanded(
                      flex: 1,
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Column(children: [
                            ///yokeed dyma fergh o yekhou loun el background
                            Expanded(
                              flex: 4,
                              child: Container(),
                            ),

                            ///pourcentage container
                            Expanded(
                              flex: 2,
                              child: Container(
                                  color: Colors.grey.shade400,
                                  child: Center(
                                      child: Text(
                                    "$SCAtauxBonDirect",
                                    textScaleFactor:
                                        ScaleSize.textScaleFactorOf(context,
                                            param1: 4),
                                  ))),
                            )
                          ]);
                        },
                      ),
                    )
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
                // Adjusts width dynamically
                ///// background Color
                margin: EdgeInsets.all(10),

                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
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
                                    Text(
                                                                          "BUYOFF",
                                                                          textScaleFactor:
                                      ScaleSize.textScaleFactorOf(context,
                                          param1: 4),
                                                                          style: TextStyle(
                                    color: Colors
                                        .white, // Change color to whatever you desire
                                                                          ),
                                                                        ),
                                    Text(
                                                                          "$ACOMtauxDefaut",
                                                                          textScaleFactor:
                                      ScaleSize.textScaleFactorOf(context,
                                          param1: 4),
                                                                          style: TextStyle(
                                    color: Colors
                                        .tealAccent, // Change color to whatever you desire
                                                                          ),
                                                                        ),
                                    Text(
                                                                          " Objective: $ACOManomalyWorkstationGoal",
                                                                          textScaleFactor:
                                      ScaleSize.textScaleFactorOf(context,
                                          param1: 4),
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
                      flex: 2,
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Container(
                            /////haaaaaaaaaa
                            height: 320, // Adjusts height dynamically
                            width: 50, // Adjusts width dynamically
                            color: Color.fromARGB(255, 12, 12, 12),
                            child: Column(
                              children: [
                                Expanded(
                                    child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade500,
                                          child: Center(
                                              child: Text(
                                            "1",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 4),
                                          ))),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text(
                                            "NB.VH",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 3),
                                          ))),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text(
                                            "$ACOMnbrRealisation",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 4),
                                          ))),
                                    ),
                                  ],
                                )),

                                /// end of first row
                                Expanded(
                                    child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text(
                                            "2",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 4),
                                          ))),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade300,
                                          child: Center(
                                              child: Text(
                                            "NB. Défauts",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 3),
                                          ))),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade300,
                                          child: Center(
                                              child: Text(
                                            "$ACOMnbrDefautTotal",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 4),
                                          ))),
                                    ),
                                  ],
                                )), //end of second row
                                Expanded(
                                    child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade500,
                                          child: Center(
                                              child: Text(
                                            "3",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 4),
                                          ))),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text(
                                            "NB. Bon Direct",
                                            textScaleFactor:
                                                ScaleSize.textScaleFactorOf(
                                                    context,
                                                    param1: 3),
                                          ))),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text(
                                            "$ACOMgoodLive",
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
                    Expanded(
                      flex: 1,
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Column(children: [
                            ///yokeed dyma fergh o yekhou loun el background
                            Expanded(
                              flex: 4,
                              child: Container(),
                            ),

                            ///pourcentage container
                            Expanded(
                              flex: 2,
                              child: Container(
                                  color: Colors.grey.shade400,
                                  child: Center(
                                      child: Text(
                                    "$ACOMtauxBonDirect",
                                    textScaleFactor:
                                        ScaleSize.textScaleFactorOf(context,
                                            param1: 4),
                                  ))),
                            )
                          ]);
                        },
                      ),
                    )
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
