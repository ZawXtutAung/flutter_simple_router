import 'package:flutter/material.dart';
import 'package:flutter_simple_router/route_generate.dart';
import 'package:flutter_simple_router/second_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // home: HomePage(),
      initialRoute: '/',
      //ToDo Simple Routes Code => routes: {'/secondpage': (context) => SecondPage()},

      //Todo GenerateRoute
      onGenerateRoute: RouteGenerate.generateRout,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text('Next'),
            onPressed: () {
              Navigator.of(context)
                  .pushNamed('/secondpage', arguments: 'Hello Second Page');
            },
          ),
        ),
      ),
    );
  }
}
