import 'package:flutter/material.dart';

class AuthenField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;

  const AuthenField({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  @override
  _AuthenFieldState createState() => _AuthenFieldState();
}

class _AuthenFieldState extends State<AuthenField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: _obscureText,
      decoration: InputDecoration(
        hintStyle: const TextStyle(color: Colors.blueGrey),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 3,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
        contentPadding: const EdgeInsets.all(16),
        hintText: widget.hintText,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
            color: _obscureText ? Colors.blueGrey : Colors.blue,
          ),
        ),
      ),
    );
  }

  bool isPasswordVisible() {
    return !_obscureText;
  }
}
