
import 'package:doc_app_complete_project/core/networking/api_error_handler.dart';
import 'package:doc_app_complete_project/core/networking/api_error_model.dart';
import 'package:doc_app_complete_project/feature/home/data/models/specialization_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';
@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;

  // specialization
  const factory HomeState.specializationLoading() = SpecializationLoading;
  const factory HomeState.specializationSuccess(List<SpecializationsData?>? specializationDataList) = SpecializationSuccess;
  const factory HomeState.specializationFailure(ApiErrorModel? error) = SpecializationFailure;

  // doctors
  const factory HomeState.doctorsSuccess(List<Doctors?>? doctorsDataList) = DoctorsSuccess;
  const factory HomeState.doctorsFailure() = DoctorsFailure;
}
