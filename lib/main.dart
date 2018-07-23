import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:infonation/pages.dart';

void main() => runApp(new MyApp(
      theme: 
          ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      ));

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.dark,

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
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) =>
                  new NewPage("PROFILE")
                ));
              }
            ),
            new ListTile(
              title: new Text("SETTINGS"),
              trailing: new Icon(Icons.settings),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) =>
                  new NewPage("SETTINGS")
                ));
              }
            ),
            new ListTile(
              title: new Text("RATE THIS APP"),
              trailing: new Icon(Icons.rate_review),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) =>
                  new NewPage("RATE THIS APP")
                ));
              }
            ),
            new ListTile(
              title: new Text("FEEDBACK"),
              trailing: new Icon(Icons.feedback),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) =>
                  new NewPage("FEEDBACK")
                ));
              }
            ),
            new Divider(),
            new ListTile(
              title: new Text("VERSION"),
              trailing: new Icon(Icons.verified_user),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) =>
                  new NewPage("VERSION")
                ));
              }
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

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  Widget build(BuildContext contex){
    return new Scaffold(
      body: ,
    );
  }
}