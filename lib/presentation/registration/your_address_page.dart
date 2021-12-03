import 'package:assignment_one/core/constants.dart';
import 'package:assignment_one/presentation/widgets/custom_button.dart';
import 'package:assignment_one/presentation/widgets/custom_input_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({Key? key}) : super(key: key);

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
                    inputType: TextInputType.text,
                    onValidate: (value) {},
                    onSave: (value) {},
                    controller: TextEditingController(),
                  ),
                  CustomTextField(
                    key: const Key('landmark'),
                    inputType: TextInputType.text,
                    prefixIcon: const Icon(Icons.ten_k_rounded),
                    headingText: '',
                    hintText: 'Landmark',
                    controller: TextEditingController(),
                    onSave: (value) {},
                    onValidate: (value) {},
                  ),
                  CustomTextField(
                    key: const Key('city'),
                    inputType: TextInputType.number,
                    prefixIcon: const Icon(Icons.ten_k_rounded),
                    headingText: '',
                    hintText: 'City',
                    onValidate: (value) {},
                    onSave: (value) {},
                    controller: TextEditingController(),
                  ),
                  CustomDropdownTextField(
                    key: const Key('state'),
                    headingText: '',
                    listItem: state,
                    hintText: 'Select your state',
                    onSelect: (value) {},
                    controller: TextEditingController(),
                  ),
                  CustomTextField(
                    key: const Key('pin-code'),
                    inputType: TextInputType.emailAddress,
                    prefixIcon: const Icon(Icons.ten_k_rounded),
                    headingText: '',
                    hintText: 'Pin Code',
                    onSave: (value) {},
                    onValidate: (value) {},
                    controller: TextEditingController(),
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
