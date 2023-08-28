import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zobu/constant/dimensions.dart';
import 'package:zobu/constant/image_refs.dart';
import 'package:zobu/model/posts.dart';
import 'package:zobu/notifications/notfications.dart';
import 'package:zobu/provider/posts.dart';
import 'package:zobu/style/colors.dart';
import 'package:zobu/style/text.dart';
import 'package:zobu/widgets/posts.dart';
import 'package:zobu/widgets/trends.dart';

class Feeds extends ConsumerStatefulWidget {
  const Feeds({super.key});

  @override
  ConsumerState<Feeds> createState() => _FeedsState();
}

class _FeedsState extends ConsumerState<Feeds> {
  // late  posts;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<PostModel> posts = ref.watch(postsProvider);

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Zobu',
                    style: headerStyle(),
                  ),
                  IconButton.filled(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (_) => const Notifications()),
                      );
                    },
                    icon: const Icon(Icons.notifications),
                  ),
                ],
              ),
            ),
            statusView(context),
            SizedBox(height: height(context) * 0.02),
            SizedBox(
              height: height(context) * 0.6,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Trends(),
                    Column(
                      children: posts
                          .map(
                            (e) => PostsView(postArgs: e),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  Widget statusView(context) {
    return Container(
      height: height(context) * 0.1,
      width: width(context),
      // decoration: BoxDecoration(color: RED1, border: Border()),
      child: Row(
        children: [
          CircleAvatar(
            radius: 50.0,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image.asset(test)),
          ),
          ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [],
          )
        ],
      ),
    );
  }
}
