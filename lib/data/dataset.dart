import 'dart:io';

import 'package:zobu/constant/image_refs.dart';
import 'package:zobu/model/posts.dart';
import 'package:zobu/model/users.dart';

var usersList = [
  UsersModel(
      username: 'sampe', fname: 'Samuel', lname: 'Mbape', password: '123456'),
  UsersModel(
      username: 'likaq', fname: 'Lukman', lname: 'Quadri', password: '000000'),
  UsersModel(
      username: 'Binta', fname: 'Binta', lname: 'Obebelu', password: '635287'),
  UsersModel(
      username: 'Chalie', fname: 'Charlse', lname: 'Ogana', password: '026542'),
];

var LoggedINuser = [];

var post = [
  PostModel(
    user: usersList[0],
    post: File(test),
    comment: 'What beautiful trees?',
    likes: LikesClicks(liked: [usersList[1], usersList[0], usersList[2]]),
    type: 'img',
    date: DateTime.parse('2023-07-28 13:27:00'),
  ),
  PostModel(
    user: usersList[0],
    post: File(test),
    comment: 'What beautiful trees?',
    likes: LikesClicks(liked: [usersList[1], usersList[0], usersList[2]]),
    type: 'img',
    date: DateTime.parse('2023-07-28 13:27:00'),
  ),
  PostModel(
    user: usersList[0],
    post: File(test),
    comment: 'I\'m right on time',
    likes: LikesClicks(liked: [usersList[1], usersList[0], usersList[2]]),
    type: 'img',
    date: DateTime.parse('2023-07-28 10:27:00'),
  ),
  PostModel(
    user: usersList[1],
    post: File(test),
    comment: 'It is sunset here',
    likes: LikesClicks(liked: [usersList[1], usersList[0], usersList[2]]),
    type: 'img',
    date: DateTime.parse('2023-08-18 19:27:00'),
  ),
  PostModel(
    user: usersList[2],
    post: File(test),
    comment: 'What\'s your opinion on my graphics',
    likes: LikesClicks(liked: [usersList[1], usersList[0], usersList[2]]),
    type: 'img',
    date: DateTime.parse('2023-08-28 08:27:00'),
  ),
];
