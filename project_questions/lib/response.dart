import 'package:flutter/material.dart';

class Response extends StatelessWidget {
  Response({this.responseText, this.onPressedFunction});

  final String? responseText;
  final void Function()? onPressedFunction;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,
        ),
        onPressed: onPressedFunction,
        child: Text(responseText!),
      ),
    );
  }
}
