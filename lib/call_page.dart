import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CallPage extends StatelessWidget {
  final String phoneNumber =
      '+919876543210'; // Replace with the phone number you want to call

  const CallPage({super.key}); // Convert 'key' to a super parameter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'), // Use 'const' keyword
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _makePhoneCall,
          child: const Text('Make a Call'), // Use 'const' keyword
        ),
      ),
    );
  }

  void _makePhoneCall() async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }
}
