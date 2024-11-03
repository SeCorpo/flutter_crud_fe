import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String errorMessage = ModalRoute.of(context)!.settings.arguments as String? ?? 'An error occurred';

    return Scaffold(
      appBar: AppBar(title: const Text('Error')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Error', style: TextStyle(fontSize: 24, color: Colors.red)),
            const SizedBox(height: 20),
            Text(errorMessage),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/'),
              child: const Text('Go to Home Page'),
            ),
          ],
        ),
      ),
    );
  }
}
