import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:infonation/pages.dart';
import 'dart:async';

void main() => runApp(new MaterialApp(
      theme:
          ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.light,
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('infonation'),
          elevation:
              defaultTargetPlatform == TargetPlatform.android ? 5.5 : 0.0,
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
                      backgroundColor: Colors.white, child: new Text("A"))
                ],
              ),
              new ListTile(
                  title: new Text("PROFILE"),
                  trailing: new Icon(Icons.home),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new NewPage("PROFILE")));
                  }),
              new ListTile(
                  title: new Text("SETTINGS"),
                  trailing: new Icon(Icons.settings),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new NewPage("SETTINGS")));
                  }),
              new ListTile(
                  title: new Text("RATE THIS APP"),
                  trailing: new Icon(Icons.rate_review),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new NewPage("RATE THIS APP")));
                  }),
              new ListTile(
                  title: new Text("FEEDBACK"),
                  trailing: new Icon(Icons.feedback),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new NewPage("FEEDBACK")));
                  }),
              new Divider(),
              new ListTile(
                  title: new Text("VERSION"),
                  trailing: new Icon(Icons.verified_user),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new NewPage("VERSION")));
                  }),
              new ListTile(
                title: new Text("CLOSE"),
                trailing: new Icon(Icons.close),
                onTap: () => Navigator.of(context).pop(),
              )
            ],
          ),
        ),
        body: new ListView(children: [
          new Card(
            elevation: 10.0,
            child: new Column(
              children: <Widget>[
                new Image.asset(
                  'assets/tyre1.jpg',
                  width: double.infinity,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                new Row(children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: new BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            new BorderRadius.all(const Radius.circular(100.0)),
                      ),
                      child: new Icon(
                        Icons.bookmark,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: new BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            new BorderRadius.all(const Radius.circular(100.0)),
                      ),
                      child: new Icon(
                        Icons.book,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: new BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            new BorderRadius.all(const Radius.circular(100.0)),
                      ),
                      child: new Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  new Expanded(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          'story of Tyre',
                          style: const TextStyle(
                              fontSize: 25.0, fontFamily: 'mermaid'),
                        ),
                        new Text(
                          'news by google',
                          style: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.red,
                              fontFamily: 'mermaid'),
                        ),
                      ],
                    ), 
                  ),
                  new Container(
                    width: 2.0,
                    height: 70.0,
                    decoration: new BoxDecoration(
                      gradient: new LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.white,
                          const Color(0xFFAAAAAA),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(left:5.0, right:5.0),
                     child: new Column(
                      children: <Widget>[
                        new Icon(
                         Icons.favorite_border,
                         color: Colors.red,
                        ),
                        new Text(
                          'loving this?'
                       ),
                      ],
                     ),
                   ),
                ]
              ),
              ],
            ),
          ),
          new Card(
            elevation: 10.0,
            child: new Column(
              children: <Widget>[
                new Image.asset(
                  'assets/cycle.jpg',
                  width: double.infinity,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                new Row(children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: new BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            new BorderRadius.all(const Radius.circular(100.0)),
                      ),
                      child: new Icon(
                        Icons.bookmark,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: new BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            new BorderRadius.all(const Radius.circular(100.0)),
                      ),
                      child: new Icon(
                        Icons.book,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: new BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            new BorderRadius.all(const Radius.circular(100.0)),
                      ),
                      child: new Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  new Expanded(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          'story of cycle',
                          style: const TextStyle(
                              fontSize: 25.0, fontFamily: 'mermaid'),
                        ),
                        new Text(
                          'news by google',
                          style: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.red,
                              fontFamily: 'mermaid'),
                        ),
                      ],
                    ), 
                  ),
                  new Container(
                    width: 2.0,
                    height: 70.0,
                    decoration: new BoxDecoration(
                      gradient: new LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.white,
                          const Color(0xFFAAAAAA),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(left:5.0, right:5.0),
                     child: new Column(
                      children: <Widget>[
                        new Icon(
                         Icons.favorite_border,
                         color: Colors.red,
                        ),
                        new Text(
                          'loving this?'
                       ),
                      ],
                     ),
                   ),
                ]
              ),
              ],
            ),
          ),
          new Card(
            elevation: 10.0,
            child: new Column(
              children: <Widget>[
                new Image.asset(
                  'assets/cycle.jpg',
                  width: double.infinity,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                new Row(children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: new BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            new BorderRadius.all(const Radius.circular(100.0)),
                      ),
                      child: new Icon(
                        Icons.bookmark,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: new BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            new BorderRadius.all(const Radius.circular(100.0)),
                      ),
                      child: new Icon(
                        Icons.book,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: new BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            new BorderRadius.all(const Radius.circular(100.0)),
                      ),
                      child: new Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  new Expanded(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          'story of cycle',
                          style: const TextStyle(
                              fontSize: 25.0, fontFamily: 'mermaid'),
                        ),
                        new Text(
                          'news by google',
                          style: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.red,
                              fontFamily: 'mermaid'),
                        ),
                      ],
                    ), 
                  ),
                  new Container(
                    width: 2.0,
                    height: 70.0,
                    decoration: new BoxDecoration(
                      gradient: new LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.white,
                          const Color(0xFFAAAAAA),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(left:5.0, right:5.0),
                     child: new Column(
                      children: <Widget>[
                        new Icon(
                         Icons.favorite_border,
                         color: Colors.red,
                        ),
                        new Text(
                          'loving this?'
                       ),
                      ],
                     ),
                   ),
                ]
              ),
              ],
            ),
          ),
          new Card(
            elevation: 10.0,
            child: new Column(
              children: <Widget>[
                new Image.asset(
                  'assets/cycle.jpg',
                  width: double.infinity,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                new Row(children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: new BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            new BorderRadius.all(const Radius.circular(100.0)),
                      ),
                      child: new Icon(
                        Icons.bookmark,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: new BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            new BorderRadius.all(const Radius.circular(100.0)),
                      ),
                      child: new Icon(
                        Icons.book,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: new BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            new BorderRadius.all(const Radius.circular(100.0)),
                      ),
                      child: new Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  new Expanded(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          'story of cycle',
                          style: const TextStyle(
                              fontSize: 25.0, fontFamily: 'mermaid'),
                        ),
                        new Text(
                          'news by google',
                          style: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.red,
                              fontFamily: 'mermaid'),
                        ),
                      ],
                    ), 
                  ),
                  new Container(
                    width: 2.0,
                    height: 70.0,
                    decoration: new BoxDecoration(
                      gradient: new LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.white,
                          const Color(0xFFAAAAAA),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(left:5.0, right:5.0),
                     child: new Column(
                      children: <Widget>[
                        new Icon(
                         Icons.favorite_border,
                         color: Colors.red,
                        ),
                        new Text(
                          'loving this?'
                       ),
                      ],
                     ),
                   ),
                ]
              ),
              ],
            ),
          ),
          new Card(
            elevation: 10.0,
            child: new Column(
              children: <Widget>[
                new Image.asset(
                  'assets/cycle.jpg',
                  width: double.infinity,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                new Row(children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: new BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            new BorderRadius.all(const Radius.circular(100.0)),
                      ),
                      child: new Icon(
                        Icons.bookmark,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: new BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            new BorderRadius.all(const Radius.circular(100.0)),
                      ),
                      child: new Icon(
                        Icons.book,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: new BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            new BorderRadius.all(const Radius.circular(100.0)),
                      ),
                      child: new Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  new Expanded(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          'story of cycle',
                          style: const TextStyle(
                              fontSize: 25.0, fontFamily: 'mermaid'),
                        ),
                        new Text(
                          'news by google',
                          style: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.red,
                              fontFamily: 'mermaid'),
                        ),
                      ],
                    ), 
                  ),
                  new Container(
                    width: 2.0,
                    height: 70.0,
                    decoration: new BoxDecoration(
                      gradient: new LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.white,
                          const Color(0xFFAAAAAA),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(left:5.0, right:5.0),
                     child: new Column(
                      children: <Widget>[
                        new Icon(
                         Icons.favorite_border,
                         color: Colors.red,
                        ),
                        new Text(
                          'loving this?'
                       ),
                      ],
                     ),
                   ),
                ]
              ),
              ],
            ),
          )
        ]));
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () => runApp(new MyApp()));
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.redAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: Icon(
                          Icons.new_releases,
                          color: Colors.greenAccent,
                          size: 50.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "Infonation",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                      "Welcome to infonation",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
