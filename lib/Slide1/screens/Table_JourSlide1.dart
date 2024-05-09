import 'package:flutter/material.dart';
import 'package:flutter_application_dash_v2/screens/styles/constants.dart';

void main() => runApp(Table_SP_Slide1());

class Table_SP_Slide1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ColoredBox(
        color: Colors.black,
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            // Get the width of the screen
            child: SingleChildScrollView(
              child: DataTable(
                columnSpacing: 0.4,
                headingRowHeight: 40,
                columns: const [
                  DataColumn(
                    label: Text(
                      '',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Version ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.tealAccent),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'SMON ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.tealAccent),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'ACOM ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.tealAccent),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'FACT',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.tealAccent),
                    ),
                  ),

                  // ... other DataColumn definitions ...
                ],
                rows: [
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Container(
                          width: (MediaQuery.of(context).size.width / 10) * 0.2,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/v1.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ))),
                      DataCell(Container(
                          width: (MediaQuery.of(context).size.width / 10) * 0.2,
                          child: Text(
                            'YNU2',
                            style: TextStyle(color: Colors.orangeAccent),
                          ))),
                      DataCell(Container(
                          width: (MediaQuery.of(context).size.width / 10) * 0.1,
                          child: Text(
                            '13',
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Colors.tealAccent),
                          ))),
                      DataCell(Container(
                          width: (MediaQuery.of(context).size.width / 10) * 0.1,
                          child: Text(
                            '13',
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Colors.tealAccent),
                          ))),
                      DataCell(Container(
                          width: (MediaQuery.of(context).size.width / 10) * 0.1,
                          child: Text(
                            '13',
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Colors.tealAccent),
                          ))),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Container(
                          width: (MediaQuery.of(context).size.width / 10) * 0.4,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/v2.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ))),
                      DataCell(Container(
                          width: (MediaQuery.of(context).size.width / 10) * 0.2,
                          child: Text(
                            'ZUN1',
                            style: TextStyle(color: Colors.orangeAccent),
                          ))),
                      DataCell(Container(
                          width: (MediaQuery.of(context).size.width / 10) * 0.1,
                          child: Text(
                            '13',
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Colors.tealAccent),
                          ))),
                      DataCell(Container(
                          width: (MediaQuery.of(context).size.width / 10) * 0.1,
                          child: Text(
                            '13',
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Colors.tealAccent),
                          ))),
                      DataCell(Container(
                          width: (MediaQuery.of(context).size.width / 10) * 0.1,
                          child: Text(
                            '13',
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Colors.tealAccent),
                          ))),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Container(
                          width: (MediaQuery.of(context).size.width / 10) * 0.4,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/v3.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ))),
                      DataCell(Container(
                          width: (MediaQuery.of(context).size.width / 10) * 0.2,
                          child: Text(
                            'UN7',
                            style: TextStyle(color: Colors.orangeAccent),
                          ))),
                      DataCell(Container(
                          width: (MediaQuery.of(context).size.width / 10) * 0.1,
                          child: Text(
                            '13',
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Colors.tealAccent),
                          ))),
                      DataCell(Container(
                          width: (MediaQuery.of(context).size.width / 10) * 0.1,
                          child: Text(
                            '13',
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Colors.tealAccent),
                          ))),
                      DataCell(Container(
                          width: (MediaQuery.of(context).size.width / 10) * 0.1,
                          child: Text(
                            '13',
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Colors.tealAccent),
                          ))),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Container(
                          width: (MediaQuery.of(context).size.width / 10) * 0.4,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/v4.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ))),
                      DataCell(Container(
                          width: (MediaQuery.of(context).size.width / 10) * 0.2,
                          child: Text(
                            'AND2',
                            style: TextStyle(color: Colors.orangeAccent),
                          ))),
                      DataCell(Container(
                          width: (MediaQuery.of(context).size.width / 10) * 0.1,
                          child: Text(
                            '13',
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Colors.tealAccent),
                          ))),
                      DataCell(Container(
                          width: (MediaQuery.of(context).size.width / 10) * 0.1,
                          child: Text(
                            '13',
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Colors.tealAccent),
                          ))),
                      DataCell(Container(
                          width: (MediaQuery.of(context).size.width / 10) * 0.1,
                          child: Text(
                            '13',
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Colors.tealAccent),
                          ))),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
