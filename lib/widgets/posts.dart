import 'package:flutter/material.dart';
import 'package:zobu/model/posts.dart';
import 'package:zobu/profile/profile.dart';

import '../constant/dimensions.dart';
import '../constant/image_refs.dart';
import '../style/text.dart';

class PostsView extends StatelessWidget {
  PostsView({super.key, required this.postArgs});

  PostModel postArgs;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10)
                    .copyWith(top: 20),
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_outline),
                    ),
                    SizedBox(height: height(context) * 0.015),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.comment),
                    ),
                    SizedBox(height: height(context) * 0.015),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.share),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => Profile(userArg: postArgs.user),
                      ),
                    );
                  },
                  child: Container(
                    height: height(context) * 0.35,
                    // width: double.infinity,
                    decoration: BoxDecoration(border: Border.all()),
                    child: postArgs.type == 'user'
                        ? Hero(
                            tag: postArgs.user.username,
                            child: Image.file(
                              postArgs.post,
                              height: height(context),
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          )
                        : Hero(
                            tag: postArgs.user.username,
                            child: Image.asset(
                              test,
                              height: height(context),
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ), //Here we sre supposed to return videos not Image.asset()
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: height(context) * 0.01),
          Row(
            children: [
              SizedBox(width: width(context) * 0.03),
              Text(
                postArgs.likes.liked.length.toString(),
                style: mediumBodyStyle(weight: FontWeight.w400),
              ),
              SizedBox(width: width(context) * 0.03),
              Text(
                'likes',
                style: mediumBodyStyle(weight: FontWeight.w400),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: RichText(
              maxLines: 4,
              textAlign: TextAlign.justify,
              text: TextSpan(
                  style: mediumBodyStyle(weight: FontWeight.w200),
                  children: [
                    TextSpan(
                      onEnter: (event) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => Profile(userArg: postArgs.user),
                          ),
                        );
                      },
                      text: postArgs.user.username,
                      style: mediumBodyStyle(
                        weight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(text: '   '),
                    TextSpan(
                      text: postArgs.comment,
                    )
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(dateFormat()),
          )
        ],
      ),
    );
  }

  String dateFormat() {
    if (postArgs.date.second < DateTime.now().second) {}
    if (postArgs.date.minute < DateTime.now().minute) {}
    if (postArgs.date.hour < DateTime.now().hour) {}
    if (postArgs.date.day < DateTime.now().day) {}
    if (postArgs.date.month < DateTime.now().month) {}

    if (postArgs.date.month <= 12) {
      return '${postArgs.date.month.toString()} months ago';
    } else if (postArgs.date.day <= 31) {
      return '${postArgs.date.month.toString()} days ago';
    } else if (postArgs.date.hour <= 23) {
      return '${postArgs.date.hour.toString()} hours ago';
    } else if (postArgs.date.second <= 59) {
      return '${postArgs.date.second.toString()} seconds ago';
    } else if (postArgs.date.minute <= 59) {
      return '${postArgs.date.minute.toString()} minutes ago';
    }
    return postArgs.date.toIso8601String();
  }
}
