import 'package:assignment_one/view/registration/your_address_page.dart';
import 'package:assignment_one/view/widgets/custom_button.dart';
import 'package:assignment_one/view/widgets/custom_input_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class YourInfo extends StatefulWidget {
  const YourInfo({Key? key}) : super(key: key);

  @override
  _YourInfoState createState() => _YourInfoState();
}

class _YourInfoState extends State<YourInfo> {
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
            'Your Info',
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
                  Text(
                    'Educational Info',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                  CustomDropdownTextField(
                    key: const Key('education'),
                    suffixIcon: const Icon(Icons.ten_k_rounded),
                    headingText: 'Education',
                    hintText: 'Select your qualification',
                    onChange: (value) {},
                    onSubmit: (value) {},
                    inputType: TextInputType.text,
                  ),
                  CustomDropdownTextField(
                    key: const Key('passing_year'),
                    suffixIcon: const Icon(Icons.ten_k_rounded),
                    headingText: 'Year of passing*',
                    hintText: 'Enter year of passing',
                    onChange: (value) {},
                    onSubmit: (value) {},
                    inputType: TextInputType.text,
                  ),
                  CustomTextField(
                    key: const Key('grade'),
                    inputType: TextInputType.number,
                    prefixIcon: const Icon(Icons.ten_k_rounded),
                    headingText: 'Grade',
                    hintText: 'Enter your grade OR percentage ',
                    onChange: (value) {},
                    onSubmit: (value) {},
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Professional Info',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                  CustomTextField(
                    key: const Key('experience'),
                    inputType: TextInputType.number,
                    prefixIcon: const Icon(Icons.ten_k_rounded),
                    headingText: 'Experience*',
                    hintText: 'Enter the year of experience',
                    onChange: (value) {},
                    onSubmit: (value) {},
                  ),
                  CustomDropdownTextField(
                    key: const Key('designation'),
                    suffixIcon: const Icon(Icons.ten_k_rounded),
                    headingText: 'Designation*',
                    hintText: 'Select designation',
                    onChange: (value) {},
                    onSubmit: (value) {},
                    inputType: TextInputType.text,
                  ),
                  CustomDropdownTextField(
                    key: const Key('domain'),
                    suffixIcon: const Icon(Icons.ten_k_rounded),
                    headingText: 'Domain*',
                    hintText: 'Select your domain',
                    onChange: (value) {},
                    onSubmit: (value) {},
                    inputType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  AppButtonTwo(
                    key: const Key('previous-next-button'),
                    onNextPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const AddressPage()));
                    },
                    onPreviousPressed: () {
                      Navigator.of(context).pop();

                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
