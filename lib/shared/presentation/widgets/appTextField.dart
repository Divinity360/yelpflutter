import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_cubit/core/theme/theme.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    required this.controller,
    this.hint = '',
    this.inputFormatters,
    this.validator,
  });

  final String hint;
  final TextEditingController controller;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    final appWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: appWidth - 40,
      child: TextFormField(
        key: key,
        controller: controller,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 20.0),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Colors.black, width: 0.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Colors.black, width: 0.5),
          ),
          hintText: hint,
          hintStyle: AppTheme.bodyMediumLightTextStyle
              .copyWith(color: Colors.black.withOpacity(.6)),
        ),
        style: AppTheme.bodyMediumLightTextStyle,
        validator: validator,
      ),
    );
  }
}
