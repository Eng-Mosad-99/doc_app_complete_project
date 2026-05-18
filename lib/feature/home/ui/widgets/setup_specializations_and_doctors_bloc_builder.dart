import 'package:doc_app_complete_project/core/helper/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/errors_widget.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../logic/cubit/home_cubit.dart';
import '../../logic/cubit/home_state.dart';
import 'doctors_list_view.dart';
import 'doctors_specialty_list_view.dart';

class SetupSpecializationsAndDoctorsBlocBuilder extends StatelessWidget {
  const SetupSpecializationsAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationLoading ||
          current is SpecializationSuccess ||
          current is SpecializationFailure,
      builder: (context, state) {
        return state.maybeWhen(
          specializationLoading: () => LoadingWidget(),
          specializationSuccess: (data) {
            var specializationList = data.specializationDataList;
            return Expanded(
              child: Column(
                children: [
                  DoctorsSpecialtyListView(
                    specializationsData: specializationList ?? [],
                  ),
                  verticalSpace(8),
                  DoctorsListView(
                    doctorsList: specializationList?[0].doctorsList,
                  ),
                ],
              ),
            );
          },
          specializationFailure: (error) => ErrorsWidget(error: error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
