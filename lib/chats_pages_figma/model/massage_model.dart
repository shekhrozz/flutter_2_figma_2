class MassageModel {
  String? userImage;
  String? message;
  DateTime? sendAt;
  bool? isMymassage;

  MassageModel({required this.message,
  required this.sendAt,
  required this.isMymassage,
  required this.userImage});
}