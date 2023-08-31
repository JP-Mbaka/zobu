import 'package:flutter/material.dart';
import 'package:zobu/constant/dimensions.dart';
import 'package:zobu/constant/image_refs.dart';
import 'package:zobu/home.dart';
import 'package:zobu/style/colors.dart';
import 'package:zobu/style/text.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height(context) * 0.02),
            Center(
              child: Container(
                width: width(context) * 0.75,
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: GREY2,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        child: Text(
                      'Welcome back',
                      // textAlign: TextAlign.center,
                      style: mediumBodyStyle(
                          color: WHITE, weight: FontWeight.w500),
                    )),
                    CircleAvatar(
                      radius: 20,
                      child: ClipOval(
                        child: Image.asset(
                          test,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(width: width(context) * 0.02),
                    IconButton.outlined(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => const Home()),
                          );
                        },
                        icon: const Icon(
                          Icons.home,
                          color: WHITE,
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(height: height(context) * 0.05),
            Container(
              margin: const EdgeInsets.only(left: 50, bottom: 8),
              child: Text(
                'Notifications',
                style: headerStyle(),
              ),
            ),
            Center(
              child: Container(
                width: width(context) * 0.75,
                decoration: BoxDecoration(
                  color: GREY2,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      child: Container(
                        height: height(context) * 0.1,
                        width: width(context) * 0.15,
                        color: BLUE,
                        child: Center(
                            child: Text(
                          'data',
                          style: subHeaderStyle(color: WHITE),
                        )),
                      ),
                    ),
                    // SizedBox(width: width(context) * 0.05),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 8,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            // crossAxisAlignment: ,
                            children: [
                              Text(
                                'Yiolweh ikwmws',
                                // textAlign: TextAlign.start,
                                style: headerStyle(fontSize: 16.0),
                              ),
                              Text(
                                'qhyuiedmeryfiuefjk',
                                style: mediumBodyStyle(),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconButton.filled(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_forward_ios)),
                            ],
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Container(
                width: width(context) * 0.75,
                decoration: BoxDecoration(
                  color: GREY2,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      child: Container(
                        height: height(context) * 0.1,
                        width: width(context) * 0.15,
                        color: GREEN2,
                        child: Center(
                            child: Text(
                          'data',
                          style: subHeaderStyle(color: WHITE),
                        )),
                      ),
                    ),
                    // SizedBox(width: width(context) * 0.05),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 8,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            // crossAxisAlignment: ,
                            children: [
                              Text(
                                'Yiolweh ikwmws',
                                // textAlign: TextAlign.start,
                                style: headerStyle(fontSize: 16.0),
                              ),
                              Text(
                                'qhyuiedmeryfiuefjk',
                                style: mediumBodyStyle(),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconButton.filled(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_forward_ios)),
                            ],
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Container(
                width: width(context) * 0.75,
                decoration: BoxDecoration(
                  color: GREY2,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      child: Container(
                        height: height(context) * 0.1,
                        width: width(context) * 0.15,
                        color: BLUE,
                        child: Center(
                            child: Text(
                          'data',
                          style: subHeaderStyle(color: WHITE),
                        )),
                      ),
                    ),
                    // SizedBox(width: width(context) * 0.05),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 8,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            // crossAxisAlignment: ,
                            children: [
                              Text(
                                'Yiolweh ikwmws',
                                // textAlign: TextAlign.start,
                                style: headerStyle(fontSize: 16.0),
                              ),
                              Text(
                                'qhyuiedmeryfiuefjk',
                                style: mediumBodyStyle(),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconButton.filled(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_forward_ios)),
                            ],
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
