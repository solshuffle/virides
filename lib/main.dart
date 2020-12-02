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
      body: DefaultTextStyle(
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.teal,
          fontSize: 18.0,
        ),
        child: GridView.count(
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              color: Colors.orange[100],
              child: Column(
                children: <Widget>[
                  Text(
                    'Humedad de suelo minima',
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Humedad %',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.orange[100],
              child: Column(
                children: <Widget>[
                  Text(
                    'Start/stop riego general',
                  ),
                  Switch(
                    value: false,
                    onChanged: null,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.teal[100],
              child: Column(
                children: <Widget>[
                  Text(
                    '62%',
                    style: Theme.of(context).textTheme.display3,
                  ),
                  Text('Humedad suelo cajon 1'),
                ],
              ),
            ),
            Container(
              color: Colors.teal[100],
              child: Column(
                children: <Widget>[
                  Text(
                    '78%',
                    style: Theme.of(context).textTheme.display3,
                  ),
                  Text('Humedad suelo cajon 2'),
                ],
              ),
            ),
            Container(
              color: Colors.teal[100],
              child: Column(
                children: <Widget>[
                  Text(
                    '56%',
                    style: Theme.of(context).textTheme.display3,
                  ),
                  Text('Humedad suelo cajon 3'),
                ],
              ),
            ),
            Container(
              color: Colors.teal[100],
              child: Column(
                children: <Widget>[
                  Text(
                    '32%',
                    style: Theme.of(context).textTheme.display3,
                  ),
                  Text('Humedad suelo cajon 4'),
                ],
              ),
            ),
            Container(
              color: Colors.teal[100],
              child: Column(
                children: <Widget>[
                  Text(
                    '24"',
                    style: Theme.of(context).textTheme.display3,
                  ),
                  Text('Temperatura amb interior'),
                ],
              ),
            ),
            Container(
              color: Colors.teal[100],
              child: Column(
                children: <Widget>[
                  Text(
                    '39%',
                    style: Theme.of(context).textTheme.display3,
                  ),
                  Text('Humedad relativa amb interior'),
                ],
              ),
            ),
            Container(
              color: Colors.teal[100],
              child: Column(
                children: <Widget>[
                  Text(
                    '56%',
                    style: Theme.of(context).textTheme.display3,
                  ),
                  Text('Humedad relativa amb exterior'),
                ],
              ),
            ),
            Container(
              color: Colors.teal[100],
              child: Column(
                children: <Widget>[
                  Text(
                    '1011',
                    style: Theme.of(context).textTheme.display3,
                  ),
                  Text('Presion atmosferica'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
