import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.red
      ),
      home: new HomePage(),
    );
  }
} 

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('infonation'),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.5 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Faheem Ahmad"),
              accountEmail: new Text("faheemtech0@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
                child: new Text("F"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: new Text("A")
                )
              ],
            ),
            new ListTile(
              title: new Text("PROFILE"),
              trailing: new Icon(Icons.home),
            ),
            new ListTile(
              title: new Text("SETTINGS"),
              trailing: new Icon(Icons.settings),
            ),
            new ListTile(
              title: new Text("RATE THIS APP"),
              trailing: new Icon(Icons.rate_review),
            ),
            new ListTile(
              title: new Text("FEEDBACK"),
              trailing: new Icon(Icons.feedback),
            ),
            new Divider(),
            new ListTile(
              title: new Text("VERSION"),
              trailing: new Icon(Icons.verified_user),
            ),
            new ListTile(
              title: new Text("CLOSE"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            )
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Home Page"),
        ),
      ),
    );
  }
}
