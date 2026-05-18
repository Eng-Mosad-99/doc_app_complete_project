import 'package:doc_app_complete_project/feature/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'doctors_list_view_item.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key,  this.doctorsList});
  final List<Doctors?>? doctorsList;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList?.length,
        itemBuilder: (context, index) {
          return DoctorsListViewItem(doctors: doctorsList?[index]);
        },
      ),
    );
  }
}
