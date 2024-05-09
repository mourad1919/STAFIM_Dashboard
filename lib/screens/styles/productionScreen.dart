import 'package:flutter/material.dart';
import 'package:flutter_application_dash_v2/screens/Row1.dart';
import 'package:flutter_application_dash_v2/screens/Row2.dart';
import 'package:flutter_application_dash_v2/screens/containers/pqgTable.dart';
import 'package:flutter_application_dash_v2/screens/styles/constants.dart';

import '../containers/Tableau_prod.dart';

class productionScreen extends StatefulWidget {
  const productionScreen({super.key});

  @override
  State<productionScreen> createState() => _productionScreenState();
}

class _productionScreenState extends State<productionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              flex: 1,
              child: Container(
                child: TabProd(),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: PqgTable(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
