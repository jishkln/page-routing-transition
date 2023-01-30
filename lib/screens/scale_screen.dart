import 'package:flutter/material.dart';
import 'package:flutter_page_route_transition/main.dart';
import 'package:flutter_page_route_transition/transitions/scale_route.dart'; 
class ScaleScreen extends StatelessWidget {
  const ScaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
       appBar: AppBar(
        title: const Text("App Bar"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('ScaleTransition'),
          onPressed: () => Navigator.push(context, ScaleRoute(page: const Screen2())),
        ),
      ),
    );
  }
}
