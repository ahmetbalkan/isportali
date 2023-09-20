// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
mixin _$DataModel {
  @JsonKey(name: 'AdvertisementID')
  int? get advertisementID => throw _privateConstructorUsedError;
  @JsonKey(name: 'CustomerID')
  int? get customerID => throw _privateConstructorUsedError;
  @JsonKey(name: 'CompanyName')
  String? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'Title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'Description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'LogoUrl')
  String? get logoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'ShareUrl')
  String? get shareUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'RedirectionUrl')
  String? get redirectionUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'TemplateUrl')
  String? get templateUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'PreferredSkillsText')
  String? get preferredSkillsText => throw _privateConstructorUsedError;
  @JsonKey(name: 'Status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsCompanyHidden')
  bool? get isCompanyHidden => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsHandicapped')
  bool? get isHandicapped => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsQuakeVictim')
  bool? get isQuakeVictim => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsViewedByUser')
  bool? get isViewedByUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsAppliedByUser')
  bool? get isAppliedByUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsFavoriteByUser')
  bool? get isFavoriteByUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'ApplicationCount')
  String? get applicationCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsUserSubscribedToCompany')
  bool? get isUserSubscribedToCompany => throw _privateConstructorUsedError;
  @JsonKey(name: 'CreateDateText')
  String? get createDateText => throw _privateConstructorUsedError;
  @JsonKey(name: 'ViewCount')
  int? get viewCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'ApplicationViewed')
  bool? get applicationViewed => throw _privateConstructorUsedError;
  @JsonKey(name: 'ApplicationAnswerMessage')
  bool? get applicationAnswerMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'ApplicationAnswerMessageCount')
  int? get applicationAnswerMessageCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'AdvertisementRedirectionType')
  int? get advertisementRedirectionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'PropertiesList')
  List<PropertiesModel>? get propertiesList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'SimilarAds')
  List<AdsModel>? get similarAdsList => throw _privateConstructorUsedError;
  @JsonKey(name: 'CustomerAds')
  List<AdsModel>? get customerAdsList => throw _privateConstructorUsedError;
  @JsonKey(name: 'LocationList')
  List<LocationModel>? get locationList => throw _privateConstructorUsedError;
  @JsonKey(name: 'Customer')
  CustomerModel? get customer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataModelCopyWith<DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModelCopyWith<$Res> {
  factory $DataModelCopyWith(DataModel value, $Res Function(DataModel) then) =
      _$DataModelCopyWithImpl<$Res, DataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'AdvertisementID')
          int? advertisementID,
      @JsonKey(name: 'CustomerID')
          int? customerID,
      @JsonKey(name: 'CompanyName')
          String? companyName,
      @JsonKey(name: 'Title')
          String? title,
      @JsonKey(name: 'Description')
          String? description,
      @JsonKey(name: 'LogoUrl')
          String? logoUrl,
      @JsonKey(name: 'ShareUrl')
          String? shareUrl,
      @JsonKey(name: 'RedirectionUrl')
          String? redirectionUrl,
      @JsonKey(name: 'TemplateUrl')
          String? templateUrl,
      @JsonKey(name: 'PreferredSkillsText')
          String? preferredSkillsText,
      @JsonKey(name: 'Status')
          int? status,
      @JsonKey(name: 'IsCompanyHidden')
          bool? isCompanyHidden,
      @JsonKey(name: 'IsHandicapped')
          bool? isHandicapped,
      @JsonKey(name: 'IsQuakeVictim')
          bool? isQuakeVictim,
      @JsonKey(name: 'IsViewedByUser')
          bool? isViewedByUser,
      @JsonKey(name: 'IsAppliedByUser')
          bool? isAppliedByUser,
      @JsonKey(name: 'IsFavoriteByUser')
          bool? isFavoriteByUser,
      @JsonKey(name: 'ApplicationCount')
          String? applicationCount,
      @JsonKey(name: 'IsUserSubscribedToCompany')
          bool? isUserSubscribedToCompany,
      @JsonKey(name: 'CreateDateText')
          String? createDateText,
      @JsonKey(name: 'ViewCount')
          int? viewCount,
      @JsonKey(name: 'ApplicationViewed')
          bool? applicationViewed,
      @JsonKey(name: 'ApplicationAnswerMessage')
          bool? applicationAnswerMessage,
      @JsonKey(name: 'ApplicationAnswerMessageCount')
          int? applicationAnswerMessageCount,
      @JsonKey(name: 'AdvertisementRedirectionType')
          int? advertisementRedirectionType,
      @JsonKey(name: 'PropertiesList')
          List<PropertiesModel>? propertiesList,
      @JsonKey(name: 'SimilarAds')
          List<AdsModel>? similarAdsList,
      @JsonKey(name: 'CustomerAds')
          List<AdsModel>? customerAdsList,
      @JsonKey(name: 'LocationList')
          List<LocationModel>? locationList,
      @JsonKey(name: 'Customer')
          CustomerModel? customer});

  $CustomerModelCopyWith<$Res>? get customer;
}

