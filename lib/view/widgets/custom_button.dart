import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NextButton extends StatelessWidget {
  final Function() onPressed;

  const NextButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        height: 45.h,
        minWidth: MediaQuery.of(context).size.width,
        color: Colors.blue.shade900,
        onPressed: onPressed,
        child: const Text(
          'Next',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ));
  }
}
