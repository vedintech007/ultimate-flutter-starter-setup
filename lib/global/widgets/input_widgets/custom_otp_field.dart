import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project_setup/global/helpers/filters.dart';
import 'package:flutter_project_setup/global/themes/pinput_theme.dart';
import 'package:pinput/pinput.dart';

class CustomOtpField extends StatelessWidget {
  const CustomOtpField({
    super.key,
    this.validator,
    this.onChanged,
    this.onCompleted,
    this.onSubmitted,
    this.onTap,
    this.inputFormatters,
    this.androidSmsAutofillMethod,
    this.autofocus,
    this.controller,
    this.pinputAutovalidateMode,
    this.enabled,
    this.listenForMultipleSmsOnAndroid,
    this.showCursor,
    this.readOnly,
    this.focusNode,
  });

  final String? Function(String?)? validator;
  final Function(String?)? onChanged;
  final Function(String?)? onCompleted;
  final Function(String?)? onSubmitted;
  final Function()? onTap;
  final List<TextInputFormatter>? inputFormatters;
  final AndroidSmsAutofillMethod? androidSmsAutofillMethod;
  final bool? autofocus;
  final bool? listenForMultipleSmsOnAndroid;
  final bool? enabled;
  final bool? showCursor;
  final bool? readOnly;
  final TextEditingController? controller;
  final PinputAutovalidateMode? pinputAutovalidateMode;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return Pinput(
      controller: controller,
      defaultPinTheme: CustomPinPutTheme.defaultPinTheme,
      focusedPinTheme: CustomPinPutTheme.focusedPinTheme,
      submittedPinTheme: CustomPinPutTheme.submittedPinTheme,
      inputFormatters: inputFormatters ?? [numberFiltering()],
      validator: validator,
      pinputAutovalidateMode: pinputAutovalidateMode ?? PinputAutovalidateMode.onSubmit,
      showCursor: showCursor ?? true,
      enabled: enabled ?? true,
      autofocus: autofocus ?? true,
      readOnly: readOnly ?? false,
      focusNode: focusNode,
      androidSmsAutofillMethod: androidSmsAutofillMethod ?? AndroidSmsAutofillMethod.none,
      listenForMultipleSmsOnAndroid: listenForMultipleSmsOnAndroid ?? false,
      onChanged: onCompleted,
      onCompleted: onCompleted,
      onSubmitted: onSubmitted,
      onTap: onTap,
    );
  }
}
