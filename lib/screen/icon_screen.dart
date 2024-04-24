import 'package:flutter/material.dart';

class IconScreen extends StatelessWidget {
  const IconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.call),
                  SizedBox(
                      height: 8.0), // Adding some space between icon and text
                  Text('Call'),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.directions),
                  SizedBox(
                      height: 8.0), // Adding some space between icon and text
                  Text('Route'),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.share),
                  SizedBox(
                      height: 8.0), // Adding some space between icon and text
                  Text('Share'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
