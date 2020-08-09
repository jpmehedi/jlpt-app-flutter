import 'package:flutter/material.dart';
import './data/lesson_one.dart';

class LessonOne extends StatelessWidget {
  Data data = Data();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson One"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columnSpacing: 0,
              dataRowHeight: 30,
              horizontalMargin: 20,
              columns: [
                DataColumn(
                    label: Text(
                  'Romaji',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
                DataColumn(
                    label: Text(
                  'Japanese',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
                DataColumn(
                    label: Text(
                  'Bangla',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
              ],
              rows: data.listOfColumns
                  .map(
                    ((element) => DataRow(
                          cells: <DataCell>[
                            DataCell(Text(element["romaji"])),
                            DataCell(Text(element["japanese"])),
                            DataCell(Text(element["bangla"])),
                          ],
                        )),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
