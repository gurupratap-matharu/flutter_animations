import 'package:flutter/material.dart';
import 'package:flutter_web
const owl_url =
    'https://raw.githubusercontent.com/flutter/website/master/src/images/owl.jpg';

class FadeInDemo extends StatefulWidget {
  @override
  _FadeInDemoState createState() => _FadeInDemoState();
}

class _FadeInDemoState extends State<FadeInDemo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.network(owl_url),
        MaterialButton(
          child: Text(
            'Show details',
            style: TextStyle(
              color: Colors.blueAccent,
            ),
          ),
          onPressed: () => null,
        ),
        Container(
          child: Column(
            children: <Widget>[
              Text('Type: Owl'),
              Text('Age: 39'),
              Text('Employment: None'),
            ],
          ),
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: FadeInDemo(),
        ),
      ),
    );
  }
}

Future<void> main() async {
  await ui.web
}