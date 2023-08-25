import 'package:flutter/material.dart';
import 'package:zobu/constant/dimensions.dart';
import 'package:zobu/constant/image_refs.dart';
import 'package:zobu/style/colors.dart';

import '../style/text.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: VERTICAL_PADDING,
            horizontal: HORIZONTAL_PADDING,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: GREEN,
                      ),
                    ),
                    IconButton.filled(
                      onPressed: () {},
                      icon: const Icon(Icons.devices_other),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          '435',
                          style: subHeaderStyle(),
                        ),
                        Text(
                          'followers',
                          style: mediumBodyStyle(),
                        ),
                      ],
                    ),
                    Container(
                      height: height(context) * 0.38,
                      width: width(context) * 0.2,
                      decoration: BoxDecoration(
                          // color: GREEN,
                          // border: Border.all(),
                          borderRadius: BorderRadius.circular(300)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(300),
                        child: Image.asset(test),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          '235',
                          style: subHeaderStyle(),
                        ),
                        Text(
                          'following',
                          style: mediumBodyStyle(),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: height(context) * 0.04),
                Text(
                  'JohnPaul Chidera',
                  style: mediumBodyStyle(weight: FontWeight.bold),
                ),
                Text(
                  '@trendBby',
                  style: smallBodyStyle(),
                ),
                SizedBox(height: height(context) * 0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 30,
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Follow',
                          style: mediumBodyStyle(weight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(width: width(context) * 0.02),
                    Expanded(
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 30,
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'message',
                            style: mediumBodyStyle(weight: FontWeight.bold),
                          )),
                    )
                  ],
                ),
                SizedBox(height: height(context) * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide()),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'POST',
                            style: mediumBodyStyle(weight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          border: 1 == 0 ? Border(bottom: BorderSide()) : null,
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'TAGS',
                            style: mediumBodyStyle(),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          border: 1 == 0 ? Border(bottom: BorderSide()) : null,
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'SAVED',
                            style: mediumBodyStyle(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height(context) * 0.45,
                  width: double.infinity,
                  child: gridStyles(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget gridStyles() {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisExtent: 5,
          crossAxisSpacing: 5,
        ),
        itemBuilder: (context, index) {
          return Container(
            height: 350,
            width: 400,
          );
        });
  }
}
