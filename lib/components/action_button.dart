import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final MaterialAccentColor buttonColor;
  final String buttonText;
  final VoidCallback? onTap;
  const ActionButton(
      {this.buttonColor = Colors.lightBlueAccent,
      this.buttonText = 'No Text',
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onTap,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonText,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
