import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String headingText;
  final String hintText;
  final Widget prefixIcon;
  final TextInputType inputType;
  final dynamic onValidate;
  final Function(String?) onSave;
  final TextEditingController controller;

  const CustomTextField({
    Key? key,
    required this.headingText,
    required this.controller,
    required this.hintText,
    required this.prefixIcon,
    required this.inputType,
    required this.onValidate,
    required this.onSave,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10.h,
        ),
        Text(
          headingText,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          maxLines: 1,
          maxLength: inputType != TextInputType.number ? null : 10,
          textInputAction:
              headingText == 'Email*' || headingText == 'Confirm Password*'
                  ? TextInputAction.done
                  : TextInputAction.next,
          keyboardType: inputType,
          onSaved: onSave,
          autofocus: false,
          textAlign: TextAlign.left,
          validator: onValidate,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            counterText: '',
            contentPadding:
                EdgeInsets.symmetric(vertical: 18.h, horizontal: 8.h),
            prefixIcon: prefixIcon,
            // border: InputBorder.none,
            hintText: hintText,
          ),
          controller: controller,
        ),
      ],
    );
  }
}

class CustomPasswordField extends StatelessWidget {
  final String headingText;
  final String hintText;
  final Widget prefixIcon;
  final dynamic onValidate;
  final Function(String?) onSave;
  final Function() showPassword;
  final bool passwordEnable;
  final TextEditingController? controller;

  const CustomPasswordField({
    Key? key,
    required this.headingText,
    required this.hintText,
    required this.prefixIcon,
    required this.onValidate,
    required this.onSave,
    required this.showPassword,
    required this.passwordEnable,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 5.h,
        ),
        Text(
          headingText,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5.h,
        ),
        TextFormField(
          maxLines: 1,
          obscureText: passwordEnable == true ? false : true,
          obscuringCharacter: "*",
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.text,
          validator: onValidate,
          autofocus: false,
          onSaved: onSave,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            contentPadding:
                EdgeInsets.symmetric(vertical: 18.h, horizontal: 8.w),
            suffixIcon: IconButton(
              icon: Icon(
                // Based on passwordVisible state choose the icon
                passwordEnable ? Icons.visibility : Icons.visibility_off,
                color: Colors.blue.shade900,
              ),
              onPressed: showPassword,
            ),
            prefixIcon: prefixIcon,
            hintText: hintText,
          ),
          controller: controller,
        ),
      ],
    );
  }
}

class CustomDropdownTextField extends StatelessWidget {
  final String headingText;
  final String hintText;
  final Widget suffixIcon;
  final TextInputType inputType;
  final Function(String) onChange;
  final Function(String) onSubmit;
  final bool numberField;
  final TextEditingController? controller;

  const CustomDropdownTextField({
    Key? key,
    required this.headingText,
    required this.hintText,
    required this.suffixIcon,
    required this.inputType,
    required this.onChange,
    required this.onSubmit,
    this.numberField = false,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10.h,
        ),
        Text(
          headingText,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10.h,
        ),
        TextField(
          maxLines: 1,
          maxLength: numberField == true ? null : 10,
          textInputAction: TextInputAction.next,
          keyboardType: inputType,
          onSubmitted: onSubmit,
          autofocus: false,
          textAlign: TextAlign.left,
          onChanged: onChange,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            counterText: '',
            contentPadding:
                EdgeInsets.symmetric(vertical: 18.h, horizontal: 8.w),
            suffixIcon: suffixIcon,
            hintText: hintText,
          ),
          controller: controller,
        ),
      ],
    );
  }
}
