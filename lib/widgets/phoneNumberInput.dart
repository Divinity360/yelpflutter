import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneNumberInput extends StatelessWidget {
  final Function(PhoneNumber phoneNumber) onChanged;

  const PhoneNumberInput({Key? key, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InternationalPhoneNumberInput(
        textStyle: GoogleFonts.poppins(),
        autoFocusSearch: true,
        initialValue: PhoneNumber(isoCode: 'NG', dialCode: '+234'),
        spaceBetweenSelectorAndTextField: 0,
        scrollPadding: const EdgeInsets.all(0.0),
        inputDecoration: InputDecoration(
            hintText: 'Enter number', hintStyle: GoogleFonts.poppins()),
        selectorTextStyle: GoogleFonts.rubik(),
        selectorConfig: const SelectorConfig(
          selectorType: PhoneInputSelectorType.DROPDOWN,
          showFlags: true,
          useEmoji: true,
        ),
        autoValidateMode: AutovalidateMode.disabled,
        onInputChanged: onChanged

        //     (PhoneNumber number) {
        //   setState(() {
        //     phoneNum = number.phoneNumber!;
        //     dialCode = number.dialCode!;
        //   });
        // }

        );
  }
}