import 'package:doc_app_complete_project/core/helper/spacing.dart';
import 'package:doc_app_complete_project/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsBlueContainers extends StatelessWidget {
  const DoctorsBlueContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            height: 165.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/container_Bg.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(24.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book and\nschedule with\nnearest doctor',
                  style: Styles.font17WhiteMedium,
                ),
                verticalSpace(15),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(48.r),
                      ),
                    ),
                    child: Text('Find Nearby', style: Styles.font12BlueRegular),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 20.w,
            top: -35.h,
            child: ClipRect(
              child: Align(
                alignment: Alignment.topCenter,
                heightFactor: 0.9,
                child: Image.asset(
                  'assets/images/home_doctor_image.png',
                  height: 220.h,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
