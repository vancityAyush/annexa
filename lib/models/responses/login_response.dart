import 'package:json_annotation/json_annotation.dart';

import '../login_data.dart';
import 'base_response.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse extends BaseResponse {
  final LoginData data;
  final String? walletBalance;

  LoginResponse({
    required int status,
    required String messages,
    required String error,
    required this.data,
    required this.walletBalance,
  }) : super(status: status, messages: messages, error: error);

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  /// Connect the generated [_$ResponseToJson] function to the `toJson` method.
  @override
  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
