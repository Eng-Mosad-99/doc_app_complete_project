import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  int? code;
  String? message;

  ApiErrorModel({this.code, this.message});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}

// @JsonSerializable()
// class ApiErrorModel {
//   final int? code;
//   final String? message;

//   @JsonKey(includeFromJson: false, includeToJson: false)
//   final Map<String, dynamic>? errors;

//   ApiErrorModel({
//     this.code,
//     this.message,
//     this.errors,
//   });

//   factory ApiErrorModel.fromJson(Map<String, dynamic> json) {

//     return ApiErrorModel(
//       code: json['code'] as int?,
//       message: _extractMessage(json),
//       errors: json['data'] as Map<String, dynamic>?,
//     );
//   }

//   Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

//   static String _extractMessage(Map<String, dynamic> json) {

//     final data = json['data'];

//     // لو فيه validation errors
//     if (data is Map<String, dynamic>) {

//       List<String> messages = [];

//       data.forEach((key, value) {

//         if (value is List) {
//           messages.addAll(
//             value.map((e) => e.toString()),
//           );
//         }

//       });

//       if (messages.isNotEmpty) {
//         return messages.join('\n');
//       }
//     }

//     // fallback
//     return json['message']?.toString() ?? 'Unknown Error';
//   }
// }