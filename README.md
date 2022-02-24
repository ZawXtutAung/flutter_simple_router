# flutter_simple_router

## Getting Started
- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)
[online documentation](https://flutter.dev/docs)




 This Code is Main Class
-------------------------

```dart
//Todo Simple Rout
 Navigator.of(context).pushNamed('/secondpage', arguments: 'Hello Second Page'); 
 Simple Routes Code => 
 routes: {'/secondpage': (context) => SecondPage()},

//TODO GenerateRoute
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      onGenerateRoute: RouteGenerate.generateRout,
    );
  }
}
 ```
RouteGenerate Class
-------------------
 ```dart
   static Route<dynamic>? generateRout(RouteSettings settings) {
    final arg = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => HomePage());
      case '/secondpage':
        if (arg is String) {
          return MaterialPageRoute(builder: ((context) => SecondPage()));
        }
    }
  }
 ```
![Ok!](https://myoctocat.com/assets/images/base-octocat.svg)
# flutter_simple_router