/// @nodoc
class _$DataModelCopyWithImpl<$Res, $Val extends DataModel>
    implements $DataModelCopyWith<$Res> {
  _$DataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? advertisementID = freezed,
    Object? customerID = freezed,
    Object? companyName = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? logoUrl = freezed,
    Object? shareUrl = freezed,
    Object? redirectionUrl = freezed,
    Object? templateUrl = freezed,
    Object? preferredSkillsText = freezed,
    Object? status = freezed,
    Object? isCompanyHidden = freezed,
    Object? isHandicapped = freezed,
    Object? isQuakeVictim = freezed,
    Object? isViewedByUser = freezed,
    Object? isAppliedByUser = freezed,
    Object? isFavoriteByUser = freezed,
    Object? applicationCount = freezed,
    Object? isUserSubscribedToCompany = freezed,
    Object? createDateText = freezed,
    Object? viewCount = freezed,
    Object? applicationViewed = freezed,
    Object? applicationAnswerMessage = freezed,
    Object? applicationAnswerMessageCount = freezed,
    Object? advertisementRedirectionType = freezed,
    Object? propertiesList = freezed,
    Object? similarAdsList = freezed,
    Object? customerAdsList = freezed,
    Object? locationList = freezed,
    Object? customer = freezed,
  }) {
    return _then(_value.copyWith(
      advertisementID: freezed == advertisementID
          ? _value.advertisementID
          : advertisementID // ignore: cast_nullable_to_non_nullable
              as int?,
      customerID: freezed == customerID
          ? _value.customerID
          : customerID // ignore: cast_nullable_to_non_nullable
              as int?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      shareUrl: freezed == shareUrl
          ? _value.shareUrl
          : shareUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      redirectionUrl: freezed == redirectionUrl
          ? _value.redirectionUrl
          : redirectionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      templateUrl: freezed == templateUrl
          ? _value.templateUrl
          : templateUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredSkillsText: freezed == preferredSkillsText
          ? _value.preferredSkillsText
          : preferredSkillsText // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      isCompanyHidden: freezed == isCompanyHidden
          ? _value.isCompanyHidden
          : isCompanyHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      isHandicapped: freezed == isHandicapped
          ? _value.isHandicapped
          : isHandicapped // ignore: cast_nullable_to_non_nullable
              as bool?,
      isQuakeVictim: freezed == isQuakeVictim
          ? _value.isQuakeVictim
          : isQuakeVictim // ignore: cast_nullable_to_non_nullable
              as bool?,
      isViewedByUser: freezed == isViewedByUser
          ? _value.isViewedByUser
          : isViewedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAppliedByUser: freezed == isAppliedByUser
          ? _value.isAppliedByUser
          : isAppliedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFavoriteByUser: freezed == isFavoriteByUser
          ? _value.isFavoriteByUser
          : isFavoriteByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      applicationCount: freezed == applicationCount
          ? _value.applicationCount
          : applicationCount // ignore: cast_nullable_to_non_nullable
              as String?,
      isUserSubscribedToCompany: freezed == isUserSubscribedToCompany
          ? _value.isUserSubscribedToCompany
          : isUserSubscribedToCompany // ignore: cast_nullable_to_non_nullable
              as bool?,
      createDateText: freezed == createDateText
          ? _value.createDateText
          : createDateText // ignore: cast_nullable_to_non_nullable
              as String?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      applicationViewed: freezed == applicationViewed
          ? _value.applicationViewed
          : applicationViewed // ignore: cast_nullable_to_non_nullable
              as bool?,
      applicationAnswerMessage: freezed == applicationAnswerMessage
          ? _value.applicationAnswerMessage
          : applicationAnswerMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
      applicationAnswerMessageCount: freezed == applicationAnswerMessageCount
          ? _value.applicationAnswerMessageCount
          : applicationAnswerMessageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      advertisementRedirectionType: freezed == advertisementRedirectionType
          ? _value.advertisementRedirectionType
          : advertisementRedirectionType // ignore: cast_nullable_to_non_nullable
              as int?,
      propertiesList: freezed == propertiesList
          ? _value.propertiesList
          : propertiesList // ignore: cast_nullable_to_non_nullable
              as List<PropertiesModel>?,
      similarAdsList: freezed == similarAdsList
          ? _value.similarAdsList
          : similarAdsList // ignore: cast_nullable_to_non_nullable
              as List<AdsModel>?,
      customerAdsList: freezed == customerAdsList
          ? _value.customerAdsList
          : customerAdsList // ignore: cast_nullable_to_non_nullable
              as List<AdsModel>?,
      locationList: freezed == locationList
          ? _value.locationList
          : locationList // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerModelCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $CustomerModelCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataModelCopyWith<$Res> implements $DataModelCopyWith<$Res> {
  factory _$$_DataModelCopyWith(
          _$_DataModel value, $Res Function(_$_DataModel) then) =
      __$$_DataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'AdvertisementID')
          int? advertisementID,
      @JsonKey(name: 'CustomerID')
          int? customerID,
      @JsonKey(name: 'CompanyName')
          String? companyName,
      @JsonKey(name: 'Title')
          String? title,
      @JsonKey(name: 'Description')
          String? description,
      @JsonKey(name: 'LogoUrl')
          String? logoUrl,
      @JsonKey(name: 'ShareUrl')
          String? shareUrl,
      @JsonKey(name: 'RedirectionUrl')
          String? redirectionUrl,
      @JsonKey(name: 'TemplateUrl')
          String? templateUrl,
      @JsonKey(name: 'PreferredSkillsText')
          String? preferredSkillsText,
      @JsonKey(name: 'Status')
          int? status,
      @JsonKey(name: 'IsCompanyHidden')
          bool? isCompanyHidden,
      @JsonKey(name: 'IsHandicapped')
          bool? isHandicapped,
      @JsonKey(name: 'IsQuakeVictim')
          bool? isQuakeVictim,
      @JsonKey(name: 'IsViewedByUser')
          bool? isViewedByUser,
      @JsonKey(name: 'IsAppliedByUser')
          bool? isAppliedByUser,
      @JsonKey(name: 'IsFavoriteByUser')
          bool? isFavoriteByUser,
      @JsonKey(name: 'ApplicationCount')
          String? applicationCount,
      @JsonKey(name: 'IsUserSubscribedToCompany')
          bool? isUserSubscribedToCompany,
      @JsonKey(name: 'CreateDateText')
          String? createDateText,
      @JsonKey(name: 'ViewCount')
          int? viewCount,
      @JsonKey(name: 'ApplicationViewed')
          bool? applicationViewed,
      @JsonKey(name: 'ApplicationAnswerMessage')
          bool? applicationAnswerMessage,
      @JsonKey(name: 'ApplicationAnswerMessageCount')
          int? applicationAnswerMessageCount,
      @JsonKey(name: 'AdvertisementRedirectionType')
          int? advertisementRedirectionType,
      @JsonKey(name: 'PropertiesList')
          List<PropertiesModel>? propertiesList,
      @JsonKey(name: 'SimilarAds')
          List<AdsModel>? similarAdsList,
      @JsonKey(name: 'CustomerAds')
          List<AdsModel>? customerAdsList,
      @JsonKey(name: 'LocationList')
          List<LocationModel>? locationList,
      @JsonKey(name: 'Customer')
          CustomerModel? customer});

  @override
  $CustomerModelCopyWith<$Res>? get customer;
}

