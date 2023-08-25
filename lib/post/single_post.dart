import 'package:flutter/material.dart';
import 'package:zobu/constant/dimensions.dart';
import 'package:zobu/constant/image_refs.dart';
import 'package:zobu/style/colors.dart';
import 'package:zobu/style/text.dart';

class SinglePost extends StatelessWidget {
  const SinglePost({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: height(context),
          width: width(context),
          child: Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              Container(
                height: height(context),
                width: width(context),
                child: Image.asset(
                  test,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                height: height(context) * 0.25,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    border: Border.all(), color: BLACK.withOpacity(0.7)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'JohnPaul Mbaka',
                        style: subHeaderStyle(color: GREEN),
                      ),
                      Text(
                        'Comment goes here like we are serious on what to type but trying right',
                        style: mediumBodyStyle(color: WHITE2),
                      ),
                      SizedBox(
                        height: height(context) * 0.12,
                        width: double.infinity,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Center(
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: '23 ',
                                        style: subHeaderStyle(color: WHITE)),
                                    TextSpan(
                                        text: '  likes',
                                        style: mediumBodyStyle(color: WHITE))
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: width(context) * 0.02),
                            CircleAvatar(
                              radius: 50.0,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(200),
                                  child: Image.asset(test)),
                            ),
                            SizedBox(width: width(context) * 0.02),
                            CircleAvatar(
                              radius: 50.0,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(200),
                                  child: Image.asset(test)),
                            ),
                            SizedBox(width: width(context) * 0.02),
                            CircleAvatar(
                              radius: 50.0,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(200),
                                  child: Image.asset(test)),
                            ),
                            SizedBox(width: width(context) * 0.02),
                            CircleAvatar(
                              radius: 50.0,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(200),
                                  child: Image.asset(test)),
                            ),
                            SizedBox(width: width(context) * 0.02),
                            CircleAvatar(
                              radius: 50.0,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(200),
                                  child: Image.asset(test)),
                            ),
                            SizedBox(width: width(context) * 0.02),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'See more',
                              style: mediumBodyStyle(
                                  weight: FontWeight.w500, color: WHITE),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'Go Back',
                              style: mediumBodyStyle(
                                  weight: FontWeight.w500, color: WHITE),
                            ),
                          ),
                        ],
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
