class SmsResult {
  final bool isSuccess;
  final String? data;

  SmsResult({required this.isSuccess, this.data});

  factory SmsResult.fromJson(Map<String, dynamic> json) {
    return SmsResult(
      isSuccess: json['IsSuccess'],
      data: json['Data'],
    );
  }
}
