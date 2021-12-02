import 'package:assignment_one/view/widgets/custom_button.dart';
import 'package:assignment_one/view/widgets/custom_input_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Visibility(
            visible: true,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Your Address',
            style: TextStyle(fontSize: 24.sp, color: Colors.black),
          ),
        ),
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextField(
                    key: const Key('address'),
                    prefixIcon: const Icon(Icons.ten_k_rounded),
                    headingText: '',
                    hintText: 'Address',
                    onChange: (value) {},
                    onSubmit: (value) {},
                    inputType: TextInputType.text,
                  ),
                  CustomTextField(
                    key: const Key('landmark'),
                    inputType: TextInputType.text,
                    prefixIcon: const Icon(Icons.ten_k_rounded),
                    headingText: '',
                    hintText: 'Landmark',
                    onChange: (value) {},
                    onSubmit: (value) {},
                  ),
                  CustomTextField(
                    key: const Key('city'),
                    inputType: TextInputType.number,
                    prefixIcon: const Icon(Icons.ten_k_rounded),
                    headingText: '',
                    hintText: 'City',
                    onChange: (value) {},
                    onSubmit: (value) {},
                  ),
                  CustomDropdownTextField(
                    key: const Key('education'),
                    suffixIcon: const Icon(Icons.ten_k_rounded),
                    headingText: '',
                    hintText: 'Select your qualification',
                    onChange: (value) {},
                    onSubmit: (value) {},
                    inputType: TextInputType.text,
                  ),
                  CustomTextField(
                    key: const Key('pin-code'),
                    inputType: TextInputType.emailAddress,
                    prefixIcon: const Icon(Icons.ten_k_rounded),
                    headingText: '',
                    hintText: 'Pin Code',
                    onChange: (value) {},
                    onSubmit: (value) {},
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  AppButtonOne(buttomTitle: 'Submit', onPressed: () {})
                ],
              ),
            ),
          ),
        ));
  }
}
