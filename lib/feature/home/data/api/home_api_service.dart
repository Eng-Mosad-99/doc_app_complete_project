import 'package:dio/dio.dart';
import 'package:doc_app_complete_project/feature/home/data/api/home_api_constants.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/networking/api_constants.dart';
import '../models/specialization_response_model.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl : ApiConstants.baseUrl)
abstract class  HomeApiService {
  factory HomeApiService(Dio dio , {String baseUrl}) = _HomeApiService;


@GET(HomeApiConstants.specializationEP)
Future<SpecializationsResponseModel> getSpecializationData();

}