/// @nodoc
class __$$_DataModelCopyWithImpl<$Res>
    extends _$DataModelCopyWithImpl<$Res, _$_DataModel>
    implements _$$_DataModelCopyWith<$Res> {
  __$$_DataModelCopyWithImpl(
      _$_DataModel _value, $Res Function(_$_DataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? advertisementID = freezed,
    Object? customerID = freezed,
    Object? companyName = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? logoUrl = freezed,
    Object? shareUrl = freezed,
    Object? redirectionUrl = freezed,
    Object? templateUrl = freezed,
    Object? preferredSkillsText = freezed,
    Object? status = freezed,
    Object? isCompanyHidden = freezed,
    Object? isHandicapped = freezed,
    Object? isQuakeVictim = freezed,
    Object? isViewedByUser = freezed,
    Object? isAppliedByUser = freezed,
    Object? isFavoriteByUser = freezed,
    Object? applicationCount = freezed,
    Object? isUserSubscribedToCompany = freezed,
    Object? createDateText = freezed,
    Object? viewCount = freezed,
    Object? applicationViewed = freezed,
    Object? applicationAnswerMessage = freezed,
    Object? applicationAnswerMessageCount = freezed,
    Object? advertisementRedirectionType = freezed,
    Object? propertiesList = freezed,
    Object? similarAdsList = freezed,
    Object? customerAdsList = freezed,
    Object? locationList = freezed,
    Object? customer = freezed,
  }) {
    return _then(_$_DataModel(
      advertisementID: freezed == advertisementID
          ? _value.advertisementID
          : advertisementID // ignore: cast_nullable_to_non_nullable
              as int?,
      customerID: freezed == customerID
          ? _value.customerID
          : customerID // ignore: cast_nullable_to_non_nullable
              as int?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      shareUrl: freezed == shareUrl
          ? _value.shareUrl
          : shareUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      redirectionUrl: freezed == redirectionUrl
          ? _value.redirectionUrl
          : redirectionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      templateUrl: freezed == templateUrl
          ? _value.templateUrl
          : templateUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredSkillsText: freezed == preferredSkillsText
          ? _value.preferredSkillsText
          : preferredSkillsText // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      isCompanyHidden: freezed == isCompanyHidden
          ? _value.isCompanyHidden
          : isCompanyHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      isHandicapped: freezed == isHandicapped
          ? _value.isHandicapped
          : isHandicapped // ignore: cast_nullable_to_non_nullable
              as bool?,
      isQuakeVictim: freezed == isQuakeVictim
          ? _value.isQuakeVictim
          : isQuakeVictim // ignore: cast_nullable_to_non_nullable
              as bool?,
      isViewedByUser: freezed == isViewedByUser
          ? _value.isViewedByUser
          : isViewedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAppliedByUser: freezed == isAppliedByUser
          ? _value.isAppliedByUser
          : isAppliedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFavoriteByUser: freezed == isFavoriteByUser
          ? _value.isFavoriteByUser
          : isFavoriteByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      applicationCount: freezed == applicationCount
          ? _value.applicationCount
          : applicationCount // ignore: cast_nullable_to_non_nullable
              as String?,
      isUserSubscribedToCompany: freezed == isUserSubscribedToCompany
          ? _value.isUserSubscribedToCompany
          : isUserSubscribedToCompany // ignore: cast_nullable_to_non_nullable
              as bool?,
      createDateText: freezed == createDateText
          ? _value.createDateText
          : createDateText // ignore: cast_nullable_to_non_nullable
              as String?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      applicationViewed: freezed == applicationViewed
          ? _value.applicationViewed
          : applicationViewed // ignore: cast_nullable_to_non_nullable
              as bool?,
      applicationAnswerMessage: freezed == applicationAnswerMessage
          ? _value.applicationAnswerMessage
          : applicationAnswerMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
      applicationAnswerMessageCount: freezed == applicationAnswerMessageCount
          ? _value.applicationAnswerMessageCount
          : applicationAnswerMessageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      advertisementRedirectionType: freezed == advertisementRedirectionType
          ? _value.advertisementRedirectionType
          : advertisementRedirectionType // ignore: cast_nullable_to_non_nullable
              as int?,
      propertiesList: freezed == propertiesList
          ? _value._propertiesList
          : propertiesList // ignore: cast_nullable_to_non_nullable
              as List<PropertiesModel>?,
      similarAdsList: freezed == similarAdsList
          ? _value._similarAdsList
          : similarAdsList // ignore: cast_nullable_to_non_nullable
              as List<AdsModel>?,
      customerAdsList: freezed == customerAdsList
          ? _value._customerAdsList
          : customerAdsList // ignore: cast_nullable_to_non_nullable
              as List<AdsModel>?,
      locationList: freezed == locationList
          ? _value._locationList
          : locationList // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataModel implements _DataModel {
  _$_DataModel(
      {@JsonKey(name: 'AdvertisementID')
          this.advertisementID,
      @JsonKey(name: 'CustomerID')
          this.customerID,
      @JsonKey(name: 'CompanyName')
          this.companyName,
      @JsonKey(name: 'Title')
          this.title,
      @JsonKey(name: 'Description')
          this.description,
      @JsonKey(name: 'LogoUrl')
          this.logoUrl,
      @JsonKey(name: 'ShareUrl')
          this.shareUrl,
      @JsonKey(name: 'RedirectionUrl')
          this.redirectionUrl,
      @JsonKey(name: 'TemplateUrl')
          this.templateUrl,
      @JsonKey(name: 'PreferredSkillsText')
          this.preferredSkillsText,
      @JsonKey(name: 'Status')
          this.status,
      @JsonKey(name: 'IsCompanyHidden')
          this.isCompanyHidden,
      @JsonKey(name: 'IsHandicapped')
          this.isHandicapped,
      @JsonKey(name: 'IsQuakeVictim')
          this.isQuakeVictim,
      @JsonKey(name: 'IsViewedByUser')
          this.isViewedByUser,
      @JsonKey(name: 'IsAppliedByUser')
          this.isAppliedByUser,
      @JsonKey(name: 'IsFavoriteByUser')
          this.isFavoriteByUser,
      @JsonKey(name: 'ApplicationCount')
          this.applicationCount,
      @JsonKey(name: 'IsUserSubscribedToCompany')
          this.isUserSubscribedToCompany,
      @JsonKey(name: 'CreateDateText')
          this.createDateText,
      @JsonKey(name: 'ViewCount')
          this.viewCount,
      @JsonKey(name: 'ApplicationViewed')
          this.applicationViewed,
      @JsonKey(name: 'ApplicationAnswerMessage')
          this.applicationAnswerMessage,
      @JsonKey(name: 'ApplicationAnswerMessageCount')
          this.applicationAnswerMessageCount,
      @JsonKey(name: 'AdvertisementRedirectionType')
          this.advertisementRedirectionType,
      @JsonKey(name: 'PropertiesList')
          final List<PropertiesModel>? propertiesList,
      @JsonKey(name: 'SimilarAds')
          final List<AdsModel>? similarAdsList,
      @JsonKey(name: 'CustomerAds')
          final List<AdsModel>? customerAdsList,
      @JsonKey(name: 'LocationList')
          final List<LocationModel>? locationList,
      @JsonKey(name: 'Customer')
          this.customer})
      : _propertiesList = propertiesList,
        _similarAdsList = similarAdsList,
        _customerAdsList = customerAdsList,
        _locationList = locationList;

  factory _$_DataModel.fromJson(Map<String, dynamic> json) =>
      _$$_DataModelFromJson(json);

  @override
  @JsonKey(name: 'AdvertisementID')
  final int? advertisementID;
  @override
  @JsonKey(name: 'CustomerID')
  final int? customerID;
  @override
  @JsonKey(name: 'CompanyName')
  final String? companyName;
  @override
  @JsonKey(name: 'Title')
  final String? title;
  @override
  @JsonKey(name: 'Description')
  final String? description;
  @override
  @JsonKey(name: 'LogoUrl')
  final String? logoUrl;
  @override
  @JsonKey(name: 'ShareUrl')
  final String? shareUrl;
  @override
  @JsonKey(name: 'RedirectionUrl')
  final String? redirectionUrl;
  @override
  @JsonKey(name: 'TemplateUrl')
  final String? templateUrl;
  @override
  @JsonKey(name: 'PreferredSkillsText')
  final String? preferredSkillsText;
  @override
  @JsonKey(name: 'Status')
  final int? status;
  @override
  @JsonKey(name: 'IsCompanyHidden')
  final bool? isCompanyHidden;
  @override
  @JsonKey(name: 'IsHandicapped')
  final bool? isHandicapped;
  @override
  @JsonKey(name: 'IsQuakeVictim')
  final bool? isQuakeVictim;
  @override
  @JsonKey(name: 'IsViewedByUser')
  final bool? isViewedByUser;
  @override
  @JsonKey(name: 'IsAppliedByUser')
  final bool? isAppliedByUser;
  @override
  @JsonKey(name: 'IsFavoriteByUser')
  final bool? isFavoriteByUser;
  @override
  @JsonKey(name: 'ApplicationCount')
  final String? applicationCount;
  @override
  @JsonKey(name: 'IsUserSubscribedToCompany')
  final bool? isUserSubscribedToCompany;
  @override
  @JsonKey(name: 'CreateDateText')
  final String? createDateText;
  @override
  @JsonKey(name: 'ViewCount')
  final int? viewCount;
  @override
  @JsonKey(name: 'ApplicationViewed')
  final bool? applicationViewed;
  @override
  @JsonKey(name: 'ApplicationAnswerMessage')
  final bool? applicationAnswerMessage;
  @override
  @JsonKey(name: 'ApplicationAnswerMessageCount')
  final int? applicationAnswerMessageCount;
  @override
  @JsonKey(name: 'AdvertisementRedirectionType')
  final int? advertisementRedirectionType;
  final List<PropertiesModel>? _propertiesList;
  @override
  @JsonKey(name: 'PropertiesList')
  List<PropertiesModel>? get propertiesList {
    final value = _propertiesList;
    if (value == null) return null;
    if (_propertiesList is EqualUnmodifiableListView) return _propertiesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AdsModel>? _similarAdsList;
  @override
  @JsonKey(name: 'SimilarAds')
  List<AdsModel>? get similarAdsList {
    final value = _similarAdsList;
    if (value == null) return null;
    if (_similarAdsList is EqualUnmodifiableListView) return _similarAdsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AdsModel>? _customerAdsList;
  @override
  @JsonKey(name: 'CustomerAds')
  List<AdsModel>? get customerAdsList {
    final value = _customerAdsList;
    if (value == null) return null;
    if (_customerAdsList is EqualUnmodifiableListView) return _customerAdsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LocationModel>? _locationList;
  @override
  @JsonKey(name: 'LocationList')
  List<LocationModel>? get locationList {
    final value = _locationList;
    if (value == null) return null;
    if (_locationList is EqualUnmodifiableListView) return _locationList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'Customer')
  final CustomerModel? customer;

  @override
  String toString() {
    return 'DataModel(advertisementID: $advertisementID, customerID: $customerID, companyName: $companyName, title: $title, description: $description, logoUrl: $logoUrl, shareUrl: $shareUrl, redirectionUrl: $redirectionUrl, templateUrl: $templateUrl, preferredSkillsText: $preferredSkillsText, status: $status, isCompanyHidden: $isCompanyHidden, isHandicapped: $isHandicapped, isQuakeVictim: $isQuakeVictim, isViewedByUser: $isViewedByUser, isAppliedByUser: $isAppliedByUser, isFavoriteByUser: $isFavoriteByUser, applicationCount: $applicationCount, isUserSubscribedToCompany: $isUserSubscribedToCompany, createDateText: $createDateText, viewCount: $viewCount, applicationViewed: $applicationViewed, applicationAnswerMessage: $applicationAnswerMessage, applicationAnswerMessageCount: $applicationAnswerMessageCount, advertisementRedirectionType: $advertisementRedirectionType, propertiesList: $propertiesList, similarAdsList: $similarAdsList, customerAdsList: $customerAdsList, locationList: $locationList, customer: $customer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataModel &&
            (identical(other.advertisementID, advertisementID) ||
                other.advertisementID == advertisementID) &&
            (identical(other.customerID, customerID) ||
                other.customerID == customerID) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.shareUrl, shareUrl) ||
                other.shareUrl == shareUrl) &&
            (identical(other.redirectionUrl, redirectionUrl) ||
                other.redirectionUrl == redirectionUrl) &&
            (identical(other.templateUrl, templateUrl) ||
                other.templateUrl == templateUrl) &&
            (identical(other.preferredSkillsText, preferredSkillsText) ||
                other.preferredSkillsText == preferredSkillsText) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isCompanyHidden, isCompanyHidden) ||
                other.isCompanyHidden == isCompanyHidden) &&
            (identical(other.isHandicapped, isHandicapped) ||
                other.isHandicapped == isHandicapped) &&
            (identical(other.isQuakeVictim, isQuakeVictim) ||
                other.isQuakeVictim == isQuakeVictim) &&
            (identical(other.isViewedByUser, isViewedByUser) ||
                other.isViewedByUser == isViewedByUser) &&
            (identical(other.isAppliedByUser, isAppliedByUser) ||
                other.isAppliedByUser == isAppliedByUser) &&
            (identical(other.isFavoriteByUser, isFavoriteByUser) ||
                other.isFavoriteByUser == isFavoriteByUser) &&
            (identical(other.applicationCount, applicationCount) ||
                other.applicationCount == applicationCount) &&
            (identical(other.isUserSubscribedToCompany, isUserSubscribedToCompany) ||
                other.isUserSubscribedToCompany == isUserSubscribedToCompany) &&
            (identical(other.createDateText, createDateText) ||
                other.createDateText == createDateText) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.applicationViewed, applicationViewed) ||
                other.applicationViewed == applicationViewed) &&
            (identical(other.applicationAnswerMessage, applicationAnswerMessage) ||
                other.applicationAnswerMessage == applicationAnswerMessage) &&
            (identical(other.applicationAnswerMessageCount,
                    applicationAnswerMessageCount) ||
                other.applicationAnswerMessageCount ==
                    applicationAnswerMessageCount) &&
            (identical(other.advertisementRedirectionType,
                    advertisementRedirectionType) ||
                other.advertisementRedirectionType ==
                    advertisementRedirectionType) &&
            const DeepCollectionEquality()
                .equals(other._propertiesList, _propertiesList) &&
            const DeepCollectionEquality()
                .equals(other._similarAdsList, _similarAdsList) &&
            const DeepCollectionEquality()
                .equals(other._customerAdsList, _customerAdsList) &&
            const DeepCollectionEquality()
                .equals(other._locationList, _locationList) &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        advertisementID,
        customerID,
        companyName,
        title,
        description,
        logoUrl,
        shareUrl,
        redirectionUrl,
        templateUrl,
        preferredSkillsText,
        status,
        isCompanyHidden,
        isHandicapped,
        isQuakeVictim,
        isViewedByUser,
        isAppliedByUser,
        isFavoriteByUser,
        applicationCount,
        isUserSubscribedToCompany,
        createDateText,
        viewCount,
        applicationViewed,
        applicationAnswerMessage,
        applicationAnswerMessageCount,
        advertisementRedirectionType,
        const DeepCollectionEquality().hash(_propertiesList),
        const DeepCollectionEquality().hash(_similarAdsList),
        const DeepCollectionEquality().hash(_customerAdsList),
        const DeepCollectionEquality().hash(_locationList),
        customer
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataModelCopyWith<_$_DataModel> get copyWith =>
      __$$_DataModelCopyWithImpl<_$_DataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataModelToJson(
      this,
    );
  }
}

