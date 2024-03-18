import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:login_cubit/core/constants/constants.dart';
import 'package:login_cubit/core/helpers/helpers.dart';
import 'package:login_cubit/features/signUp/presentation/mobile_reg/bloc/mobile_reg_bloc.dart';
import 'package:login_cubit/shared/presentation/widgets/appBar.dart';
import 'package:login_cubit/shared/presentation/widgets/phoneNumberInput.dart';
import 'package:login_cubit/shared/presentation/widgets/primaryButton.dart';

class MobileRegView extends StatefulWidget {
  @override
  _MobileRegViewState createState() => _MobileRegViewState();
}

class _MobileRegViewState extends State<MobileRegView> {
  String phoneNum = '';
  String dialCode = '+234';
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MobileRegBloc(),
      child: BlocConsumer<MobileRegBloc, MobileRegState>(
        listenWhen:(prevState, state) =>  state.status == MobileRegStatus.failed || state.status == MobileRegStatus.success,
        listener: (context, state) {
          if (state.status == MobileRegStatus.success) {
            Navigator.of(context)
                .pushReplacementNamed(Constants.OTP_VERIFY_PAGE);
          } else if (state.status == MobileRegStatus.failed) {
            Helpers.showToast(context, state.message);
          }
        },
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              appBar: CustomAppBar('Input Mobile Phone Number'),
              body: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: PhoneNumberInput(onChanged: (PhoneNumber number) {
                        context
                            .read<MobileRegBloc>()
                            .add(MobileRegEvent.onPhoneNumChanged(number));
                      }),
                    ),
                    PrimaryButton(onTap: () => _onPressed(context))
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _onPressed(BuildContext context) =>
      context.read<MobileRegBloc>().add(MobileRegEvent.onValidateMobileNum());
}
