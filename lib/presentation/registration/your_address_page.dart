import 'package:assignment_one/core/constants.dart';
import 'package:assignment_one/core/field_validator.dart';
import 'package:assignment_one/presentation/widgets/custom_button.dart';
import 'package:assignment_one/presentation/widgets/custom_input_widgets.dart';
import 'package:assignment_one/view_models/address_page_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AddressPage extends GetView<AddressPage> {
  const AddressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AddressPageController());

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Visibility(
            visible: true,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Get.off(context);
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
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
                width: MediaQuery.of(context).size.width,
                child: Form(
                  key: controller.addressPageController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
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
                        onValidate: (value) {
                          if (InputFieldOne(value).isValid()) {
                            return null;
                          } else {
                            return 'Address is required';
                          }
                        },
                        onSave: (value) {},
                        controller: controller.addressController,
                      ),
                      CustomTextField(
                        key: const Key('landmark'),
                        inputType: TextInputType.text,
                        prefixIcon: const Icon(Icons.ten_k_rounded),
                        headingText: '',
                        hintText: 'Locality/Landmark',
                        controller: controller.localityLandmarkController,
                        onSave: (value) {},
                        onValidate: (value) {
                          if (InputFieldOne(value).isValid()) {
                            return null;
                          } else {
                            return 'Locality/Landmark is required';
                          }
                        },
                      ),
                      CustomTextField(
                        key: const Key('city'),
                        inputType: TextInputType.text,
                        prefixIcon: const Icon(Icons.ten_k_rounded),
                        headingText: '',
                        hintText: 'City',
                        onValidate: (value) {},
                        onSave: (value) {},
                        controller: controller.cityController,
                      ),
                      CustomDropdownTextField(
                        key: const Key('state'),
                        headingText: '',
                        listItem: state,
                        hintText: 'Select your state',
                        onSelect: (value) {
                          controller.stateController.text = value;
                        },
                        onValidate: (value) {
                          if (InputFieldOne(value).isValid()) {
                            return null;
                          } else {
                            return 'Please select your state';
                          }
                        },
                        controller: controller.stateController,
                      ),
                      CustomTextField(
                        key: const Key('pin-code'),
                        inputType: TextInputType.number,
                        prefixIcon: const Icon(Icons.ten_k_rounded),
                        headingText: '',
                        hintText: 'Pin Code',
                        onSave: (value) {},
                        onValidate: (value) {
                          if (value.toString().isEmpty ||
                              value.toString().length == 6) {
                            return null;
                          } else {
                            return 'Pin Code must be in 6 Digits';
                          }
                        },
                        controller: controller.pinCodeController,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      AppButtonOne(
                          buttomTitle: 'Submit',
                          onPressed: () {
                            if (controller.saveData()) {}
                          })
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
