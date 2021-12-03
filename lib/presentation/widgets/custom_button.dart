import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButtonOne extends StatelessWidget {
  final Function() onPressed;
  final String buttomTitle;

  const AppButtonOne(
      {Key? key, required this.onPressed, required this.buttomTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        height: 45.h,
        minWidth: MediaQuery.of(context).size.width,
        color: Colors.blue.shade900,
        onPressed: onPressed,
        child: Text(
          buttomTitle,
          style: TextStyle(color: Colors.white, fontSize: 16.sp),
        ));
  }
}

class AppButtonTwo extends StatelessWidget {
  final Function() onPreviousPressed;
  final Function() onNextPressed;

  const AppButtonTwo(
      {Key? key, required this.onNextPressed, required this.onPreviousPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: MaterialButton(
              height: 45.h,
              color: Colors.white,
              onPressed: onPreviousPressed,
              child: Text(
                'Previous',
                style: TextStyle(color: Colors.black, fontSize: 16.sp),
              )),
        ),
        SizedBox(
          width: 10.w,
        ),
        Expanded(
            child: MaterialButton(
                height: 45.h,
                color: Colors.blue.shade900,
                onPressed: onNextPressed,
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.white, fontSize: 16.sp),
                )))
      ],
    );
  }
}

class CustomRadioButton extends StatelessWidget {
  final int selectedValue;
  final Function(dynamic) onPressed;

  const CustomRadioButton(
      {Key? key, required this.onPressed, required this.selectedValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text('Male'),
        Radio(
          value: 1,
          groupValue: selectedValue,
          activeColor: Colors.blue.shade900,
          onChanged: onPressed,
        ),
        const Text('Female'),
        Radio(
          value: 2,
          groupValue: selectedValue,
          activeColor: Colors.blue.shade900,
          onChanged: onPressed,
        )
      ],
    );
  }
}
