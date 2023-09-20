import 'package:isportal/data/models/job_model/ads_model.dart';
import 'package:isportal/data/models/job_model/customer_model.dart';
import 'package:isportal/data/models/job_model/location_model.dart';
import 'package:isportal/data/models/job_model/properties_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_model.freezed.dart';
part 'data_model.g.dart';

@freezed
class DataModel with _$DataModel {
  factory DataModel({
    @JsonKey(name: 'AdvertisementID') int? advertisementID,
    @JsonKey(name: 'CustomerID') int? customerID,
    @JsonKey(name: 'CompanyName') String? companyName,
    @JsonKey(name: 'Title') String? title,
    @JsonKey(name: 'Description') String? description,
    @JsonKey(name: 'LogoUrl') String? logoUrl,
    @JsonKey(name: 'ShareUrl') String? shareUrl,
    @JsonKey(name: 'RedirectionUrl') String? redirectionUrl,
    @JsonKey(name: 'TemplateUrl') String? templateUrl,
    @JsonKey(name: 'PreferredSkillsText') String? preferredSkillsText,
    @JsonKey(name: 'Status') int? status,
    @JsonKey(name: 'IsCompanyHidden') bool? isCompanyHidden,
    @JsonKey(name: 'IsHandicapped') bool? isHandicapped,
    @JsonKey(name: 'IsQuakeVictim') bool? isQuakeVictim,
    @JsonKey(name: 'IsViewedByUser') bool? isViewedByUser,
    @JsonKey(name: 'IsAppliedByUser') bool? isAppliedByUser,
    @JsonKey(name: 'IsFavoriteByUser') bool? isFavoriteByUser,
    @JsonKey(name: 'ApplicationCount') String? applicationCount,
    @JsonKey(name: 'IsUserSubscribedToCompany') bool? isUserSubscribedToCompany,
    @JsonKey(name: 'CreateDateText') String? createDateText,
    @JsonKey(name: 'ViewCount') int? viewCount,
    @JsonKey(name: 'ApplicationViewed') bool? applicationViewed,
    @JsonKey(name: 'ApplicationAnswerMessage') bool? applicationAnswerMessage,
    @JsonKey(name: 'ApplicationAnswerMessageCount')
        int? applicationAnswerMessageCount,
    @JsonKey(name: 'AdvertisementRedirectionType')
        int? advertisementRedirectionType,
    @JsonKey(name: 'PropertiesList') List<PropertiesModel>? propertiesList,
    @JsonKey(name: 'SimilarAds') List<AdsModel>? similarAdsList,
    @JsonKey(name: 'CustomerAds') List<AdsModel>? customerAdsList,
    @JsonKey(name: 'LocationList') List<LocationModel>? locationList,
    @JsonKey(name: 'Customer') CustomerModel? customer,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}
