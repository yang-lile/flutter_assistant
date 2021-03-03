import 'package:flutter_assistant/template/MyScaffold.dart';

/// https://www.cnblogs.com/mengqd/p/12411952.html
/// 上面是一篇写得不错的文档

import 'package:flutter/material.dart';

class Grades {
  Grades({
    required this.name,
    required this.chinese,
    required this.english,
    required this.math,
  });
  String name;
  int chinese;
  int math;
  int english;

  int get total => chinese + math + english;
  double get average => total / 3;
}

class DataTableDemo extends StatefulWidget {
  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  var datas = [
    Grades(name: "小红", chinese: 99, english: 98, math: 97),
    Grades(name: "小名", chinese: 100, english: 99, math: 12),
    Grades(name: "小x", chinese: 59, english: 50, math: 100),
    Grades(name: "xx", chinese: 78, english: 65, math: 34),
    Grades(name: "null", chinese: 0, english: 0, math: 0),
  ];
  bool _ascending = true;
  int? _columnIndex;
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "DataTableDemo",
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              sortAscending: _ascending,
              sortColumnIndex: _columnIndex ?? 0,
              columns: [
                DataColumn(
                  label: Text("姓名"),
                  onSort: (columnIndex, ascending) {
                    setState(() {
                      // 设置排序状态
                      _ascending = ascending;
                      _columnIndex = columnIndex;
                      // 顺序和倒序的实现
                      if (ascending)
                        datas.sort((a, b) => a.name.compareTo(b.name));
                      else
                        datas.sort((b, a) => a.name.compareTo(b.name));
                    });
                  },
                ),
                DataColumn(
                  label: Text("chinesemath"),
                  onSort: (columnIndex, ascending) {
                    setState(() {
                      _ascending = ascending;
                      _columnIndex = columnIndex;
                      if (ascending) {
                        datas.sort((a, b) => a.chinese.compareTo(b.chinese));
                      } else {
                        datas.sort((b, a) => a.chinese.compareTo(b.chinese));
                      }
                    });
                  },
                ),
                DataColumn(
                  label: Text("math"),
                  onSort: (columnIndex, ascending) {
                    setState(() {
                      _ascending = ascending;
                      _columnIndex = columnIndex;
                      if (ascending) {
                        datas.sort((a, b) => a.math.compareTo(b.math));
                      } else {
                        datas.sort((b, a) => a.math.compareTo(b.math));
                      }
                    });
                  },
                ),
                DataColumn(
                  label: Text("english"),
                  onSort: (columnIndex, ascending) {
                    setState(() {
                      _ascending = ascending;
                      _columnIndex = columnIndex;
                      if (ascending) {
                        datas.sort((a, b) => a.english.compareTo(b.english));
                      } else {
                        datas.sort((b, a) => a.english.compareTo(b.english));
                      }
                    });
                  },
                ),
                DataColumn(
                  label: Text("total"),
                  onSort: (columnIndex, ascending) {
                    setState(() {
                      _ascending = ascending;
                      _columnIndex = columnIndex;
                      if (ascending) {
                        datas.sort((a, b) => a.total.compareTo(b.total));
                      } else {
                        datas.sort((b, a) => a.total.compareTo(b.total));
                      }
                    });
                  },
                ),
                DataColumn(
                  label: Text("average"),
                  onSort: (columnIndex, ascending) {
                    setState(() {
                      _ascending = ascending;
                      _columnIndex = columnIndex;
                      if (ascending) {
                        datas.sort((a, b) => a.average.compareTo(b.average));
                      } else {
                        datas.sort((b, a) => a.average.compareTo(b.average));
                      }
                    });
                  },
                ),
              ],
              rows: [
                for (var i = 0; i < datas.length; i++)
                  DataRow(cells: [
                    DataCell(Text("${datas[i].name}")),
                    DataCell(Text("${datas[i].chinese}")),
                    DataCell(Text("${datas[i].math}")),
                    DataCell(Text("${datas[i].english}")),
                    DataCell(Text("${datas[i].total}")),
                    DataCell(Text("${datas[i].average}")),
                  ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
