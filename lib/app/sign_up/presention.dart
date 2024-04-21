import 'package:ai_notes/app/login/presention.dart';
import 'package:ai_notes/core/auth/auth.dart';
import 'package:ai_notes/core/auth/validattion.dart';
import 'package:ai_notes/core/components/input_field.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  _submitForm() async {
    if (!_formKey.currentState!.validate()) return;
    String result = await signUp(
        _userNameController.text,
        _emailController.text,
        _passwordController.text,
        _confirmPasswordController.text);
    notfiUser(result);
  }

  void notfiUser(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.background,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      title: Column(
        children: [
          const Text(
            'Create an account',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Already have an account?',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(width: 5),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  showDialog(context: context, builder: (_) => const Login());
                },
                child: const MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputField(
              validator: validateUserName,
              controller: _userNameController,
              title: 'Username',
              hintText: 'Enter your username',
            ),
            const SizedBox(height: 10),
            InputField(
              validator: validateEmail,
              controller: _emailController,
              title: 'Email',
              hintText: 'Enter your email',
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 240,
                  child: InputField(
                    controller: _passwordController,
                    validator: validatePassword,
                    title: 'password',
                    hintText: 'Enter your password',
                    obscureText: true,
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: 240,
                  child: InputField(
                    validator: validateConfirmPassword,
                    controller: _confirmPasswordController,
                    title: 'confirm password',
                    hintText: 'Enter your password',
                    obscureText: true,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        Column(
          children: [
            ElevatedButton(
              // TODO
              onPressed: () => _submitForm(),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
                minimumSize: const Size(500, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              // TODO
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                foregroundColor: Theme.of(context).colorScheme.onSecondary,
                minimumSize: const Size(500, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
              child: const Text(
                'Sign Up with Google',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
