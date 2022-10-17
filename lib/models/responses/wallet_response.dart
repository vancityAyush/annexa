import 'package:json_annotation/json_annotation.dart';

import '../wallet_data.dart';
import 'base_response.dart';

part 'wallet_response.g.dart';

@JsonSerializable()
class WalletResponse extends BaseResponse {
  final List<WalletData> data;
  final String Wallet_Balance;

  WalletResponse({
    required int status,
    required String messages,
    required String error,
    required this.data,
    required this.Wallet_Balance,
  }) : super(status: status, messages: messages, error: error);

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory WalletResponse.fromJson(Map<String, dynamic> json) =>
      _$WalletResponseFromJson(json);

  /// Connect the generated [_$ResponseToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$WalletResponseToJson(this);
}
