import 'package:flutter_assistant/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class TableDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "TableDemo",
      body: Padding(
        padding: EdgeInsets.all(20.0),
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

  _buildTableItems(Widget child) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: child,
    );
  }
}
