import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField(
      {super.key,
      required this.title,
      required this.hintText,
      this.obscureText = false});

  final String title;
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            keyboardType: TextInputType.emailAddress,
            style: const TextStyle(fontSize: 18),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(15),
              hintText: hintText,
              border: const OutlineInputBorder(),
            ),
            obscureText: obscureText,
          ),
        ],
      ),
    );
  }
}
