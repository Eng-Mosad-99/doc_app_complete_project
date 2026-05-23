import 'package:doc_app_complete_project/core/helper/extension.dart';
import 'package:doc_app_complete_project/core/networking/api_result.dart';
import 'package:doc_app_complete_project/feature/home/data/repo/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../data/models/specialization_response_model.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(HomeState.initial());
  final HomeRepo _homeRepo;

  List<SpecializationsData?>? specializationsList = [];

  void getSpecializations() async {
    emit(const HomeState.specializationLoading());
    final response = await _homeRepo.getSpecializationData();
    response.when(
      success: (specializationsResponseModel) {
        specializationsList =
            specializationsResponseModel.specializationDataList ?? [];

        // getting the doctors list for the first specialization by default.
        getDoctorsList(specializationId: specializationsList?.first?.id);

        emit(
          HomeState.specializationSuccess(
            specializationsResponseModel.specializationDataList,
          ),
        );
      },
      failure: (errorHandler) {
        emit(HomeState.specializationFailure(errorHandler));
      },
    );
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctors?>? doctorsList = getDoctorsListBySpecializationId(
      specializationId,
    );

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsFailure());
    }
  }

  /// returns the list of doctors based on the specialization id
  getDoctorsListBySpecializationId(specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
