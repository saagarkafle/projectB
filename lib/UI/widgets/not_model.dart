import 'dart:convert';

class NotificationModel {
  late String title;
  late String message;

  NotificationModel(
    this.title,
    this.message,
  );

  factory NotificationModel.fromJsonString(String str) =>
      NotificationModel._fromJson(jsonDecode(str));

  String toJsonString() => jsonEncode(_toJson());

  factory NotificationModel._fromJson(Map<String, dynamic> json) =>
      NotificationModel(
        json['title'],
        json['message'],
      );

  Map<String, dynamic> _toJson() => {'title': title, 'message': message};
}
