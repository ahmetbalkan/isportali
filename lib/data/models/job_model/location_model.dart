import 'package:freezed_annotation/freezed_annotation.dart';
part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
class LocationModel with _$LocationModel {
  factory LocationModel({
    @JsonKey(name: 'AdLocationID') int? adLocationID,
    @JsonKey(name: 'CountryID') int? countryID,
    @JsonKey(name: 'CityID') int? cityID,
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'ApplicationDate') String? applicationDate,
    @JsonKey(name: 'Address') String? address,
    @JsonKey(name: 'Latitude') double? latitude,
    @JsonKey(name: 'Longitude') double? Longitude,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}
