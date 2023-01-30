import 'package:flutter/material.dart';
import 'package:flutter_page_route_transition/main.dart';
import 'package:flutter_page_route_transition/transitions/rotation_route.dart'; 
class RotationScreen extends StatelessWidget {
  const RotationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
       appBar: AppBar(
        title: const Text("App Bar"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('RotationTansition'),
          onPressed: () =>
              Navigator.push(context, RotationRoute(page: const Screen2())),
        ),
      ),
    );
  }
}
