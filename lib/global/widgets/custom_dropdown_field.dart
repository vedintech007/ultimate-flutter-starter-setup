// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_setup/global/utils/size_config.dart';

class CustomDropDownField extends StatefulWidget {
  const CustomDropDownField({
    super.key,
    required this.listData,
    required this.initialText,
    required this.label,
    this.value,
    required this.onChanged,
    this.showValideMessage = false,
    this.validator,
  });

  final List listData;
  final String label;
  final String initialText;

  /// This is an example of how to set this value
  final Object? value;
  final Function(Object?)? onChanged;
  final bool? showValideMessage;
  final String? validator;

  @override
  State<CustomDropDownField> createState() => _CustomDropDownFieldState();
}

class _CustomDropDownFieldState extends State<CustomDropDownField> {
  /// Am trying to create a validator function
  /// its kind of tough to implement tho
  /// so currently on hold, trying to figure it out
  String? isValueSelected;

  validateMessage() {
    setState(() {
      isValueSelected = widget.validator;
    });
  }

  @override
  Widget build(BuildContext context) {
    validateMessage();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyle(color: const Color(0xFF2A2F5F), fontSize: getProportionateScreenWidth(12), fontWeight: FontWeight.w600),
        ),
        heightSpace(8),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(2),
            border: Border.all(width: 1, color: const Color(0xFFE2E8F0)),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton2(
              hint: Text(
                widget.initialText,
                style: const TextStyle(color: Color(0xFFD1D1D6), fontSize: 14),
              ),
              items: widget.listData
                  .map(
                    (item) => DropdownMenuItem<String>(
                        value: item,
                        child: Row(
                          children: [
                            Text(
                              item,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )),
                  )
                  .toList(),
              value: widget.value,
              onChanged: widget.onChanged,
              buttonHeight: 33,
              buttonWidth: MediaQuery.of(context).size.width,
              itemHeight: 40,
              buttonElevation: 1,
              itemPadding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              buttonPadding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              // icon: SvgPicture.asset(
              //   "assets/icons/chevron-down-circle.svg",
              //   height: getProportionateScreenHeight(20),
              //   width: getProportionateScreenWidth(20),
              // ),
            ),
          ),
        ),
        heightSpace(7),
        isValueSelected == null || isValueSelected == "" || isValueSelected == widget.initialText
            ? Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  isValueSelected ?? "",
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 206, 25, 12),
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
