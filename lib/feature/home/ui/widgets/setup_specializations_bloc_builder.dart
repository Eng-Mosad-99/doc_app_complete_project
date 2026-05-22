import 'package:doc_app_complete_project/feature/home/ui/widgets/specialization_list/speciality_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/errors_widget.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../logic/cubit/home_cubit.dart';
import '../../logic/cubit/home_state.dart';
import 'doctors_list/doctors_shimmer_loading.dart';
import 'specialization_list/specialty_list_view.dart';

class SetupSpecializationsBlocBuilder extends StatelessWidget {
  const SetupSpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationLoading ||
          current is SpecializationSuccess ||
          current is SpecializationFailure,
      builder: (context, state) {
        return state.maybeWhen(
          specializationLoading: () => setupLoading(),
          specializationSuccess: (data) {
            return DoctorsSpecialtyListView(specializationDataList: data ?? []);
          },
          specializationFailure: (error) => ErrorsWidget(error: error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  /// shimmer loading for specializations and doctors
  Widget setupLoading() {
    return Expanded(
      child: Column(
        children: [
          const SpecialityShimmerLoading(),
          verticalSpace(8),
          const DoctorsShimmerLoading(),
        ],
      ),
    );
  }
}
