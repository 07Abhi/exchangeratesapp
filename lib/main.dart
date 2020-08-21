import 'package:provider/provider.dart';

import 'pages/homepage.dart';
import 'package:exchangeapp/thememanager/darkmode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeManager(),
      child: Consumer<ThemeManager>(
        builder: (context, data, _) => MaterialApp(
          theme: data.themeInfo
              ? ThemeData.dark().copyWith()
              : ThemeData(
                  primaryColor: Colors.indigo,
                  accentColor: Colors.pink,
                  fontFamily: 'Ubuntu'),
          home: MyHomePage(),
        ),
      ),
    );
  }
}
