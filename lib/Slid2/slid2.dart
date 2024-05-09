import 'package:flutter/material.dart';
import 'package:flutter_application_dash_v2/Slid2/chartDVX1DPVXSlide2.dart';
import 'package:flutter_application_dash_v2/Slid2/pgTable2Slide2.dart';
import 'package:flutter_application_dash_v2/screens/containers/chartDVX1DPVX.dart';
import 'package:flutter_application_dash_v2/screens/containers/pgTable2.dart';
import 'package:flutter_application_dash_v2/screens/styles/constants.dart';

class Slide2 extends StatelessWidget {
  const Slide2({super.key});

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
            flex: 1,
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Container(
                  // Adjusts width dynamically
                  child: PqgTable2Slide2(),
                  // Your child widget here
                );
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Container(
                          // Adjusts width dynamically
                          child: ChartDVX1DPVXSlide2(),
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
      ),
    );
  }
}
