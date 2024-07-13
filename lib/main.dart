import 'package:flutter/material.dart';
import 'call_page.dart';

void main() {
  runApp(const MyApp()); // Use 'const' keyword
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Convert 'key' to a super parameter

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(), // Use 'const' keyword
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key}); // Convert 'key' to a super parameter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'), // Use 'const' keyword
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      const CallPage()), // Use 'const' keyword
            );
          },
          child: const Text('Contact us'), // Use 'const' keyword
        ),
      ),
    );
  }
}
