import 'package:doc_app_complete_project/core/networking/api_error_handler.dart';
import 'package:doc_app_complete_project/core/networking/api_result.dart';
import 'package:doc_app_complete_project/feature/home/data/api/home_api_service.dart';
import 'package:doc_app_complete_project/feature/home/data/models/specialization_response_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;
  HomeRepo(this._homeApiService);

  Future<ApiResult<SpecializationsResponseModel>> getSpecializationData() async {
    try {
      final response = await _homeApiService.getSpecializationData();
      return ApiResult.success(response);
    } catch (e) {
      print(e);
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
