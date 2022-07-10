import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class TableDemo extends StatelessWidget {
  const TableDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'TableDemo',
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child:Center(
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          border: TableBorder.all(),
          children: [
            TableRow(
              children: [
                _buildTableItems(
                  Container(
                    height: 50,
                    color: Colors.blue[300],
                  ),
                ),
                _buildTableItems(
                  Container(
                    height: 80,
                    color: Colors.yellow[300],
                  ),
                ),
                _buildTableItems(
                  Container(
                    height: 30,
                    color: Colors.red[300],
                  ),
                ),
              ],
            ),
            TableRow(
              children: <Widget>[
                _buildTableItems(
                  Container(
                    height: 30,
                    color: Colors.red[300],
                  ),
                ),
                _buildTableItems(
                  Container(
                    height: 20,
                    color: Colors.blue[300],
                  ),
                ),
                _buildTableItems(
                  Container(
                    height: 70,
                    color: Colors.yellow[300],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),),
    );
  }

  Padding _buildTableItems(Widget child) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: child,
    );
  }
}
