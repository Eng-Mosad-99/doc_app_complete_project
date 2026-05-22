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

  List<SpecializationsData?>? specializationList = [];

  void getSpecializationData() async {
    emit(HomeState.specializationLoading());
    final result = await _homeRepo.getSpecializationData();
    result.when(
      success: (data) {
        specializationList = data.specializationDataList ?? [];
        emit(HomeState.specializationSuccess(specializationList));
      },
      failure: (error) => emit(
        HomeState.specializationFailure(
          error: error.apiErrorModel.message ?? '',
        ),
      ),
    );
  }

  void getDoctorsList({required int specializationId}) async {
    List<Doctors?>? doctorsList = getDoctorsListBySpecializationId(
      specializationId,
    );

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsFailure(error: ErrorHandler.handle('No doctors found')));
    }
  }

  /// returns the list of doctors based on the specialization id
  getDoctorsListBySpecializationId(specializationId) {
    return specializationList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
