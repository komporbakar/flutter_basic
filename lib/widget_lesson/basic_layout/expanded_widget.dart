import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Expanded Widget',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: const Row(
            children: [
              Icon(Icons.arrow_back_ios),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'List Checklist',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Icon(
                Icons.check,
                color: Colors.blue,
              )
            ],
          ),
        ));
  }
}
