import 'package:flutter/material.dart';
import 'package:flutter_application_2/styles/app_color.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  const AppTextField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        // hintStyle: TextStyle(color: Colors.amber),
        labelText: hint,
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        border: const UnderlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),

        focusedBorder: const UnderlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(color: Colors.transparent),
            ),
        filled: true,
        // fillColor: Colors.white.withOpacity(0.5)
        fillColor: AppColors.fieldColor,
      ),
    );
  }
}
