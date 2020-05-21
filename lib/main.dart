import 'package:flutter/material.dart';
import 'package:catelogged/pages/signup.dart';
import 'package:catelogged/pages/signin.dart';
import 'package:catelogged/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CateLogged',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        accentColor: Colors.indigoAccent[400],
        accentColorBrightness: Brightness.light,
        accentIconTheme: IconThemeData(color: Colors.blueGrey[700]),
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.blueGrey[900]),
          bodyText2: TextStyle(color: Colors.blueGrey[800])
        ),

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignUp(),
    );
  }
}

//Icons made by <a href="https://www.flaticon.com/authors/gregor-cresnar" title="Gregor Cresnar">Gregor Cresnar</a> from <a href="https://www.flaticon.com/" title="Flaticon"> www.flaticon.com</a>