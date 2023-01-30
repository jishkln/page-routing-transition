import 'package:flutter/material.dart';
import 'package:flutter_page_route_transition/main.dart';
import 'package:flutter_page_route_transition/transitions/size_route.dart'; 
class SizeScreen extends StatelessWidget {
  const SizeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
       appBar: AppBar(
        title: const Text("App Bar"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('SizeTransition'),
          onPressed: () => Navigator.push(context, SizeRoute(page: const Screen2())),
        ),
      ),
    );
  }
}
