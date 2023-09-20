class CheckResponse {
  final bool isSuccess;
  final String data;
  final List<Message> messageList;

  CheckResponse(
      {required this.isSuccess, required this.data, required this.messageList});

  factory CheckResponse.fromJson(Map<String, dynamic> json) {
    List<dynamic> messageListData = json['MessageList'] ?? [];

    List<Message> messageList = messageListData
        .map((message) => Message.fromJson(message as Map<String, dynamic>))
        .toList();

    return CheckResponse(
      isSuccess: json['IsSuccess'],
      data: json['Data'],
      messageList: messageList,
    );
  }
}

class Message {
  final int type;
  final String code;
  final String description;
  final Map<String, dynamic> placeholderValues;

  Message(
      {required this.type,
      required this.code,
      required this.description,
      required this.placeholderValues});

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      type: json['Type'],
      code: json['Code'],
      description: json['Description'],
      placeholderValues: json['PlaceholderValues'] as Map<String, dynamic>,
    );
  }
}
