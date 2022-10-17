import 'package:json_annotation/json_annotation.dart';

import '../currency_data.dart';
import 'base_response.dart';

part 'currency_response.g.dart';

@JsonSerializable()
class CurrencyResponse extends BaseResponse {
  final List<CurrencyData> data;

  CurrencyResponse({
    required int status,
    required String messages,
    required String error,
    required this.data,
  }) : super(status: status, messages: messages, error: error);

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory CurrencyResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrencyResponseFromJson(json);

  /// Connect the generated [_$ResponseToJson] function to the `toJson` method.
  @override
  Map<String, dynamic> toJson() => _$CurrencyResponseToJson(this);
}
