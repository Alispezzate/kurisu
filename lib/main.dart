import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Kurisu'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: DataTable2(
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'Average score',
            ),
          ),
          DataColumn(
            label: Text(
              'Season',
            ),
          ),
          DataColumn(
            label: Text(
              ' Type',
            ),
          ),
          DataColumn(
            label: Text(
              ' Date started',
            ),
          ),
          DataColumn(
            label: Text(
              ' Date completed',
            ),
          ),
          DataColumn(
            label: Text(
              ' Last updated',
            ),
          ),
          DataColumn(
            label: Text(
              ' Progress',
            ),
          ),
          DataColumn(
            label: Text(
              ' Score',
            ),
          ),
          DataColumn(
            label: Text(
              ' Notes',
            ),
          ),
        ],
        rows: const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('0')),
              DataCell(Text('0')),
              DataCell(Text('0')),
              DataCell(Text('0')),
              DataCell(Text('0')),
              DataCell(Text('0')),
              DataCell(Text('0')),
              DataCell(Text('0')),
              DataCell(Text('0')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('0')),
              DataCell(Text('0')),
              DataCell(Text('0')),
              DataCell(Text('0')),
              DataCell(Text('0')),
              DataCell(Text('0')),
              DataCell(Text('0')),
              DataCell(Text('0')),
              DataCell(Text('0')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('0')),
              DataCell(Text('0')),
              DataCell(Text('0')),
              DataCell(Text('0')),
              DataCell(Text('0')),
              DataCell(Text('0')),
              DataCell(Text('0')),
              DataCell(Text('0')),
              DataCell(Text('0')),
            ],
          ),
        ],
      ),
    );
  }
}
