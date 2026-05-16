import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_response.g.dart';
@JsonSerializable()
class SignupResponse {
  String? message;
  UserData? data;
  bool? status;
  int? code;

  SignupResponse({this.message, this.data, this.status, this.code});

 factory SignupResponse.fromJson(Map<String, dynamic> json) => _$SignupResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SignupResponseToJson(this);
}


@JsonSerializable()
class UserData {
  String? token;
  String? username;

  UserData({this.token, this.username});

 factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}