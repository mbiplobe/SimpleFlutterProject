import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String label;
  final String text;
  final VoidCallback onPressed;
  final Color color;

  const CustomFlatButton({
    super.key,
    required this.label,
    required this.text,
    required this.onPressed,
    this.color = Colors.deepPurple,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            foregroundColor: Colors.blue, // Text color
            textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          child: Text('Log in'),
        ),
      ],
    );
  }
}
