import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_page_route_transition/screens/slide_screen.dart';
import 'package:flutter_page_route_transition/screens/fade_screen.dart';
import 'package:flutter_page_route_transition/screens/random_screen.dart';
import 'package:flutter_page_route_transition/screens/rotation_screen.dart';
import 'package:flutter_page_route_transition/screens/scale_screen.dart';
import 'package:flutter_page_route_transition/screens/size_screen.dart'; 

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page Route Transition',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Screen1(),
    );
  }
}

class Screen1 extends StatelessWidget {
  final Map<String, Widget> screens = {
    'SlideTransition': const SlideScreen(),
    'ScaleTransition': const ScaleScreen(),
    'RotationTransition': const RotationScreen(),
    'SizeTransition': const SizeScreen(),
    'FadeTransition': const FadeScreen(),
    'Random': const RandomScreen(),
  };

    Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: buttons(context),
        ),
      ),
    );
  }

  List<ElevatedButton> buttons(context) {
    List<ElevatedButton> buttons = [];
    screens.forEach(
      (k, v) => buttons.add(
        ElevatedButton(
          child: Text(k),
          onPressed: () => Navigator.push(
              context, CupertinoPageRoute(builder: (context) => v)),
        ),
      ),
    );
    return buttons;
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: ElevatedButton(
          child: const Text('Go Back!'),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
