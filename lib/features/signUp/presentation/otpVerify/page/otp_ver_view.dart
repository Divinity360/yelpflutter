import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_cubit/features/signUp/presentation/mobile_reg/bloc/mobile_reg_bloc.dart';
import 'package:login_cubit/features/signUp/presentation/otpVerify/viewmodel/cubit/otp_ver_cubit.dart';
import 'package:login_cubit/shared/presentation/widgets/appBar.dart';
import 'package:login_cubit/core/helpers/helpers.dart';
import 'package:login_cubit/shared/presentation/widgets/primaryButton.dart';

class OTPVerifyPage extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OtpVerifyCubit>(
        create: (_) => OtpVerifyCubit(),
        child: BlocConsumer<OtpVerifyCubit, OtpVerifyState>(
          listener: (context, state) {
            if (state.status == OtpVerifyStatus.success) {
              Helpers.showToast(context, state.message!);
            } else if (state.status == OtpVerifyStatus.failed) {
              Helpers.showToast(context, state.message!);
            }
          },
          builder: (context, state) {
            return SafeArea(
              child: Scaffold(
                appBar: CustomAppBar('OTP Verification'),
                body: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: otpController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Enter OTP',
                          ),
                        ),
                      ),
                      PrimaryButton(onTap: () => _onPressed(context))
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }

  void _onPressed(BuildContext context) =>
      context.read<OtpVerifyCubit>().validateOTP(otpController.text);
}
