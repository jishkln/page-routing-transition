import 'package:flutter/material.dart';
import 'package:flutter_page_route_transition/main.dart';
import 'package:flutter_page_route_transition/transitions/enter_exit_route.dart';
import 'package:flutter_page_route_transition/transitions/scale_rotate_route.dart'; 
class RandomScreen extends StatelessWidget {
  const RandomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
       appBar: AppBar(
        title: const Text("App Bar"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('EnterExitSlideTransition'),
              onPressed: () => Navigator.push(context,
                  EnterExitRoute(exitPage: this, enterPage: const Screen2())),
            ),
            ElevatedButton(
              child: const Text('ScaleRotateTransition'),
              onPressed: () =>
                  Navigator.push(context, ScaleRotateRoute(page: const Screen2())),
            ),
          ],
        ),
      ),
    );
  }
}
