import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_dash_v2/screens/styles/constants.dart';
import 'package:odoo_rpc/odoo_rpc.dart';

import '../constants/config_url.dart';

class Table_S extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Text(
          'RESULTAT DE PRODUCTION SEMAINE',
          style: TextStyle(color: newcolor),
        )),
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  List<Map<String, dynamic>> tableDataSemaine = [];
  @override
  void initState() {
    _getStaticValuesSemaine(); // Corrected the function name
    super.initState();
  }

  
  Future<void> _getStaticValuesSemaine() async {
    final client = OdooClient(ServerUrl);
    await client.authenticate(Database, User, Password);
    print("getStaticValues");
    try {
      var odoodataSemaine = await client.callKw({
        'model': 'control.stat',
        'method': 'mega_dash_prod_hebdo',
        'args': [-1],
        'kwargs': {
          'context': {'bin_size': true},
        },
      });

      setState(() {
        print("odoodataSemaine");
        print(odoodataSemaine);
        print(" fin odoodataSemaine");
        tableDataSemaine = List.from(odoodataSemaine);
        // Accessing values from the response
        // Extracting and displaying Details_poste
        // Extracting and assigning Details_poste to a variab
      });
      client.close();
    } catch (e) {
      print("Error fetching static values: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    // Data rows
    List<DataRow> rows = [];
    List<DataColumn> columns = [];

    // Add header row
    columns.add(DataColumn(label: Text('')));
    for (var data in tableDataSemaine) {
      columns.add(
          DataColumn(label: Center(child: Text(data['semaine'].toString()))));
    }

    // Add data rows
    for (var key in ['Planifié', 'Réalisé', 'Ecart']) {
      rows.add(DataRow(
        cells: [
          DataCell(Center(child: Text(key))),
          for (var data in tableDataSemaine)
            DataCell(Center(child: Text(data[key].toString()))),
        ],
      ));
    }
    return SizedBox(
      
        width: MediaQuery.of(context).size.width, // Get the width of the screen
        child: SingleChildScrollView(
          child: DataTable(
            columns: columns,
            columnSpacing: 0.9,
            rows: rows,
          ),
        ));
  }
}
