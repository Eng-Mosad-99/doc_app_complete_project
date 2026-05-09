import 'package:doc_app_complete_project/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/doc_logo_and_name.dart';
import 'widgets/doctor_image_and_text.dart';
import 'widgets/get_started_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: <Widget>[
                const DocLogoAndName(),
                SizedBox(height: 30.h),
                const DoctorImageAndText(),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: <Widget>[
                      Text('Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.', style: Styles.font13GreyRegular,textAlign: TextAlign.center,),
                      SizedBox(height: 30.h,),
                  const GetStartedButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
