import 'package:flutter/material.dart';
import 'package:flutter_application_dash_v2/screens/containers/Table_jour.dart';
import 'package:flutter_application_dash_v2/screens/styles/constants.dart';

import 'containers/boxObjectivemois.dart';
import 'containers/table_semaine.dart';

class Row2 extends StatelessWidget {
  const Row2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            margin: const EdgeInsets.only(
                left: 25.0, right: 30.0, bottom: 70.0, top: 80.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return SizedBox(
                        height: defaultPadding,
                        // Adjusts width dynamically

                        // Your child widget here

                        child: Table_S(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(flex: 1, child: boxObjectivedumois()),
        Expanded(
          flex: 2,
          child: Container(
            margin: const EdgeInsets.only(
                left: 25.0, right: 25.0, bottom: 70.0, top: 80.0),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Container(
                        // Adjusts width dynamically
                        child: Table_J(),
                        // Your child widget here
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