abstract class _DataModel implements DataModel {
  factory _DataModel(
      {@JsonKey(name: 'AdvertisementID')
          final int? advertisementID,
      @JsonKey(name: 'CustomerID')
          final int? customerID,
      @JsonKey(name: 'CompanyName')
          final String? companyName,
      @JsonKey(name: 'Title')
          final String? title,
      @JsonKey(name: 'Description')
          final String? description,
      @JsonKey(name: 'LogoUrl')
          final String? logoUrl,
      @JsonKey(name: 'ShareUrl')
          final String? shareUrl,
      @JsonKey(name: 'RedirectionUrl')
          final String? redirectionUrl,
      @JsonKey(name: 'TemplateUrl')
          final String? templateUrl,
      @JsonKey(name: 'PreferredSkillsText')
          final String? preferredSkillsText,
      @JsonKey(name: 'Status')
          final int? status,
      @JsonKey(name: 'IsCompanyHidden')
          final bool? isCompanyHidden,
      @JsonKey(name: 'IsHandicapped')
          final bool? isHandicapped,
      @JsonKey(name: 'IsQuakeVictim')
          final bool? isQuakeVictim,
      @JsonKey(name: 'IsViewedByUser')
          final bool? isViewedByUser,
      @JsonKey(name: 'IsAppliedByUser')
          final bool? isAppliedByUser,
      @JsonKey(name: 'IsFavoriteByUser')
          final bool? isFavoriteByUser,
      @JsonKey(name: 'ApplicationCount')
          final String? applicationCount,
      @JsonKey(name: 'IsUserSubscribedToCompany')
          final bool? isUserSubscribedToCompany,
      @JsonKey(name: 'CreateDateText')
          final String? createDateText,
      @JsonKey(name: 'ViewCount')
          final int? viewCount,
      @JsonKey(name: 'ApplicationViewed')
          final bool? applicationViewed,
      @JsonKey(name: 'ApplicationAnswerMessage')
          final bool? applicationAnswerMessage,
      @JsonKey(name: 'ApplicationAnswerMessageCount')
          final int? applicationAnswerMessageCount,
      @JsonKey(name: 'AdvertisementRedirectionType')
          final int? advertisementRedirectionType,
      @JsonKey(name: 'PropertiesList')
          final List<PropertiesModel>? propertiesList,
      @JsonKey(name: 'SimilarAds')
          final List<AdsModel>? similarAdsList,
      @JsonKey(name: 'CustomerAds')
          final List<AdsModel>? customerAdsList,
      @JsonKey(name: 'LocationList')
          final List<LocationModel>? locationList,
      @JsonKey(name: 'Customer')
          final CustomerModel? customer}) = _$_DataModel;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$_DataModel.fromJson;

