import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_dash_v2/screens/styles/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odoo_rpc/odoo_rpc.dart';

import '../constants/config_url.dart';
import '../styles/ScaleSize.dart';

class SousTableObj extends StatefulWidget {
  const SousTableObj({Key? key}) : super(key: key);

  @override
  _SousTableObjState createState() => _SousTableObjState();
}

class _SousTableObjState extends State<SousTableObj> {
  List<Map<String, dynamic>> tableData = [];
  // Declare variables to store the result
  dynamic mois;
  dynamic planifie;
  dynamic realise;
  dynamic ecart;

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
        ecart = odoodataMois[0]['Ecart'];

        // Update the tableData
        tableData = List.from(odoodataMois);
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
                          return Container(
                            color: Color.fromARGB(255, 12, 12, 12),

                            height: 320, // Adjusts height dynamically
                            width: 50, // Adjusts width dynamically
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                              height: 60,
                                              color: Colors.grey.shade400,
                                              child: Center(
                                                  child: Text("Mois",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight
                                                              .bold)))),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                              height: 60,
                                              color: Colors.grey.shade300,
                                              child: Center(
                                                  child: Text("Objective",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight
                                                              .bold)))),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                              height: 60,
                                              color: Colors.grey.shade400,
                                              child: Center(
                                                  child: Text("Réalisé",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight
                                                              .bold)))),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                              height: 60,
                                              color: Colors.grey.shade300,
                                              child: Center(
                                                  child: Text("Reste",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight
                                                              .bold)))),
                                        ),
                                      ],
                                    )),

                                /// end of first row
                                Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                              height: 60,
                                              color: Colors.grey.shade400,
                                              child: Center(
                                                  child: Text("$mois",
                                                      style: TextStyle(
                                                          color: newcolor,
                                                          fontWeight: FontWeight
                                                              .bold)))),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                              height: 60,
                                              color: Colors.grey.shade300,
                                              child: Center(
                                                  child: Text("$planifie",
                                                      style: TextStyle(
                                                          color: newcolor,
                                                          fontWeight: FontWeight
                                                              .bold)))),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                              height: 60,
                                              color: Colors.grey.shade400,
                                              child: Center(
                                                  child: Text("$realise",
                                                      style: TextStyle(
                                                          color: newcolor,
                                                          fontWeight: FontWeight
                                                              .bold)))),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                              height: 60,
                                              color: Colors.grey.shade300,
                                              child: Center(
                                                  child: Text("$ecart",
                                                      style: TextStyle(
                                                          color: newcolor,
                                                          fontWeight: FontWeight
                                                              .bold)))),
                                        ),
                                      ],
                                    )), //end of second row
                                //of third row
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
