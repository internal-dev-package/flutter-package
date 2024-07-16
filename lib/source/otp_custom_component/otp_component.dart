import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_package/utils/ccolor_utils.dart';

class OtpComponent extends StatelessWidget {
  const OtpComponent({super.key, this.onCodeChanged, this.onSubmit});
  final Function(String)? onCodeChanged;
  final Function(String verificationCode)? onSubmit;

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      numberOfFields: 4,
      showFieldAsBox: true,
      onCodeChanged: onCodeChanged,
      onSubmit: onSubmit,
      borderColor: CColorUtils.primaryColors,
      enabledBorderColor: CColorUtils.borderColors,
      focusedBorderColor: CColorUtils.borderColors,
      borderRadius: const BorderRadius.all(
        Radius.circular(6),
      ),
      fieldWidth: 48,
      fieldHeight: 48,
      contentPadding: const EdgeInsets.symmetric(),
    );
  }
}
