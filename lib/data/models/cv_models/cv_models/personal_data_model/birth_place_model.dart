import 'package:isportal/data/models/cv_models/cv_models/personal_data_model/city_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/personal_data_model/country_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/personal_data_model/district_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'birth_place_model.freezed.dart';
part 'birth_place_model.g.dart';

@freezed
class BirthPlaceModel with _$BirthPlaceModel {
  factory BirthPlaceModel({
    @JsonKey(name: 'Country') CountryModel? country,
    @JsonKey(name: 'City') CityModel? city,
    @JsonKey(name: 'District') DistrictModel? district,
    @JsonKey(name: 'Text') String? text,
  }) = _BirthPlaceModel;

  factory BirthPlaceModel.fromJson(Map<String, dynamic> json) =>
      _$BirthPlaceModelFromJson(json);
}
