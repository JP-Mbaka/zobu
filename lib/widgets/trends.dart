import 'package:flutter/material.dart';

import '../constant/dimensions.dart';
import '../constant/image_refs.dart';
import '../style/colors.dart';
import '../style/text.dart';

class Trends extends StatelessWidget {
  const Trends({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'Trends',
            style: headerStyle(
                color: Theme.of(context).colorScheme.primary, fontSize: 18.0),
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
