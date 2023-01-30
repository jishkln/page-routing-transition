import 'package:flutter/material.dart';
import 'package:flutter_page_route_transition/main.dart';

import '../transitions/fade_route.dart';

class FadeScreen extends StatelessWidget {
  const FadeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar"),
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: ElevatedButton(
          child: const Text('FadeTansition'),
          onPressed: () =>
              Navigator.push(context, FadeRoute(page: const Screen2())),
        ),
      ),
    );
  }
}
