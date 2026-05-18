import 'package:doc_app_complete_project/core/networking/api_result.dart';
import 'package:doc_app_complete_project/feature/home/data/repo/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(HomeState.initial());
  final HomeRepo _homeRepo;

  void getSpecializationData() async {
    emit(HomeState.specializationLoading());
    final result = await _homeRepo.getSpecializationData();
    result.when(
      success: (data) => emit(HomeState.specializationSuccess(data)),
      failure: (error) => emit(
        HomeState.specializationFailure(
          error: error.apiErrorModel.message ?? '',
        ),
      ),
    );
  }
}
