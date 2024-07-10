import 'package:flutter/material.dart';
import 'package:flutter_package/flutter_package.dart';
import 'package:flutter_package/source/ctext_component.dart';
import 'package:flutter_package/source/custom_button.dart';
import 'package:flutter_package/source/default_screen_loading.dart';
import 'package:flutter_package/source/otp_custom_component/otp_component.dart';
import 'package:flutter_package/utils/constant_utils.dart';

class OtpPageComponent extends StatelessWidget {
  const OtpPageComponent(
      {super.key,
      required this.isLoading,
      required this.enableConfirmButton,
      required this.onConfirmPressed,
      this.confirmButtonLabel,
      required this.onResendCodePressed,
      this.onCodeTyping,
      this.onGetCode});

  final bool isLoading;
  final bool enableConfirmButton;
  final VoidCallback onConfirmPressed;
  final VoidCallback onResendCodePressed;
  final String? confirmButtonLabel;
  final Function(String)? onCodeTyping;
  final Function(String)? onGetCode;

  @override
  Widget build(BuildContext context) {
    return BaseWidgetContainer(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: ConstantUtils.getFullHeight(context) * 0.14,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 16,
                ),
                const CText(
                  text: 'Masukkan kode verifikasi',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(
                  height: 16,
                ),
                OtpComponent(
                  onCodeChanged: onCodeTyping,
                  onSubmit: onGetCode,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CText(
                      text: "Tidak dapat kode? ",
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                    InkWell(
                      onTap: onResendCodePressed,
                      child: const CText(
                        text: "Kirim Ulang",
                        fontSize: 13,
                        fontWeight: FontWeight.w900,
                        decoration: TextDecoration.underline,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, bottom: 51),
              child: CustomButton(
                enableButton: enableConfirmButton,
                onPressed: onConfirmPressed,
                titleButton: confirmButtonLabel ?? 'Verification',
              ),
            ),
          ),
          isLoading ? const DefaultScreenLoading() : const SizedBox(),
        ],
      ),
    );
  }
}
