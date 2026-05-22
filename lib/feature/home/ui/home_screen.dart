import 'package:doc_app_complete_project/core/helper/spacing.dart';
import 'package:doc_app_complete_project/core/widgets/errors_widget.dart';
import 'package:doc_app_complete_project/feature/home/logic/cubit/home_cubit.dart';
import 'package:doc_app_complete_project/feature/home/logic/cubit/home_state.dart';
import 'package:doc_app_complete_project/feature/home/ui/widgets/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/doctors_bloc_builder.dart';
import 'widgets/doctors_blue_containers.dart';
import 'widgets/doctors_speciality_see_all.dart';
import 'widgets/home_top_bar.dart';
import 'widgets/setup_specializations_and_doctors_bloc_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(20.w, 16.h, 20.w, 28.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const HomeTopBar(),
              verticalSpace(16),
              const DoctorsBlueContainers(),
              verticalSpace(24),
              const DoctorsSpecialtySeeAll(),
              verticalSpace(18),
              SetupSpecializationsAndDoctorsBlocBuilder(),
              verticalSpace(8),
              const DoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
