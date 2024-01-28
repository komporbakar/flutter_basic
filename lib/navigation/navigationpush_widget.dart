import 'package:flutter/material.dart';
import 'package:flutter_basic_widget/navigation/navigationpop_widget.dart';

class NavigationPushWidget extends StatelessWidget {
  const NavigationPushWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Flutter Navigation',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const NavigationPopWidget();
                }));
              },
              child: const Text('Go to next page'),
            )
          ],
        ),
      ),
    );
  }
}
