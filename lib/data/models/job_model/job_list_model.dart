import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_list_model.freezed.dart';
part 'job_list_model.g.dart';

@freezed
class JobListModel with _$JobListModel {
  factory JobListModel({
    @JsonKey(name: 'AdvertisementID') int? advertisementID,
    @JsonKey(name: 'CustomerID') int? customerID,
    @JsonKey(name: 'CompanyName') String? companyName,
    @JsonKey(name: 'IsCompanyHidden') bool? isCompanyHidden,
    @JsonKey(name: 'IsHandicapped') bool? isHandicapped,
    @JsonKey(name: 'IsQuakeVictim') bool? isQuakeVictim,
    @JsonKey(name: 'Title') String? title,
    @JsonKey(name: 'LogoUrl') String? logoUrl,
    @JsonKey(name: 'OrderDate') String? orderDate,
    @JsonKey(name: 'IsAppliedByUser') bool? isAppliedByUser,
    @JsonKey(name: 'IsViewedByUser') bool? isViewedByUser,
    @JsonKey(name: 'IsSavedByUser') bool? isSavedByUser,
    @JsonKey(name: 'EvaluationCount') int? evaluationCount,
    @JsonKey(name: 'MessageCount') int? messageCount,
    @JsonKey(name: 'ViewsCount') int? viewsCount,
    @JsonKey(name: 'IsSponsored') bool? isSponsored,
    // Assuming LocationName is also a part of your model
    @JsonKey(name: 'LocationName') List<String>? locationName,
  }) = _JobListModel;

  factory JobListModel.fromJson(Map<String, dynamic> json) =>
      _$JobListModelFromJson(json);
}
