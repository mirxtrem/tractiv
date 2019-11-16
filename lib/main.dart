import 'package:flutter/material.dart';
import 'package:tractiv/pages/intro_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      title: 'Material App',
      initialRoute: '/',
      routes: <String, WidgetBuilder> {
        '/': (BuildContext context) => IntroPage()
      },
    );
  }
}
