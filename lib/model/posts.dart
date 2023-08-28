import 'dart:io';

import 'package:zobu/model/users.dart';

class LikesClicks {
  LikesClicks({required this.liked});
  List<UsersModel> liked;
}

class PostModel {
  PostModel({
    required this.user,
    required this.post,
    required this.comment,
    required this.likes,
    required this.type,
    required this.date,
  });

  UsersModel user;
  String type;
  File post;
  String comment;
  LikesClicks likes;
  DateTime date;
}
