import './screens/detail/detail.dart';
import 'package:flutter/material.dart';
import './screens/home/home.dart';

const HomeRoute = "/";
const DetailRoute = "/detail";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      onGenerateRoute: _routes(),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case HomeRoute:
          screen = Home();
          break;
        case DetailRoute:
          screen = Detail(arguments["id"]);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}

