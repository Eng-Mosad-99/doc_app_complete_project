import 'package:doc_app_complete_project/feature/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'doctors_speciality_list_view_item.dart';

class DoctorsSpecialtyListView extends StatelessWidget {
  const DoctorsSpecialtyListView({super.key, required this.specializationDataList});
final List<SpecializationsData?> specializationDataList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        itemCount: specializationDataList.length,
        
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return DoctorsSpecialityListViewItem(specializationsData: specializationDataList[index], index: index,);
        },
      ),
    );
  }
}
