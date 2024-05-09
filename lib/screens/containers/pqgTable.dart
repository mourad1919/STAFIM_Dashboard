import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_dash_v2/screens/styles/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odoo_rpc/odoo_rpc.dart';

import '../constants/config_url.dart';
import '../styles/ScaleSize.dart';

class PqgTable extends StatefulWidget {
  const PqgTable({Key? key}) : super(key: key);

  @override
  _PqgTableState createState() => _PqgTableState();
}

class _PqgTableState extends State<PqgTable> {
  @override
  void initState() {
    super.initState();
      _getStaticValuesObjectifResultatPQG();
  }

  // Declare variables here

  dynamic HABILLAGEnbrRealisation = 0,
      HABILLAGEgoodLive = 0,
      HABILLAGEtauxBonDirect = 0,
      HABILLAGEnbrDefautTotal = 0,
      HABILLAGEanomalyWorkstationGoal = 0,
      HABILLAGEtauxDefaut = 0;
  dynamic COIFFAGEnbrRealisation = 0,
      COIFFAGEgoodLive = 0,
      COIFFAGEtauxBonDirect = 0,
      COIFFAGEnbrDefautTotal = 0,
      COIFFAGEanomalyWorkstationGoal = 0,
      COIFFAGEtauxDefaut = 0;
  dynamic MECANIQUEnbrRealisation = 0,
      MECANIQUEgoodLive = 0,
      MECANIQUEtauxBonDirect = 0,
      MECANIQUEnbrDefautTotal = 0,
      MECANIQUEanomalyWorkstationGoal = 0,
      MECANIQUEtauxDefaut = 0;

  