  @override
  @JsonKey(name: 'AdvertisementID')
  int? get advertisementID;
  @override
  @JsonKey(name: 'CustomerID')
  int? get customerID;
  @override
  @JsonKey(name: 'CompanyName')
  String? get companyName;
  @override
  @JsonKey(name: 'Title')
  String? get title;
  @override
  @JsonKey(name: 'Description')
  String? get description;
  @override
  @JsonKey(name: 'LogoUrl')
  String? get logoUrl;
  @override
  @JsonKey(name: 'ShareUrl')
  String? get shareUrl;
  @override
  @JsonKey(name: 'RedirectionUrl')
  String? get redirectionUrl;
  @override
  @JsonKey(name: 'TemplateUrl')
  String? get templateUrl;
  @override
  @JsonKey(name: 'PreferredSkillsText')
  String? get preferredSkillsText;
  @override
  @JsonKey(name: 'Status')
  int? get status;
  @override
  @JsonKey(name: 'IsCompanyHidden')
  bool? get isCompanyHidden;
  @override
  @JsonKey(name: 'IsHandicapped')
  bool? get isHandicapped;
  @override
  @JsonKey(name: 'IsQuakeVictim')
  bool? get isQuakeVictim;
  @override
  @JsonKey(name: 'IsViewedByUser')
  bool? get isViewedByUser;
  @override
  @JsonKey(name: 'IsAppliedByUser')
  bool? get isAppliedByUser;
  @override
  @JsonKey(name: 'IsFavoriteByUser')
  bool? get isFavoriteByUser;
  @override
  @JsonKey(name: 'ApplicationCount')
  String? get applicationCount;
  @override
  @JsonKey(name: 'IsUserSubscribedToCompany')
  bool? get isUserSubscribedToCompany;
  @override
  @JsonKey(name: 'CreateDateText')
  String? get createDateText;
  @override
  @JsonKey(name: 'ViewCount')
  int? get viewCount;
  @override
  @JsonKey(name: 'ApplicationViewed')
  bool? get applicationViewed;
  @override
  @JsonKey(name: 'ApplicationAnswerMessage')
  bool? get applicationAnswerMessage;
  @override
  @JsonKey(name: 'ApplicationAnswerMessageCount')
  int? get applicationAnswerMessageCount;
  @override
  @JsonKey(name: 'AdvertisementRedirectionType')
  int? get advertisementRedirectionType;
  @override
  @JsonKey(name: 'PropertiesList')
  List<PropertiesModel>? get propertiesList;
  @override
  @JsonKey(name: 'SimilarAds')
  List<AdsModel>? get similarAdsList;
  @override
  @JsonKey(name: 'CustomerAds')
  List<AdsModel>? get customerAdsList;
  @override
  @JsonKey(name: 'LocationList')
  List<LocationModel>? get locationList;
  @override
  @JsonKey(name: 'Customer')
  CustomerModel? get customer;
  @override
  @JsonKey(ignore: true)
  _$$_DataModelCopyWith<_$_DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
