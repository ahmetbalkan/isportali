import 'package:freezed_annotation/freezed_annotation.dart';
part 'customer_model.freezed.dart';
part 'customer_model.g.dart';

@freezed
class CustomerModel with _$CustomerModel {
  factory CustomerModel({
    @JsonKey(name: 'CustomerID') int? customerID,
    @JsonKey(name: 'WebAddress') String? webAddress,
    @JsonKey(name: 'CompanyName') String? companyName,
    @JsonKey(name: 'InfoHtml') String? infoHtml,
    @JsonKey(name: 'LogoPath') String? logoPath,
    @JsonKey(name: 'IsUserSubscribedToCompany') bool? isUserSubscribedToCompany,
    @JsonKey(name: 'CityName') String? cityName,
  }) = _CustomerModel;

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);
}
