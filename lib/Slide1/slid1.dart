import 'package:flutter/material.dart';
import 'package:flutter_application_dash_v2/Slide1/screens/PgTableslide1.dart';
import 'package:flutter_application_dash_v2/Slide1/screens/TableauProdSlide1.dart';
import 'package:flutter_application_dash_v2/screens/containers/Tableau_prod.dart';
import 'package:flutter_application_dash_v2/screens/containers/pqgTable.dart';
import 'package:flutter_application_dash_v2/screens/styles/constants.dart';

class Slide1 extends StatefulWidget {
  const Slide1({super.key});

  @override
  State<Slide1> createState() => _Slide1State();
}

class _Slide1State extends State<Slide1> {
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
      child: Row(children: [
        Expanded(
          flex: 1,
          child: Container(
            margin: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Container(
                        height: 800, // Adjusts height dynamically
                        width: 800, // Adjusts width dynamically
                        child: TabProdSlid1(),

                        // Your child widget here
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Container(
                        height: 800, // Adjusts height dynamically
                        width: 800, // Adjusts width dynamically
                        child: PqgTable2Slide1(),
                        // Your child widget here
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
