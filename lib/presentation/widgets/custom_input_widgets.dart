import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String headingText;
  final String hintText;
  final Widget prefixIcon;
  final TextInputType inputType;
  final Function(String) onChange;
  final Function(String) onSubmit;
  final bool numberField;
  final TextEditingController? controller;

  const CustomTextField({
    Key? key,
    required this.headingText,
    this.controller,
    required this.hintText,
    required this.prefixIcon,
    required this.inputType,
    required this.onChange,
    required this.onSubmit,
    this.numberField = false,
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
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.r),
            border: Border.all(color: Colors.blue.shade900, width: 1.w),
          ),
          width: MediaQuery.of(context).size.width,
          child: TextField(
            maxLines: 1,
            maxLength: numberField == true ? null : 10,
            textInputAction: TextInputAction.next,
            keyboardType: inputType,
            onSubmitted: onSubmit,
            autofocus: false,
            onChanged: onChange,
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              counterText: '',
              contentPadding:
                  EdgeInsets.symmetric(vertical: 16.h, horizontal: 8.h),
              prefixIcon: prefixIcon,
              border: InputBorder.none,
              hintText: hintText,
            ),
            controller: controller,
          ),
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
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.r),
            border: Border.all(color: Colors.blue.shade900, width: 1.w),
          ),
          width: MediaQuery.of(context).size.width,
          child: TextField(
            maxLines: 1,
            maxLength: numberField == true ? null : 10,
            textInputAction: TextInputAction.next,
            keyboardType: inputType,
            onSubmitted: onSubmit,
            autofocus: false,
            textAlign: TextAlign.left,
            onChanged: onChange,
            decoration: InputDecoration(
              counterText: '',
              contentPadding:
                  EdgeInsets.symmetric(vertical: 16.h, horizontal: 8.w),
              suffixIcon: suffixIcon,
              border: InputBorder.none,
              hintText: hintText,
            ),
            controller: controller,
          ),
        ),
      ],
    );
  }
}

class CustomPasswordField extends StatelessWidget {
  final String headingText;
  final String hintText;
  final Widget prefixIcon;
  final Function(String) onChange;
  final Function(String) onSubmit;
  final Function() showPassword;
  final bool passwordEnable;
  final TextEditingController? controller;

  const CustomPasswordField({
    Key? key,
    required this.headingText,
    required this.hintText,
    required this.prefixIcon,
    required this.onChange,
    required this.onSubmit,
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
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.r),
            border: Border.all(color: Colors.blue.shade900, width: 1.w),
          ),
          width: MediaQuery.of(context).size.width,
          child: TextField(
            maxLines: 1,
            obscureText: passwordEnable,
            obscuringCharacter: "*",
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.number,
            onSubmitted: onSubmit,
            autofocus: false,
            onChanged: onChange,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 16.h, horizontal: 8.w),
              suffixIcon: IconButton(
                icon: Icon(
                  // Based on passwordVisible state choose the icon
                  passwordEnable ? Icons.visibility : Icons.visibility_off,
                  color: Colors.blue.shade900,
                ),
                onPressed: showPassword,
              ),
              counterText: '',
              prefixIcon: prefixIcon,
              border: InputBorder.none,
              hintText: hintText,
            ),
            controller: controller,
          ),
        ),
      ],
    );
  }
}
