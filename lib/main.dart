import 'package:flutter/material.dart';

const owl_url =
    'https://raw.githubusercontent.com/flutter/website/master/src/images/owl.jpg';

class FadeInDemo extends StatefulWidget {
  @override
  _FadeInDemoState createState() => _FadeInDemoState();
}

class _FadeInDemoState extends State<FadeInDemo> {
  double opacity = 0;
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
          onPressed: () {
            setState(() {
              opacity = 1;
            });
          },
        ),
        AnimatedOpacity(
          opacity: opacity,
          duration: Duration(seconds: 5),
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
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Owl'),
        ),
        body: Center(
          child: FadeInDemo(),
        ),
      ),
    );
  }
}

void main() {
  return runApp(MyApp());
}
