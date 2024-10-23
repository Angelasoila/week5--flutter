import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Challenge',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter UI Challenge'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Welcome Message
            Text(
             'Welcome to the Flutter UI Challenge!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20), // Spacing between widgets

            // Interactive Button
            ElevatedButton(
              onPressed: () {
                // Print a message to the console when clicked
                print('Button Clicked!');
              },
              child: Text('Click Me!'),
            ),
            SizedBox(height: 20), // Spacing between widgets

            // Display an Image
            Image.network('https://tinyurl.com/bdfd544u',
              height: 200, // You can adjust the height as needed
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
