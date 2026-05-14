import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response.g.dart';
@JsonSerializable()
class LoginResponse {
  String? message;
  UserData? data;
  bool? status;
  int? code;

  LoginResponse({this.message, this.data, this.status, this.code});

 factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}


@JsonSerializable()
class UserData {
  String? token;
  String? username;

  UserData({this.token, this.username});

 factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}