import 'package:flutter/material.dart';
// import 'package:appcenter/appcenter.dart';
// import 'package:appcenter_analytics/appcenter_analytics.dart';
// import 'package:appcenter_crashes/appcenter_crashes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_appcenter_bundle/flutter_appcenter_bundle.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

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

  void initAppCenter() async {
    // final ios = defaultTargetPlatform == TargetPlatform.iOS;
    // var app_secret = ios? "3d13bf2f-e2ba-4e6c-8424-1f06c03ea3c9" : "b9d311dc-c4c6-4aa8-9c82-f9932d976c6a";
    // await AppCenter.start(app_secret, [AppCenterAnalytics.id, AppCenterCrashes.id]);
    await AppCenter.startAsync(
        appSecretAndroid: 'b9d311dc-c4c6-4aa8-9c82-f9932d976c6a',
        appSecretIOS: '3d13bf2f-e2ba-4e6c-8424-1f06c03ea3c9');
  }

  @override
  void initState() {
    super.initState();
    initAppCenter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.ac_unit),
      ),
    );
  }
}
