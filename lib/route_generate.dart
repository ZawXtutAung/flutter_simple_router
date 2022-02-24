import 'package:flutter/material.dart';
import 'package:flutter_simple_router/main.dart';
import 'package:flutter_simple_router/second_page.dart';

class RouteGenerate {
  static Route<dynamic>? generateRout(RouteSettings settings) {
    final arg = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => HomePage());
      case '/secondpage':
        if (arg is String) {
          return MaterialPageRoute(builder: ((context) => SecondPage()));
        }
        return _errorRoute();

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic>? _errorRoute() {
    return MaterialPageRoute(builder: ((context) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Container(),
      );
    }));
  }
}
