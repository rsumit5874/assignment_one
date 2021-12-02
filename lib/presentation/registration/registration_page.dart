import 'package:assignment_one/model/user_model.dart';
import 'package:assignment_one/presentation/registration/your_info_page.dart';
import 'package:assignment_one/presentation/widgets/custom_button.dart';
import 'package:assignment_one/presentation/widgets/custom_input_widgets.dart';
import 'package:assignment_one/view_models/registration_page_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegistrationViewModel());

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Visibility(
            visible: false,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {},
            ),
          ),
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Registration',
            style: TextStyle(fontSize: 24.sp, color: Colors.black),
          ),
        ),
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 40,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(CupertinoIcons.add)),
                    ),
                  ),
                  CustomTextField(
                    numberField: false,
                    key: const Key('first-name'),
                    prefixIcon: const Icon(Icons.ten_k_rounded),
                    headingText: 'First Name*',
                    hintText: 'Enter your first name',
                    onChange: (value) {
                      controller.firstName(value);
                    },
                    onSubmit: (value) {},
                    inputType: TextInputType.text,
                  ),
                  CustomTextField(
                    key: const Key('last-name'),
                    inputType: TextInputType.text,
                    prefixIcon: const Icon(Icons.ten_k_rounded),
                    headingText: 'Last Name*',
                    hintText: 'Enter your last name',
                    onChange: (value) {
                      controller.lastname(value);
                    },
                    onSubmit: (value) {},
                  ),
                  CustomTextField(
                    key: const Key('phone_number*'),
                    inputType: TextInputType.number,
                    prefixIcon: const Icon(Icons.ten_k_rounded),
                    headingText: 'Phone number',
                    hintText: 'Enter your 10 digits phone number ',
                    onChange: (value) {},
                    onSubmit: (value) {},
                  ),
                  CustomTextField(
                    key: const Key('email*'),
                    inputType: TextInputType.emailAddress,
                    prefixIcon: const Icon(Icons.ten_k_rounded),
                    headingText: 'Email*',
                    hintText: 'Your email goes here ',
                    onChange: (value) {},
                    onSubmit: (value) {},
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Text('Gender',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text('Male'),
                      Radio(
                        value: 1,
                        groupValue: 1,
                        activeColor: Colors.blue.shade900,
                        onChanged: (value) {},
                      ),
                      const Text('Female'),
                      Radio(
                        value: 2,
                        groupValue: 1,
                        activeColor: Colors.blue.shade900,
                        onChanged: (value) {},
                      )
                    ],
                  ),
                  CustomPasswordField(
                    key: const Key('password'),
                    prefixIcon: const Icon(Icons.ten_k_rounded),
                    headingText: 'Password',
                    hintText: 'Password',
                    passwordEnable: true,
                    showPassword: () {},
                    onChange: (value) {},
                    onSubmit: (value) {},
                  ),
                  CustomTextField(
                    key: const Key('confirm-password'),
                    inputType: TextInputType.number,
                    prefixIcon: const Icon(Icons.ten_k_rounded),
                    headingText: 'Password',
                    hintText: 'Password',
                    onChange: (value) {},
                    onSubmit: (value) {},
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  AppButtonOne(
                      buttomTitle: 'Next',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const YourInfo()));
                      })
                ],
              ),
            ),
          ),
        ));
  }
}