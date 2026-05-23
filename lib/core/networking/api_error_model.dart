import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  int? code;
  String? message;

  @JsonKey(name: 'data')
  dynamic errors;

  ApiErrorModel({this.code, this.message, this.errors});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  /// Returns all error messages as one string
  String getAllErrorMessages() {
    if (errors == null || (errors is List && (errors as List).isEmpty)) {
      return message ?? "Unknown Error occurred";
    }

    if (errors is Map<String, dynamic>) {
      final errorMessage = (errors as Map<String, dynamic>).entries
          .map((entry) {
            final value = entry.value;

            if (value is List) {
              return value.join(', ');
            }

            return value.toString();
          })
          .join('\n');

      return errorMessage;
    }

    if (errors is List) {
      if ((errors as List).isEmpty) {
        return message ?? "Unknown Error occurred";
      }

      return (errors as List).join('\n');
    }

    return message ?? "Unknown Error occurred";
  }
}
