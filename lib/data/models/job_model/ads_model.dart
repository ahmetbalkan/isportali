import 'package:freezed_annotation/freezed_annotation.dart';

part 'ads_model.freezed.dart';
part 'ads_model.g.dart';

@freezed
class AdsModel with _$AdsModel {
  factory AdsModel({
    @JsonKey(name: 'AdvertisementID') int? advertisementID,
    @JsonKey(name: 'CustomerID') int? customerID,
    @JsonKey(name: 'CompanyName') String? companyName,
    @JsonKey(name: 'IsCompanyHidden') bool? isCompanyHidden,
    @JsonKey(name: 'IsHandicapped') bool? isHandicapped,
    @JsonKey(name: 'IsQuakeVictim') bool? isQuakeVictim,
    @JsonKey(name: 'Title') String? title,
    @JsonKey(name: 'LogoUrl') String? logoUrl,
    @JsonKey(name: 'LocationName') List<String>? locationName,
    @JsonKey(name: 'OrderDate') String? orderDate,
    @JsonKey(name: 'OrderDateText') String? orderDateText,
    @JsonKey(name: 'IsAppliedByUser') bool? isAppliedByUser,
    @JsonKey(name: 'IsViewedByUser') bool? isViewedByUser,
    @JsonKey(name: 'IsSavedByUser') bool? isSavedByUser,
    @JsonKey(name: 'EvaluationCount') int? evaluationCount,
    @JsonKey(name: 'MessageCount') int? messageCount,
    @JsonKey(name: 'ViewsCount') int? viewsCount,
    @JsonKey(name: 'IsSponsored') bool? isSponsored,
  }) = _AdsModel;

  factory AdsModel.fromJson(Map<String, dynamic> json) =>
      _$AdsModelFromJson(json);
}
