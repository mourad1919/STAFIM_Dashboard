import 'package:flutter/material.dart';
import 'package:flutter_application_dash_v2/screens/containers/Tableau_prod.dart';
import 'package:flutter_application_dash_v2/screens/containers/chartDVX1DPVX.dart';
import 'package:flutter_application_dash_v2/screens/containers/pgTable2.dart';
import 'package:flutter_application_dash_v2/screens/containers/pqgTable.dart';

class Row1 extends StatelessWidget {
  const Row1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.12),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
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
                        child: TabProd(),

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
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.12),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
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
                        child: PqgTable(),
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
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.12),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
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
                        child: PqgTable2(),
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
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.12),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
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
                        child: ChartDVX1DPVX(),
                        // Your child widget here
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
