import 'package:flutter/material.dart';
import 'package:flutter_package/source/ccolor_utils.dart';

class CTextInput extends StatelessWidget {
  const CTextInput({
    super.key,
    required this.textController,
    this.labelInput,
    this.suffixIcon,
    this.obscureText,
    this.isError,
    this.errorMsg = "Error",
    this.onTyping,
    this.borderRadius,
    this.borderWidth,
    this.hintText,
    this.width,
    this.height,
    this.filled,
    this.inputBackgroundColors,
    this.enableBorderColors,
    this.errorBorderColors,
    this.focusBorderColors,
    this.floatingLabelBehavior,
    this.enableInput = true,
  });

  final TextEditingController textController;
  final String? labelInput;
  final Widget? suffixIcon;
  final bool? obscureText;
  final bool? isError;
  final String? errorMsg;
  final Function(String)? onTyping;
  final double? borderRadius;
  final double? borderWidth;
  final String? hintText;
  final double? width;
  final double? height;
  final bool? filled;
  final bool? enableInput;
  final Color? enableBorderColors;
  final Color? errorBorderColors;
  final Color? focusBorderColors;
  final Color? inputBackgroundColors;
  final FloatingLabelBehavior? floatingLabelBehavior;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      obscureText: obscureText ?? false,
      onChanged: onTyping,
      enabled: enableInput,
      decoration: InputDecoration(
        fillColor: inputBackgroundColors,
        filled: filled,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
          borderSide: BorderSide(
            color: enableBorderColors ?? ColorUtils.titleTextColor,
            width: borderWidth ?? 2.0,
          ),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.grey,
        ),
        errorText: isError ?? false ? errorMsg : null,
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
          borderSide: BorderSide(
            color: errorBorderColors ?? ColorUtils.errorColor,
            width: borderWidth ?? 2.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
          borderSide: BorderSide(
            color: errorBorderColors ?? ColorUtils.errorColor,
            width: borderWidth ?? 2.0,
          ),
        ),
        suffixIcon: suffixIcon,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
          borderSide: BorderSide(
            color: focusBorderColors ?? ColorUtils.titleTextColor,
            width: borderWidth ?? 2.0,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
          borderSide: BorderSide(
            color: focusBorderColors ?? ColorUtils.titleTextColor,
            width: borderWidth ?? 2.0,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
            horizontal: width ?? 16.0, vertical: height ?? 8.0),
        labelStyle: TextStyle(
          fontSize: 16,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          color: ColorUtils.titleTextColor.withOpacity(0.3),
        ),
        floatingLabelStyle: TextStyle(
            fontSize: 16,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            color: isError ?? false
                ? ColorUtils.errorColor
                : ColorUtils.titleTextColor),
        label: Text(
          labelInput ?? "",
        ),
        floatingLabelBehavior: floatingLabelBehavior,
      ),
    );
  }
}
