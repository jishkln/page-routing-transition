import 'package:flutter/material.dart';
import 'package:flutter_page_route_transition/main.dart';
import 'package:flutter_page_route_transition/transitions/slide_route.dart';

class SlideScreen extends StatelessWidget {
  const SlideScreen({super.key});

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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('SlideRightTransition'),
              onPressed: () => Navigator.push(
                  context, SlideRightRoute(page: const Screen2())),
            ),
            ElevatedButton(
              child: const Text('SlideLeftTransition'),
              onPressed: () => Navigator.push(
                  context, SlideLeftRoute(page: const Screen2())),
            ),
            ElevatedButton(
              child: const Text('SlideTopTransition'),
              onPressed: () =>
                  Navigator.push(context, SlideTopRoute(page: const Screen2())),
            ),
            ElevatedButton(
              child: const Text('SlideBottomTransition'),
              onPressed: () => Navigator.push(
                  context, SlideBottomRoute(page: const Screen2())),
            ),
          ],
        ),
      ),
    );
  }
}
