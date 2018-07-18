import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Infonation ',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Infoantion'),
          ),
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(2.0),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text('Add more photos'),
                ),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/tyre1.jpg'),
                    Text('This is asjd. ')
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
