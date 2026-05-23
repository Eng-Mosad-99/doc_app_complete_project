import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/errors_widget.dart';
import '../../../logic/cubit/home_cubit.dart';
import '../../../logic/cubit/home_state.dart';
import 'doctors_list_view.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorsSuccess || current is DoctorsFailure,
      builder: (context, state) {
        return state.maybeWhen(
          doctorsSuccess: (doctorsDataList) {
            return DoctorsListView(doctorsList: doctorsDataList);
          },
          doctorsFailure: () => ErrorsWidget(error: 'An error occurred'),
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}
