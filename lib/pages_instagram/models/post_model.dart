class PostModel {
  final String username;
  final String userImage;
  final String datetime;
  final String comment;
  final bool isVIP;
  final String location;
  final List<String>imagelist;

  PostModel({required this.username,required this.userImage,required this.datetime,required this.comment,
  required this.isVIP,required this.location,required this.imagelist});
}