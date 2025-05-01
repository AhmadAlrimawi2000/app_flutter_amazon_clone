import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      required this.textInputType,
      this.isPassword = false,
      this.iconData,
      this.validator});

  final String hintText;
  final TextInputType textInputType;
  final bool isPassword;
  final IconData? iconData;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      padding: const EdgeInsets.all(5.0),
      child: TextFormField(
        obscuringCharacter: "*",
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hintText,
          suffix: iconData != null ? Icon(iconData) : null,
          hintStyle: const TextStyle(
            color: Colors.black87,
            // fontSize: 14.0,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24.0),
            borderSide: const BorderSide(color: Colors.grey, width: 0.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24.0),
            borderSide: const BorderSide(color: Colors.grey, width: 0.5),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24.0),
            borderSide: const BorderSide(color: Colors.grey, width: 0.5),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24.0),
            borderSide: const BorderSide(color: Colors.grey, width: 0.5),
          ),
        ),
        keyboardType: textInputType,
        validator: validator,
      ),
    );
  }
}
