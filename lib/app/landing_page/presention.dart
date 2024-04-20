import 'package:ai_notes/app/login/presention.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  showAuthDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return const Login();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Notes'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showAuthDialog(context);
          },
          child: const Text('Login'),
        ),
      ),
    );
  }
}
