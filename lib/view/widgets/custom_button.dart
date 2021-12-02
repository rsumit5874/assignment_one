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
        child: Text(
          'Next',
          style: TextStyle(color: Colors.white, fontSize: 16.sp),
        ));
  }
}

class PreviousNextButton extends StatelessWidget {
  final Function() onPreviousPressed;
  final Function() onNextPressed;

  const PreviousNextButton(
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