  void extractValues(List<dynamic> resultList) {
    for (var item in resultList) {
      var posteDeControle = item['poste de controle'];

      if (posteDeControle == 'PQG HABILLAGE') {
        // If the "poste de controle" is CVT, extract the desired attributes
        HABILLAGEnbrRealisation = item['nbr_realisation'];
        HABILLAGEgoodLive = item['good_live'];
        HABILLAGEtauxBonDirect = item['taux_bon_direct'];
        HABILLAGEnbrDefautTotal = item['nbr_defaut_total'];
        HABILLAGEanomalyWorkstationGoal = item['anomaly_workstation_goal'];
        HABILLAGEtauxDefaut = item['taux_defaut'];

        // Print or use the values as needed
        print(
            'Poste de Controle HABILLAGE - Nbr Realisation: $HABILLAGEnbrRealisation');
        print('Poste de Controle HABILLAGE - Good Live: $HABILLAGEgoodLive');
        print(
            'Poste de Controle HABILLAGE - Taux Bon Direct: $HABILLAGEtauxBonDirect');
        print(
            'Poste de Controle HABILLAGE - Nbr Defaut Total: $HABILLAGEnbrDefautTotal');
        print(
            'Poste de Controle HABILLAGE - Anomaly Workstation Goal: $HABILLAGEanomalyWorkstationGoal');
        print(
            'Poste de Controle HABILLAGE - Taux Defaut: $HABILLAGEtauxDefaut');
      }
      if (posteDeControle == 'PQG COIFFAGE') {
        // If the "poste de controle" is CVT, extract the desired attributes
        COIFFAGEnbrRealisation = item['nbr_realisation'];
        COIFFAGEgoodLive = item['good_live'];
        COIFFAGEtauxBonDirect = item['taux_bon_direct'];
        COIFFAGEnbrDefautTotal = item['nbr_defaut_total'];
        COIFFAGEanomalyWorkstationGoal = item['anomaly_workstation_goal'];
        COIFFAGEtauxDefaut = item['taux_defaut'];

        // Print or use the values as needed
        print(
            'Poste de Controle COIFFAGE - Nbr Realisation: $COIFFAGEnbrRealisation');
        print('Poste de Controle COIFFAGE - Good Live: $COIFFAGEgoodLive');
        print(
            'Poste de Controle COIFFAGE - Taux Bon Direct: $COIFFAGEtauxBonDirect');
        print(
            'Poste de Controle COIFFAGE - Nbr Defaut Total: $COIFFAGEnbrDefautTotal');
        print(
            'Poste de Controle COIFFAGE - Anomaly Workstation Goal: $COIFFAGEanomalyWorkstationGoal');
        print('Poste de Controle COIFFAGE - Taux Defaut: $COIFFAGEtauxDefaut');
      }
      if (posteDeControle == 'PQG MECANIQUE') {
        // If the "poste de controle" is CVT, extract the desired attributes
        MECANIQUEnbrRealisation = item['nbr_realisation'];
        MECANIQUEgoodLive = item['good_live'];
        MECANIQUEtauxBonDirect = item['taux_bon_direct'];
        MECANIQUEnbrDefautTotal = item['nbr_defaut_total'];
        MECANIQUEanomalyWorkstationGoal = item['anomaly_workstation_goal'];
        MECANIQUEtauxDefaut = item['taux_defaut'];

        // Print or use the values as needed
        print(
            'Poste de Controle MECANIQUE - Nbr Realisation: $MECANIQUEnbrRealisation');
        print('Poste de Controle MECANIQUE - Good Live: $MECANIQUEgoodLive');
        print(
            'Poste de Controle MECANIQUE - Taux Bon Direct: $MECANIQUEtauxBonDirect');
        print(
            'Poste de Controle MECANIQUE - Nbr Defaut Total: $MECANIQUEnbrDefautTotal');
        print(
            'Poste de Controle MECANIQUE - Anomaly Workstation Goal: $MECANIQUEanomalyWorkstationGoal');
        print(
            'Poste de Controle MECANIQUE - Taux Defaut: $MECANIQUEtauxDefaut');
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
        print("ObjectifResultatPQG*****");
        print(odoodataPQG);
        extractValues(odoodataPQG);

        print(" fin ObjectifResultatPQG******");
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
              'RESULTAT PQG',
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
              textScaleFactor: ScaleSize.textScaleFactorOf(context, param1: 3),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Container(
                color: Colors.transparent,

                height: 250, // Adjusts height dynamically
                width: 550, // Adjusts width dynamically
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
                                                                          "PQG HABILLAGE",
                                                                          textScaleFactor:
                                      ScaleSize.textScaleFactorOf(context,
                                          param1: 2),
                                                                          style: TextStyle(
                                    color: Colors
                                        .white, // Change color to whatever you desire
                                                                          ),
                                                                        ),
                                    Text(
                                                                          "$HABILLAGEtauxDefaut ",
                                                                          textScaleFactor:
                                      ScaleSize.textScaleFactorOf(context,
                                          param1: 2),
                                                                          style: TextStyle(
                                    color: Colors
                                        .tealAccent, // Change color to whatever you desire
                                                                          ),
                                                                        ),
                                    Text(
                                                                          " Objective: $HABILLAGEanomalyWorkstationGoal",
                                                                          textScaleFactor:
                                      ScaleSize.textScaleFactorOf(context,
                                          param1: 2),
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

                            height: 320, // Adjusts height dynamically
                            width: 50, // Adjusts width dynamically
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
                                          child: Center(child: Text("1"))),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text("NB.VH",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)))),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text(
                                            "$HABILLAGEnbrRealisation",
                                            style: TextStyle(
                                                color: newcolor,
                                                fontWeight: FontWeight.bold),
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
                                          child: Center(child: Text("2"))),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade300,
                                          child: Center(
                                              child: Text("NB. Défauts",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)))),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade300,
                                          child: Center(
                                              child: Text(
                                                  "$HABILLAGEnbrDefautTotal",
                                                  style: TextStyle(
                                                      color: newcolor,
                                                      fontWeight:
                                                          FontWeight.bold)))),
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
                                          child: Center(child: Text("3"))),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text("NB. Bon Direct",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)))),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text("$HABILLAGEgoodLive",
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
                                      child: Text("$HABILLAGEtauxBonDirect",
                                          style: TextStyle(
                                              color: newcolor,
                                              fontWeight: FontWeight.bold)))),
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

                height: 250, // Adjusts height dynamically
                width: 550, // Adjusts width dynamically
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
                                                                          "PQG COIFFAGE",
                                                                          textScaleFactor:
                                      ScaleSize.textScaleFactorOf(context,
                                          param1: 2),
                                                                          style: TextStyle(
                                    color: Colors
                                        .white, // Change color to whatever you desire
                                                                          ),
                                                                        ),
                                    Text(
                                                                          "$COIFFAGEtauxDefaut",
                                                                          textScaleFactor:
                                      ScaleSize.textScaleFactorOf(context,
                                          param1: 2),
                                                                          style: TextStyle(
                                    color: Colors
                                        .tealAccent, // Change color to whatever you desire
                                                                          ),
                                                                        ),
                                    Text(
                                                                          " Objective: $COIFFAGEanomalyWorkstationGoal",
                                                                          textScaleFactor:
                                      ScaleSize.textScaleFactorOf(context,
                                          param1: 2),
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
                            color: Colors.transparent,

                            height: 320, // Adjusts height dynamically
                            width: 50, // Adjusts width dynamically

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
                                          child: Center(child: Text("1"))),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text("NB.VH",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)))),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text(
                                                  "$COIFFAGEnbrRealisation",
                                                  style: TextStyle(
                                                      color: newcolor,
                                                      fontWeight:
                                                          FontWeight.bold)))),
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
                                          child: Center(child: Text("2"))),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade300,
                                          child: Center(
                                              child: Text("NB. Défauts",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)))),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade300,
                                          child: Center(
                                              child: Text(
                                                  "$COIFFAGEnbrDefautTotal",
                                                  style: TextStyle(
                                                      color: newcolor,
                                                      fontWeight:
                                                          FontWeight.bold)))),
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
                                          ))),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text("NB. Bon Direct",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)))),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text("$COIFFAGEgoodLive",
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
                                      child: Text("$COIFFAGEtauxBonDirect",
                                          style: TextStyle(
                                              color: newcolor,
                                              fontWeight: FontWeight.bold)))),
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

                height: 250, // Adjusts height dynamically
                width: 550, // Adjusts width dynamically
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
                                                                          "PQG MECANIQUE",
                                                                          textScaleFactor:
                                      ScaleSize.textScaleFactorOf(context,
                                          param1: 2),
                                                                          style: TextStyle(
                                    color: Colors
                                        .white, // Change color to whatever you desire
                                                                          ),
                                                                        ),
                                    Text(
                                                                          "$MECANIQUEtauxDefaut",
                                                                          textScaleFactor:
                                      ScaleSize.textScaleFactorOf(context,
                                          param1: 2),
                                                                          style: TextStyle(
                                    color: Colors
                                        .tealAccent, // Change color to whatever you desire
                                                                          ),
                                                                        ),
                                    Text(
                                                                          " Objective: $MECANIQUEanomalyWorkstationGoal",
                                                                          textScaleFactor:
                                      ScaleSize.textScaleFactorOf(context,
                                          param1: 2),
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
                            color: Colors.transparent,
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
                                          child: Center(child: Text("1"))),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text("NB.VH",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)))),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text(
                                                  "$MECANIQUEnbrRealisation",
                                                  style: TextStyle(
                                                      color: newcolor,
                                                      fontWeight:
                                                          FontWeight.bold)))),
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
                                          child: Center(child: Text("2"))),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade300,
                                          child: Center(
                                              child: Text("NB. Défauts",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)))),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade300,
                                          child: Center(
                                              child: Text(
                                                  "$MECANIQUEnbrDefautTotal",
                                                  style: TextStyle(
                                                      color: newcolor,
                                                      fontWeight:
                                                          FontWeight.bold)))),
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
                                          child: Center(child: Text("3"))),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text("NB. Bon Direct",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)))),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 60,
                                          color: Colors.grey.shade400,
                                          child: Center(
                                              child: Text("$MECANIQUEgoodLive",
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
                                      child: Text("$MECANIQUEtauxBonDirect",
                                          style: TextStyle(
                                              color: newcolor,
                                              fontWeight: FontWeight.bold)))),
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
