import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Virides',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Virides'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Humedad del suelo min'),
          Text('Start/stop riego general'),
          Text('Humedad suelo cajon 1'),
          Text('Humedad suelo cajon 2'),
          Text('Humedad suelo cajon 3'),
          Text('Humedad suelo cajon 4'),
          Text('Temperatura amb interior'),
          Text('Humedad relativa amb interior'),
          Text('Humedad relativa amb exterior'),
          Text('Presion atmosferica'),
        ],
      ),
    );
  }
}
