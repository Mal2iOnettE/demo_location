import 'package:demo_locations/demo_timeline.dart';
import 'package:demo_locations/take_picture.dart';
import 'package:demo_locations/result_take_picture.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DEMO APP : LOCATIONS'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => TakePicture()));
              },
              child: Container(
                margin: EdgeInsets.all(30.0),
                child: Text(
                  'TAKE A PICTURE',
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => DemoTimelINE()));
              },
              child: Container(
                margin: EdgeInsets.all(30.0),
                child: Text(
                  'Demo Timeline',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
