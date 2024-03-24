import 'package:flutter/cupertino.dart';
import 'package:login_cubit/core/theme/theme.dart';

class RevealCounterText extends StatelessWidget {
  final String text;
  const RevealCounterText({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Revealing in\n',
        style: AppTheme.displayLargeTextStyle,
        children: <TextSpan>[
          TextSpan(
              text: text,
              style: AppTheme.displayLargeTextStyle
                  .copyWith(
                  fontSize: 70,
                  fontWeight: FontWeight.w900)),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}