import 'package:flutter/material.dart';
import 'loading.dart';
import 'app.dart';
import 'common/barcode_scanner.dart';
import 'common/locate_city.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mDefaultTheme,
        routes: <String, WidgetBuilder> {
          "app": (context) => new App(),
          "scan_bar_code": (context) => new ScannerMainPage(),
          "locate_city": (context) => new LocateCityMainPage(),
        },
        home: new LoadingPage(),
        );
  }
}

final ThemeData mDefaultTheme = new ThemeData(
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Color(0xFFEBEBEB),
  cardColor: Colors.blue,
);