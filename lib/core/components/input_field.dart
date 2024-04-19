import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.title,
    required this.hintText,
    this.obscureText = false,
    this.validator,
    required this.controller,
  });

  final String title;
  final String hintText;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
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
        TextFormField(
          validator: validator,
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
    );
  }
}
