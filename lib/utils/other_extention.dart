import 'package:isportal/data/models/cv_models/lookup_models/cv_data_model.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'package:http/http.dart' as http;

extension PhoneNumberExtension on FormGroup {
  String toPhoneNumberWithPrefix(String controlName) {
    String phoneNumber = control(controlName).value;
    return '90$phoneNumber';
  }

  String formToString(String controlName) {
    return control(controlName).value;
  }
}

Future<String> getIPAddress() async {
  var response = await http.get(Uri.parse('https://api.ipify.org'));
  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('Failed to get IP address');
  }
}

extension CvDataModelExtension on List<CvDataModel> {
  CvDataModel? firstWhereName(String name) {
    var result = firstWhere((element) => element.name == name);
    print(result);
    return result;
  }

  CvDataModel? firstWhereValue(String value) {
    var result = firstWhere((element) => element.value == value);
    print(result);
    return result;
  }
}
