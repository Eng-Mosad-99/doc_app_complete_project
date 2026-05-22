import 'package:doc_app_complete_project/feature/home/data/models/specialization_response_model.dart';
import 'package:doc_app_complete_project/feature/home/logic/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'speciality_list_view_item.dart';

class DoctorsSpecialtyListView extends StatefulWidget {
  const DoctorsSpecialtyListView({
    super.key,
    required this.specializationDataList,
  });
  final List<SpecializationsData?> specializationDataList;

  @override
  State<DoctorsSpecialtyListView> createState() =>
      _DoctorsSpecialtyListViewState();
}

class _DoctorsSpecialtyListViewState extends State<DoctorsSpecialtyListView> {
  int selectedSpecializationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        itemCount: widget.specializationDataList.length,

        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedSpecializationIndex = index;
              });
              context.read<HomeCubit>().getDoctorsList(
                specializationId: widget.specializationDataList[index]?.id,
              );
            },
            child: SpecialtyListViewItem(
              specializationsData: widget.specializationDataList[index],
              index: index,
              selectedIndex: selectedSpecializationIndex,
            ),
          );
        },
      ),
    );
  }
}
