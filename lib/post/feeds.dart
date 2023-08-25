import 'package:flutter/material.dart';
import 'package:zobu/constant/dimensions.dart';
import 'package:zobu/constant/image_refs.dart';
import 'package:zobu/notifications/notfications.dart';
import 'package:zobu/post/single_post.dart';
import 'package:zobu/profile/profile.dart';
import 'package:zobu/style/colors.dart';
import 'package:zobu/style/text.dart';

class Feeds extends StatelessWidget {
  const Feeds({super.key});

  @override
  Widget build(BuildContext context) {
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
            SizedBox(height: height(context) * 0.02),
            SizedBox(
              height: height(context) * 0.83,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    trends(context),
                    SizedBox(height: height(context) * 0.02),
                    post(context),
                    SizedBox(height: height(context) * 0.02),
                    post(context),
                    SizedBox(height: height(context) * 0.02),
                    post(context),
                    SizedBox(height: height(context) * 0.02),
                    post(context),
                    SizedBox(height: height(context) * 0.02),
                    // ListView.builder(
                    //   shrinkWrap: true,
                    //   itemCount: 5,
                    //   itemBuilder: (context, index) => post(context),
                    // )
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  Widget post(context) {
    return SizedBox(
      // decoration: BoxDecoration(
      //   border: Border.all(color: RED1),
      // ),
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
                    Icon(Icons.favorite_outline),
                    SizedBox(height: height(context) * 0.015),
                    Icon(Icons.comment),
                    SizedBox(height: height(context) * 0.015),
                    Icon(Icons.share),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  height: height(context) * 0.35,
                  // width: double.infinity,
                  decoration: BoxDecoration(border: Border.all()),
                  child: Image.asset(
                    test,
                    height: height(context),
                    width: double.infinity,
                    fit: BoxFit.cover,
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
                '331',
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
                      text: 'japahub  ',
                      style: mediumBodyStyle(
                        weight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Social Media App working Ok. testing testing',
                    )
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text('6 hours ago'),
          )
        ],
      ),
    );
  }

  Widget trends(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'Trends',
            style: headerStyle(color: GREEN, fontSize: 18.0),
          ),
        ),
        SizedBox(
          height: height(context) * 0.355,
          width: width(context) * 0.75,
          child: ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.all(0),
            scrollDirection: Axis.horizontal,
            itemCount: 55,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: height(context) * 0.35,
                    width: width(context) * 0.75,
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      elevation: 2,
                      child: ClipRRect(
                        child: GridTile(
                          // header:
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                test,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                top: height(context) * 0.001,
                                right: width(context) * 0.02,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Follow',
                                    textAlign: TextAlign.right,
                                    style: mediumBodyStyle(
                                      color: WHITE,
                                      weight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          footer: Container(
                            color: BLACK2.withOpacity(0.8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    FittedBox(
                                      child: Text(
                                        '2345',
                                        style: TextStyle(color: WHITE),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(
                                      Icons.favorite_outline,
                                      color: WHITE,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    FittedBox(
                                      child: Text(
                                        '20',
                                        style: TextStyle(color: WHITE),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(
                                      Icons.comment,
                                      color: WHITE,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    FittedBox(
                                      child: Text(
                                        '500',
                                        style: TextStyle(color: WHITE),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(
                                      Icons.share,
                                      color: WHITE,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
